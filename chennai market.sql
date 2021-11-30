CREATE PROCEDURE chennai_markets ()
BEGIN
select * from transactions
where market_code = "Mark001";
END
