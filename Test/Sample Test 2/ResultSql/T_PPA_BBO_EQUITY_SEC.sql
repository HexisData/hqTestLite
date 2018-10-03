DECLARE @Where nvarchar(max)

EXEC dbo.[USP_PPA_Core_DumpData] 
	@TableSchema = 'dbo',
	@TableName = 'T_PPA_BBO_EQUITY_SEC',
	@ColumnAction = 'E',
	@ColumnList = '%RUNID,CADIS\_SYSTEM\_%',
	@Where = 'PPA_SEC_ID BETWEEN 1000 AND 1007',
	@OrderBy = 'PPA_SEC_ID'

