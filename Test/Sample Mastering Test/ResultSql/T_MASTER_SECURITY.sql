DECLARE @Where nvarchar(max)

EXEC dbo.[USP_Core_DumpData] 
	@TableSchema = 'dbo',
	@TableName = 'T_MASTER_SECURITY',
	@ColumnAction = 'E',
	@ColumnList = '%RUNID,%RUN\_ID,CADIS\_SYSTEM\_%',
	@Where = 'SEC_ID BETWEEN 1000 AND 1007',
	@OrderBy = 'SEC_ID'

