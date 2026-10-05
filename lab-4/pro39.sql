create or replace function fun_square(x in number)Return number
is
	answer number;
begin
	answer:=x * x;
	return answer;
end fun_Square;
/