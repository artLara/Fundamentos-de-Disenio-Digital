ENTITY mux IS
PORT(a, b, c, d, sel, sel2:IN bit;
sal: OUT bit);
END mux;

ARCHITECTURE flujo2 OF mux IS
BEGIN
	if(sel='0' and sel='0') THEN
		sal=a;
	ELSif(sel='0' and sel='1') THEN
		sal=b;
	ELSif(sel='1' and sel='0') THEN
		sal=c;
	ELSe(sel='1' and sel='1') THEN
		sal=d;
		end if;
	
END flujo2;

