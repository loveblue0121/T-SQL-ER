use TEST_DB

use master

select * from TEST_DB.dbo.�Z��

select * from sys.tables

select * from sys.objects
-- function
select GETDATE()
-- �ŧi @�ϰ� @@���� ��ƫ��A
-- select�Pset���t���Aselect�i�H���w�ܼƨ���ܡAset�u��]�w�Aprint�b�T��
declare @a int = 100;
-- set @a = 100
-- select @a = 100
select @a
print @a
go
-- �ŧi ��ƶ� (function table)
declare @a table(col1 int, col2 varchar(20));
insert into @a values(1, 'abc');
select * from @a

declare @tblDept table
(
	[�Ǹ�] int,
    [�ҵ{�s��] char(5),
    [�Ы�] varchar(10)
)
-- ����
select @@VERSION
select @@spid
exec sp_who
exec xp_cmdshell 'dir c:'
select @@SERVERNAME
-- �`�f�t�ܼƨϥ�
select @@ROWCOUNT

declare @b int
select @b = c.�Ǹ�*10 from TEST_DB.dbo.�Z�� as c
select @b
-- �`�N���A
select 3/5
-- truncate table
begin tran
select * from TEST_DB.dbo.�Z��
update TEST_DB.dbo.�Z�� set �Ы� = 'L799'
where �Ǹ� = 2
rollback tran
commit tran