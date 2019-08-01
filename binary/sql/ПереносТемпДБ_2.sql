use master

alter database tempdb
modify file(
name = tempdev,
filename = N'K:\tempdb.mdf')
go

alter database tempdb
modify file(
name = temp2,
filename = N'K:\tempdb_mssql_2.ndf')
go

alter database tempdb
modify file(
name = temp3,
filename = N'K:\tempdb_mssql_3.ndf')
go

alter database tempdb
modify file(
name = temp4,
filename = N'K:\tempdb_mssql_4.ndf')
go

alter database tempdb
modify file(
name = temp5,
filename = N'K:\tempdb_mssql_5.ndf')
go

alter database tempdb
modify file(
name = temp6,
filename = N'K:\tempdb_mssql_6.ndf')
go

alter database tempdb
modify file(
name = temp7,
filename = N'K:\tempdb_mssql_7.ndf')
go

alter database tempdb
modify file(
name = temp8,
filename = N'K:\tempdb_mssql_8.ndf')
go

alter database tempdb
modify file(
name = templog,
filename = N'K:\templog.ldf')
go