SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
CREATE PROCEDURE [hq].[usp_Test_VerifyTable] 
@TableSchema nvarchar(128) = 'dbo',
@TableName nvarchar(128),
@ExcludeColumns nvarchar(max) = '%RunId,CADIS_SYSTEM_%',
@OrderBy nvarchar(max) = NULL,
@SessionColumn nvarchar(128) = NULL
AS
	
BEGIN
	SET NOCOUNT ON;

	DECLARE
		@ColumnList nvarchar(max) = '',
		@newline nchar(1) = char(10),
		@tab nchar(1) = char(9),
		@Sql nvarchar(max) = ''

	SELECT 
		@ColumnList = @ColumnList + ',' + @newline + @tab + '[' + C.COLUMN_NAME + ']'
	FROM
		INFORMATION_SCHEMA.COLUMNS C
		LEFT JOIN dbo.fnUtilSplit(@ExcludeColumns, ',') E ON C.COLUMN_NAME LIKE LTRIM(RTRIM(E.Item))
	WHERE
		C.TABLE_SCHEMA = @TableSchema
		AND C.TABLE_NAME = @TableName
		AND E.Item IS NULL
	ORDER BY
		C.ORDINAL_POSITION

	SET @ColumnList = STUFF(@ColumnList, 1, 3, '')

	-- SELECT @ColumnList

	SET @Sql = '
SELECT
	{ColumnList}
FROM
	[{TableSchema}].[{TableName}]'

	IF @SessionColumn IS NOT NULL SET @Sql = @Sql + '
WHERE [{SessionColumn}] = (SELECT MAX([{SessionColumn}]) FROM [{TableSchema}].[{TableName}])'

	IF @OrderBy IS NOT NULL SET @Sql = @Sql + '
ORDER BY [{OrderBy}]'

	SET @Sql = REPLACE(@Sql, '{ColumnList}', @ColumnList)
	SET @Sql = REPLACE(@Sql, '{TableSchema}', @TableSchema)
	SET @Sql = REPLACE(@Sql, '{TableName}', @TableName)
	SET @Sql = REPLACE(@Sql, '{SessionColumn}', ISNULL(@SessionColumn, ''))
	SET @Sql = REPLACE(@Sql, '{OrderBy}', ISNULL(@OrderBy, ''))

	-- SELECT @Sql

	EXEC sp_executesql @Sql
END

GO


