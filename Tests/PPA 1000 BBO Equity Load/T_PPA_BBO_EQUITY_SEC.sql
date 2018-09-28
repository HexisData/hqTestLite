DECLARE @Where nvarchar(max)

SELECT TOP 1 
	@Where = 'TOP_LEVEL_RUN_ID = ' + CAST(TOP_LEVEL_RUN_ID AS nvarchar)
FROM T_PPA_FILE_MONITOR 
WHERE FILE_NAME = 'equity_namr.dif.20180917'
ORDER BY ID DESC

EXEC dbo.[USP_PPA_Core_DumpData] 
	@TableSchema = 'dbo',
	@TableName = 'T_PPA_BBO_EQUITY_SEC',
	@ColumnAction = 'E',
	@ColumnList = 'PPA\_SEC\_ID,TIMEFINISHED,%RUN\_ID,%RUNID,CADIS\_SYSTEM\_%',
	@Where = @Where,
	@OrderBy = 'ID_BB_GLOBAL'

