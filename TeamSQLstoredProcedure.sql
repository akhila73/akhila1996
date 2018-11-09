use Training_19Sep18_Pune;
select * from SignUp_161720;
DECLARE @table_name SYSNAME
 SELECT @table_name = 'dbo.SignUp_161720';

 create procedure RegistrationPage 
(  
   @username varchar(40),  
   @password varchar(40),
   @repeatpass varchar(40),
   @secques varchar(40),
   @secans varchar(40)  
)  
as  
insert into SignUp_161720 values(@username,@password,@repeatpass,@secques,@secans) 
create PROCEDURE login_161720  
(  
   @username as varchar(50),  
   @password as varchar(50)  
)  
AS  
SELECT * FROM  SignUp_161720 WHERE username=@username AND password=@password
create procedure forgot_161
(
  @secques varchar(50),
  @secans varchar(50),
  @newpass varchar(50),
  @repeatpass varchar(50),
  @username varchar(50)	
  )
  as 
update  SignUp_161720 set Password=@newpass,Repeatpass=@repeatpass where Secques=@secques and Secans=@secans and Username=@username
  exec forgot_161 1,celkon,234,234,akhila