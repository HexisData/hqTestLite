Useful database utility functions

**hq.usp_Test_VerifyTable.sql** creates a stored procedure that will snapshot the contents of a table you specify. Callable from Invoke-SqlCommand
* @TableSchema nvarchar(128) default 'dbo' - the schema of the table you want to snapshot
* @TableName nvarchar(128) - the name of the table you want to snapshot
* @ExcludeColumns nvarchar(max) default '%RunId, CADIS_SYSTEM_%' - names of columns to exclude. Supports % wildcards
* @OrderBy nvarchar(max) - comma-delimited list of column names to order by
* @SessionColumn nvarchar(128) default NULL - if defined, will only get rows where the value of @SessionColumn = @TableName's MAX(@SessionColumn)

