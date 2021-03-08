use advs
go
CREATE PROCEDURE species_2
@units nvarchar(30)
as
select * from dbo.fishmon where units=@units
go 
exec dbo.species_2 @units=Dollars
go
CREATE PROCEDURE variable_4
@year nvarchar(30)=null,
@data_value nvarchar(40)=null
as
select * from dbo.fishmon
where year=@year and
data_value=@data_value
go
exec dbo.variable_4
@year=2005,@data_value=37.5
go
