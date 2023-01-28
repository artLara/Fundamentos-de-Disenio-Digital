library IEEE;
use ieee.std_logic_1164.all;

ENTITY decodificador IS
	PORT(binario:IN STD_LOGIC_VECTOR (3 downto 0);
	sal: OUT STD_LOGIC_VECTOR (6 downto 0));
END decodificador;

ARCHITECTURE flujo2 OF decodificador IS
BEGIN
	PROCESS(binario)
	BEGIN
		IF(binario="0000") THEN --Cero
			sal(0)<='1';--a
			sal(1)<='1';--b
			sal(2)<='1';--c
			sal(3)<='1';--d
			sal(4)<='1';--e
			sal(5)<='1';--f
			sal(6)<='0';--g
		ELSIF(binario="0001") THEN --Uno
  	    	sal(0)<='0';--a
			sal(1)<='1';--b
			sal(2)<='1';--c
			sal(3)<='0';--d
			sal(4)<='0';--e
			sal(5)<='0';--f
			sal(6)<='0';--g
		ELSIF(binario="0010") THEN --Dos
  	    	sal(0)<='1';
			sal(1)<='1';
			sal(2)<='0';
			sal(3)<='1';
			sal(4)<='1';
			sal(5)<='0';
			sal(6)<='1';
		ELSIF(binario="0011") THEN --Tres
  	    	sal(0)<='1';
			sal(1)<='1';
			sal(2)<='1';
			sal(3)<='1';
			sal(4)<='0';
			sal(5)<='0';
			sal(6)<='1';
		ELSIF(binario="0100") THEN --Cuatro
  	    	sal(0)<='0';
			sal(1)<='1';
			sal(2)<='1';
			sal(3)<='0';
			sal(4)<='0';
			sal(5)<='1';
			sal(6)<='1';
		ELSIF(binario="0101") THEN --Cinco
  	    	sal(0)<='1';
			sal(1)<='0';
			sal(2)<='1';
			sal(3)<='1';
			sal(4)<='0';
			sal(5)<='1';
			sal(6)<='1';
		ELSIF(binario="0110") THEN --Seis
  	    	sal(0)<='1';
			sal(1)<='0';
			sal(2)<='1';
			sal(3)<='1';
			sal(4)<='1';
			sal(5)<='1';
			sal(6)<='1';
		ELSIF(binario="0111") THEN --Siete
  	    	sal(0)<='1';
			sal(1)<='1';
			sal(2)<='1';
			sal(3)<='0';
			sal(4)<='0';
			sal(5)<='1';
			sal(6)<='0';
		ELSIF(binario="1000") THEN --Ocho
  	    	sal(0)<='1';
			sal(1)<='1';
			sal(2)<='1';
			sal(3)<='1';
			sal(4)<='1';
			sal(5)<='1';
			sal(6)<='1';
		ELSIF(binario="1001") THEN --Nueve
  	    	sal(0)<='1';
			sal(1)<='1';
			sal(2)<='1';
			sal(3)<='1';
			sal(4)<='0';
			sal(5)<='1';
			sal(6)<='1';
		ELSIF(binario="1010") THEN --A
  	    	sal(0)<='1';
			sal(1)<='1';
			sal(2)<='1';
			sal(3)<='0';
			sal(4)<='1';
			sal(5)<='1';
			sal(6)<='1';
		ELSIF(binario="1011") THEN --b
  	    	sal(0)<='0';
			sal(1)<='0';
			sal(2)<='1';
			sal(3)<='1';
			sal(4)<='1';
			sal(5)<='1';
			sal(6)<='1';
		ELSIF(binario="1100") THEN --C
  	    	sal(0)<='1';
			sal(1)<='0';
			sal(2)<='0';
			sal(3)<='1';
			sal(4)<='1';
			sal(5)<='1';
			sal(6)<='0';
		ELSIF(binario="1101") THEN --d
  	    	sal(0)<='0';
			sal(1)<='1';
			sal(2)<='1';
			sal(3)<='1';
			sal(4)<='1';
			sal(5)<='0';
			sal(6)<='1';
		ELSIF(binario="1110") THEN --E
  	    	sal(0)<='1';
			sal(1)<='0';
			sal(2)<='0';
			sal(3)<='1';
			sal(4)<='1';
			sal(5)<='1';
			sal(6)<='1';
		ELSIF(binario="1111") THEN --F
  	    	sal(0)<='1';
			sal(1)<='0';
			sal(2)<='0';
			sal(3)<='0';
			sal(4)<='1';
			sal(5)<='1';
			sal(6)<='1';
		ELSE	
			sal(0)<='0';
			sal(1)<='0';
			sal(2)<='0';
			sal(3)<='0';
			sal(4)<='0';
			sal(5)<='0';
			sal(6)<='1';
		END IF;
	END PROCESS;
END flujo2;						      