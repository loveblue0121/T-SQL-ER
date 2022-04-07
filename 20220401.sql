use TEST_DB

use master

select * from TEST_DB.dbo.班級

select * from sys.tables

select * from sys.objects
-- function
select GETDATE()
-- 宣告 @區域 @@全域 資料型態
-- select與set的差異，select可以指定變數並顯示，set只能設定，print在訊息
declare @a int = 100;
-- set @a = 100
-- select @a = 100
select @a
print @a
go
-- 宣告 資料集 (function table)
declare @a table(col1 int, col2 varchar(20));
insert into @a values(1, 'abc');
select * from @a

declare @tblDept table
(
	[學號] int,
    [課程編號] char(5),
    [教室] varchar(10)
)
-- 版本
select @@VERSION
select @@spid
exec sp_who
exec xp_cmdshell 'dir c:'
select @@SERVERNAME
-- 常搭配變數使用
select @@ROWCOUNT

declare @b int
select @b = c.學號*10 from TEST_DB.dbo.班級 as c
select @b
-- 注意型態
select 3/5
-- truncate table
begin tran
select * from TEST_DB.dbo.班級
update TEST_DB.dbo.班級 set 教室 = 'L799'
where 學號 = 2
rollback tran
commit tran