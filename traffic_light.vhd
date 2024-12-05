LIBRARY IEEE;
USE IEEE.Std_Logic_1164.ALL;
USE IEEE.Std_Logic_Arith.ALL;
USE IEEE.Std_Logic_UNSIGNED.ALL;

ENTITY traffic_lights IS
PORT (
    btn1: IN Std_Logic;         -- button1
    btn2: IN Std_Logic;         -- button2
    btn3: IN Std_Logic;         -- button3
    btn4: IN Std_Logic;         -- button4
    clk: IN Std_Logic;          -- clock
    red1: OUT Std_Logic;        -- horizontal red
    green1: OUT Std_Logic;      -- horizontal green
    yellow1: OUT Std_Logic;     -- horizontal blue(x)
    red2: OUT Std_Logic;        -- vertical red
    green2: OUT Std_Logic;      -- vertical green
    yellow2: OUT Std_Logic;     -- vertical blue(x)
    an0: OUT Std_Logic;         -- ones digit display
    an1: OUT Std_Logic;         -- tens digit display
    a_to_g0: OUT Std_Logic_Vector(6 DOWNTO 0);  -- 7-segment display
    a_to_g1: OUT Std_Logic_Vector(6 DOWNTO 0)   -- 7-segment display
);
END traffic_lights;

ARCHITECTURE lights OF traffic_lights IS

    TYPE light_states IS (green_red, yellow_red, red_green, red_yellow, yellow_yellow, reset);  -- five states

    SIGNAL time_cnt, all_time, countdown: INTEGER RANGE 0 TO 255;  -- 1s counter, total time, countdown
    SIGNAL cur_state, next_state: light_states;  -- current state, next state
    SIGNAL mode: INTEGER RANGE 0 TO 3;  -- four modes
    SIGNAL clk_1s, clk_half: Std_Logic;  -- 1s clock, 0.5s clock
    SIGNAL unit, tens: Std_Logic_Vector(3 DOWNTO 0);  -- low bit, high bit
    SIGNAL bin_num: Std_Logic_Vector(7 DOWNTO 0);  -- 8-bit binary countdown

BEGIN

    ---------------------- frequency divider ---------------------------
    -- 1s
    clk_1ss: PROCESS(clk)
        VARIABLE cnt: INTEGER RANGE 0 TO 5999999;
    BEGIN
        IF (clk'event AND clk = '1') THEN
            IF cnt = 5999999 THEN
                cnt := 0;
                clk_1s <= NOT clk_1s;
            ELSE
                cnt := cnt + 1;
            END IF;
        END IF;
    END PROCESS clk_1ss;

    -- 0.5s
    clk_halfs: PROCESS(clk)
        VARIABLE cnt_half: INTEGER RANGE 0 TO 2999999;
    BEGIN
        IF (clk'event AND clk = '1') THEN
            IF cnt_half = 2999999 THEN
                cnt_half := 0;
                clk_half <= NOT clk_half;
            ELSE
                cnt_half := cnt_half + 1;
            END IF;
        END IF;
    END PROCESS clk_halfs;

    countdown <= all_time - time_cnt;
    bin_num <= CONV_STD_LOGIC_VECTOR(countdown, 8);

    ------------------- display bin_num as ones and tens digits -------------------
    PROCESS(bin_num)
    BEGIN
        IF (bin_num(4) = '1' OR (bin_num(3) = '1' AND (bin_num(2) = '1' OR bin_num(1) = '1'))) THEN
            tens <= "0001";  -- if > 10, tens = 1
        ELSE
            tens <= "0000";
        END IF;
    END PROCESS;

    PROCESS(bin_num)
    BEGIN
        IF (bin_num(3) = '1' AND (bin_num(2) = '1' OR bin_num(1) = '1')) THEN
            unit <= CONV_STD_LOGIC_VECTOR(UNSIGNED(bin_num(3 DOWNTO 0)) - 10, 4);  -- if > 10, units -= 10
        ELSIF (bin_num(4) = '1') THEN
            unit <= CONV_STD_LOGIC_VECTOR(CONV_INTEGER(bin_num(3 DOWNTO 0)) + 6, 4);  -- if > 15, ..
        ELSE
            unit <= bin_num(3 DOWNTO 0); --if < 10
        END IF;
    END PROCESS;

    ---------------------- buttons ---------------------------
    PROCESS(clk_1s, btn4)
    BEGIN
        IF rising_edge(clk_1s) THEN
            IF btn1 = '0' THEN  -- button 1: mode 0 (two-way equal mode)
                cur_state <= green_red; -- default state
                mode <= 0;
                time_cnt <= 0;
            ELSIF btn2 = '0' THEN  -- button 2: mode 1 (primary and secondary mode)
                cur_state <= green_red; -- default state
                mode <= 1;
                time_cnt <= 0;
            ELSIF btn3 = '0' THEN  -- button 3: mode 2 (yellow flashing mode)
                cur_state <= yellow_yellow;
                mode <= 2;
                time_cnt <= 0;
            ELSIF btn4 = '0' THEN  -- button 4: reset
                --cur_state <= cur_state;
		        cur_state <= green_red; -- default state
                mode <= 0;
                time_cnt <= 0;
            ELSE
                cur_state <= next_state;
                IF countdown = 1 THEN
                    time_cnt <= 0; -- when countdown = 1, update counter
                ELSE
                    time_cnt <= time_cnt + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    ------------------- state transition ------------------------------
    PROCESS(countdown, cur_state, mode)
    BEGIN
        IF (mode = 0 OR mode = 1) THEN
            CASE cur_state IS
                WHEN green_red =>
                    IF countdown = 1 THEN
                        next_state <= yellow_red;
                    ELSE
                        next_state <= green_red;
                    END IF;
                WHEN yellow_red =>
                    IF countdown = 1 THEN
                        next_state <= red_green;
                    ELSE
                        next_state <= yellow_red;
                    END IF;
                WHEN red_green =>
                    IF countdown = 1 THEN
                        next_state <= red_yellow;
                    ELSE
                        next_state <= red_green;
                    END IF;
                WHEN red_yellow =>
                    IF countdown = 1 THEN
                        next_state <= green_red;
                    ELSE
                        next_state <= red_yellow;
                    END IF;
            END CASE;
        ELSIF (mode = 2) THEN
            next_state <= yellow_yellow;
        ELSE
            next_state <= green_red;
        END IF;
    END PROCESS;

    ----------------- display ----------------------
    PROCESS(cur_state, mode, clk_half, clk_1s)
    BEGIN
        yellow1 <= '1';
        yellow2 <= '1';

        IF mode = 0 THEN  -- two-way equal mode
	        CASE cur_state IS
                WHEN green_red => all_time <= 10;   -- primary time
                WHEN yellow_red => all_time <= 3;   -- yellow time
                WHEN red_green => all_time <= 10;   -- secondary time
                WHEN red_yellow => all_time <= 3;   -- yellow time
                WHEN OTHERS => all_time <= 10;
            END CASE;

            CASE cur_state IS  -- green1
                WHEN red_green => green1 <= '1';
                WHEN red_yellow => green1 <= '1';
                WHEN yellow_yellow => green1 <= ('0' OR clk_half);
                WHEN OTHERS => green1 <= '0';
            END CASE;

            CASE cur_state IS  -- red1
                WHEN green_red => red1 <= '1';
                WHEN yellow_yellow => red1 <= ('0' OR clk_half);
                WHEN OTHERS => red1 <= '0';
            END CASE;

            CASE cur_state IS  -- yellow1
                WHEN yellow_yellow => yellow1 <= ('1' OR clk_half);
                WHEN yellow_red => yellow1 <= '1';
                WHEN OTHERS => yellow1 <= '1';
            END CASE;

            CASE cur_state IS  -- green2
                WHEN green_red => green2 <= '1';
                WHEN yellow_red => green2 <= '1';
                WHEN yellow_yellow => green2 <= ('0' OR clk_half);
                WHEN OTHERS => green2 <= '0';
            END CASE;

            CASE cur_state IS  -- red2
                WHEN red_green => red2 <= '1';
                WHEN yellow_yellow => red2 <= ('0' OR clk_half);
                WHEN OTHERS => red2 <= '0';
            END CASE;

            CASE cur_state IS  -- yellow2
                WHEN yellow_yellow => yellow2 <= ('1' OR clk_half);
                WHEN red_yellow => yellow2 <= '1';
                WHEN OTHERS => yellow2 <= '1';
            END CASE;

            CASE cur_state IS  -- an0
                WHEN yellow_yellow => an0 <= '1';
                WHEN OTHERS => an0 <= '0';
            END CASE;

            CASE cur_state IS  -- an1
                WHEN yellow_yellow => an1 <= '1';
                WHEN OTHERS => an1 <= '0';
            END CASE;
	
        ELSIF (mode = 1 OR mode = 2) THEN -- primary and secondary mode OR yellow flashing mode
            CASE cur_state IS
                WHEN green_red => all_time <= 15;   -- primary time
                WHEN yellow_red => all_time <= 3;   -- yellow time
                WHEN red_green => all_time <= 10;   -- secondary time
                WHEN red_yellow => all_time <= 3;   -- yellow time
                WHEN OTHERS => all_time <= 10;
            END CASE;

            CASE cur_state IS  -- green1
                WHEN red_green => green1 <= '1';
                WHEN red_yellow => green1 <= '1';
                WHEN yellow_yellow => green1 <= ('0' OR clk_half);
                WHEN OTHERS => green1 <= '0';
            END CASE;

            CASE cur_state IS  -- red1
                WHEN green_red => red1 <= '1';
                WHEN yellow_yellow => red1 <= ('0' OR clk_half);
                WHEN OTHERS => red1 <= '0';
            END CASE;

            CASE cur_state IS  -- green2
                WHEN green_red => green2 <= '1';
                WHEN yellow_red => green2 <= '1';
                WHEN yellow_yellow => green2 <= ('0' OR clk_half);
                WHEN OTHERS => green2 <= '0';
            END CASE;

            CASE cur_state IS  -- red2
                WHEN red_green => red2 <= '1';
                WHEN yellow_yellow => red2 <= ('0' OR clk_half);
                WHEN OTHERS => red2 <= '0';
            END CASE;

            CASE cur_state IS  -- an0
                WHEN yellow_yellow => an0 <= '1';
                WHEN OTHERS => an0 <= '0';
            END CASE;

            CASE cur_state IS  -- an1
                WHEN yellow_yellow => an1 <= '1';
                WHEN OTHERS => an1 <= '0';
            END CASE;

        ELSE
            -- else
        END IF;

    END PROCESS;

    ------------------ 7-segment display --------------------------
    a_to_g0 <= "1111110" WHEN unit = "0000" ELSE
                "0110000" WHEN unit = "0001" ELSE
                "1101101" WHEN unit = "0010" ELSE
                "1111001" WHEN unit = "0011" ELSE
                "0110011" WHEN unit = "0100" ELSE
                "1011011" WHEN unit = "0101" ELSE
                "1011111" WHEN unit = "0110" ELSE
                "1110000" WHEN unit = "0111" ELSE
                "1111111" WHEN unit = "1000" ELSE
                "1111011" WHEN unit = "1001" ELSE
                "1110111" WHEN unit = "1010" ELSE
                "0011111" WHEN unit = "1011" ELSE
                "1001110" WHEN unit = "1100" ELSE
                "0111101" WHEN unit = "1101" ELSE
                "1001111" WHEN unit = "1110" ELSE
                "1000111" WHEN unit = "1111" ELSE
                "0001000";

    a_to_g1 <= "1111110" WHEN tens = "0000" ELSE
                "0110000" WHEN tens = "0001" ELSE
                "1101101" WHEN tens = "0010" ELSE
                "1111001" WHEN tens = "0011" ELSE
                "0110011" WHEN tens = "0100" ELSE
                "1011011" WHEN tens = "0101" ELSE
                "1011111" WHEN tens = "0110" ELSE
                "1110000" WHEN tens = "0111" ELSE
                "1111111" WHEN tens = "1000" ELSE
                "1111011" WHEN tens = "1001" ELSE
                "1110111" WHEN tens = "1010" ELSE
                "0011111" WHEN tens = "1011" ELSE
                "1001110" WHEN tens = "1100" ELSE
                "0111101" WHEN tens = "1101" ELSE
                "1001111" WHEN tens = "1110" ELSE
                "1000111" WHEN tens = "1111" ELSE
                "0001000";
END lights;
