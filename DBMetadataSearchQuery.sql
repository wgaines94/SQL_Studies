select
	 s.name + '.' + t.name as TableName
	,c.name as ColumnName
	,ty.name + ' (' + cast(ty.max_length as varchar(10)) + ')' as VariableType
from sys.tables as t inner join sys.schemas as s
	on t.[schema_id] = s.[schema_id]
inner join sys.columns as c
	on object_name(c.[object_id]) = t.name
inner join sys.types as ty
	on ty.user_type_id = c.user_type_id
where c.name like '%location%'