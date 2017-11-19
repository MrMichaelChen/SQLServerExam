create procedure p_numberofBoy
@dept char(20),@boynumber int output
as
select @boynumber=COUNT(*) from Student 
where Ssex='ÄÐ' and sdept=@dept
