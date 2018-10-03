-- PPA_SEC_ID 1000

INSERT INTO [dbo].[T_PPA_BBO_EQUITY_SEC]
           ([PPA_SEC_ID]
           ,[FILE_NAME]
           ,[FILE_REGION]
           ,[FILE_NAME_DATE]
           ,[DATARECORDS]
           ,[TIMEFINISHED]
           ,[SECURITY_DESCRIPTION]
           ,[RCODE]
           ,[NFIELDS]
           ,[TICKER]
           ,[EXCH_CODE]
           ,[NAME]
           ,[COUNTRY]
           ,[CRNCY]
           ,[SECURITY_TYP]
           ,[PAR_AMT]
           ,[EQY_PRIM_EXCH]
           ,[EQY_PRIM_EXCH_SHRT]
           ,[EQY_SIC_CODE]
           ,[EQY_SIC_NAME]
           ,[INDUSTRY_GROUP]
           ,[INDUSTRY_SUBGROUP]
           ,[INDUSTRY_SECTOR]
           ,[ID_SEDOL1]
           ,[ID_WERTPAPIER]
           ,[ID_ISIN]
           ,[ID_DUTCH]
           ,[ID_VALOREN]
           ,[ID_FRENCH]
           ,[ID_BELGIUM]
           ,[ID_BB_COMPANY]
           ,[ID_BB_SECURITY]
           ,[ID_CUSIP]
           ,[ID_COMMON]
           ,[ADR_UNDL_TICKER]
           ,[ADR_SH_PER_ADR]
           ,[DVD_CRNCY]
           ,[EQY_DVD_SH_12M_NET]
           ,[DVD_SH_12M]
           ,[DVD_SH_LAST]
           ,[LAST_DPS_GROSS]
           ,[EQY_DVD_PCT_FRANKED]
           ,[DVD_TYP_LAST]
           ,[DVD_FREQ]
           ,[DVD_PAY_DT]
           ,[DVD_RECORD_DT]
           ,[DVD_DECLARED_DT]
           ,[EQY_SPLIT_DT]
           ,[EQY_SPLIT_RATIO]
           ,[DVD_EX_DT]
           ,[EQY_DVD_EX_FLAG]
           ,[INDUSTRY_SUBGROUP_NUM]
           ,[CNTRY_ISSUE_ISO]
           ,[MARKET_STATUS]
           ,[ID_BB_PARENT_CO]
           ,[ADR_UNDL_CMPID]
           ,[ADR_UNDL_SECID]
           ,[REL_INDEX]
           ,[PX_TRADE_LOT_SIZE]
           ,[PARENT_COMP_TICKER]
           ,[PARENT_COMP_NAME]
           ,[ID_LOCAL]
           ,[LONG_COMP_NAME]
           ,[PARENT_INDUSTRY_GROUP]
           ,[PARENT_INDUSTRY_SUBGROUP]
           ,[PARENT_INDUSTRY_SECTOR]
           ,[VOTING_RIGHTS]
           ,[ID_BB_PRIM_SECURITY_FLAG]
           ,[PRE_EURO_ID_ISIN]
           ,[PRE_REDENOM_CRNCY]
           ,[PRE_EURO_PAR_AMT]
           ,[POST_REDENOM_CRNCY]
           ,[POST_EURO_PAR_AMT]
           ,[POST_EURO_ID_ISIN]
           ,[REDENOM_DT]
           ,[REDENOM_METHOD]
           ,[REDENOM_ROUND_METHOD]
           ,[PAR_VAL_CRNCY]
           ,[EQY_SH_OUT]
           ,[EQY_SH_OUT_DT]
           ,[ID_BB_UNIQUE]
           ,[MARKET_SECTOR_DES]
           ,[IS_STK_MARGINABLE]
           ,[144A_FLAG]
           ,[TRANSFER_AGENT]
           ,[EQY_PRIM_SECURITY_TICKER]
           ,[EQY_PRIM_SECURITY_COMP_EXCH]
           ,[IS_SETS]
           ,[WHICH_JAPANESE_SECTION]
           ,[ADR_ADR_PER_SH]
           ,[EQY_PRIM_SECURITY_PRIM_EXCH]
           ,[EQY_FUND_CRNCY]
           ,[WHEN_ISSUED]
           ,[CDR_COUNTRY_CODE]
           ,[CDR_EXCH_CODE]
           ,[CNTRY_OF_INCORPORATION]
           ,[CNTRY_OF_DOMICILE]
           ,[SEC_RESTRICT]
           ,[EQY_SH_OUT_REAL]
           ,[ADR_UNDL_CRNCY]
           ,[MULTIPLE_SHARE]
           ,[PX_QUOTE_LOT_SIZE]
           ,[PX_ROUND_LOT_SIZE]
           ,[ID_SEDOL2]
           ,[SEDOL1_COUNTRY_ISO]
           ,[SEDOL2_COUNTRY_ISO]
           ,[ID_MIC_PRIM_EXCH]
           ,[ID_MIC_LOCAL_EXCH]
           ,[LSE_SECTOR]
           ,[LSE_SEGMENT]
           ,[EQY_SH_OUT_TOT_MULT_SH]
           ,[SECURITY_TYP2]
           ,[ID_BB_PRIM_SECURITY]
           ,[EQY_OPT_AVAIL]
           ,[EQY_FREE_FLOAT_PCT]
           ,[TICKER_AND_EXCH_CODE]
           ,[EQY_INIT_PO_DT]
           ,[EQY_PO_DT]
           ,[EQY_INIT_PO_SH_PX]
           ,[EQY_SPLIT_ADJ_INIT_PO_PX]
           ,[EQY_FUND_TICKER]
           ,[TOTAL_VOTING_SHARES_VALUE]
           ,[ID_EXCH_SYMBOL]
           ,[ID_BB_CONNECT]
           ,[ID_NAICS_CODE]
           ,[TOTAL_NON_VOTING_SHARES_VALUE]
           ,[CDR_SETTLE_CODE]
           ,[CFI_CODE]
           ,[ID_BB_GLOBAL]
           ,[COMPOSITE_ID_BB_GLOBAL]
           ,[INDUSTRY_GROUP_NUM]
           ,[INDUSTRY_SECTOR_NUM]
           ,[EQY_PRIM_SECURITY_CRNCY]
           ,[ID_BB_SEC_NUM_DES]
           ,[FEED_SOURCE]
           ,[ID_BB_GLOBAL_COMPANY]
           ,[ID_BB_GLOBAL_COMPANY_NAME]
           ,[UNDERLYING_ID_BB_GLOBAL]
           ,[PRIMARY_UNDERLYING_ID_BB_GLOBAL]
           ,[ID_BB_GLOBAL_SHARE_CLASS_LEVEL]
           ,[PRIM_SECURITY_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL]
           ,[TRADING_SYSTEM_IDENTIFIER]
           ,[TRADING_SYSTEM_IDENTIFIER_DES]
           ,[ID_CUSIP_VALID]
           ,[ID_ISIN_VALID]
           ,[ID_SEDOL_VALID]
           ,[ID_SEDOL2_VALID]
           ,[TOP_LEVEL_RUN_ID]
           ,[CADIS_SYSTEM_INSERTED]
           ,[CADIS_SYSTEM_UPDATED]
           ,[CADIS_SYSTEM_CHANGEDBY]
           ,[CADIS_SYSTEM_PRIORITY]
           ,[CADIS_SYSTEM_LASTMODIFIED])
     VALUES
           (1000 -- <PPA_SEC_ID, int,>
           ,'BA' -- <FILE_NAME, varchar(50),>
           ,'BB' -- <FILE_REGION, varchar(50),>
           ,'2018-01-01' -- <FILE_NAME_DATE, datetime,>
           ,10000 -- <DATARECORDS, int,>
           ,'BC' -- <TIMEFINISHED, varchar(50),>
           ,'BD' -- <SECURITY_DESCRIPTION, varchar(50),>
           ,10001 -- <RCODE, int,>
           ,10002 -- <NFIELDS, int,>
           ,'BE' -- <TICKER, varchar(22),>
           ,'BF' -- <EXCH_CODE, varchar(18),>
           ,'BG' -- <NAME, varchar(30),>
           ,'BH' -- <COUNTRY, varchar(8),>
           ,'BI' -- <CRNCY, varchar(8),>
           ,'BJ' -- <SECURITY_TYP, varchar(30),>
           ,7.0135 -- <PAR_AMT, decimal(22,8),>
           ,'BK' -- <EQY_PRIM_EXCH, varchar(30),>
           ,'BI' -- <EQY_PRIM_EXCH_SHRT, varchar(8),>
           ,'1000' -- <EQY_SIC_CODE, varchar(4),>
           ,'BK' -- <EQY_SIC_NAME, varchar(14),>
           ,'BL' -- <INDUSTRY_GROUP, varchar(24),>
           ,'BM' -- <INDUSTRY_SUBGROUP, varchar(30),>
           ,'BN' -- <INDUSTRY_SECTOR, varchar(24),>
           ,'BO' -- <ID_SEDOL1, varchar(7),>
           ,'BP' -- <ID_WERTPAPIER, varchar(8),>
           ,'BQ' -- <ID_ISIN, varchar(12),>
           ,'BR' -- <ID_DUTCH, varchar(8),>
           ,'10000' -- <ID_VALOREN, varchar(12),>
           ,'BT' -- <ID_FRENCH, varchar(8),>
           ,'BU' -- <ID_BELGIUM, varchar(9),>
           ,10000 -- <ID_BB_COMPANY, int,>
           ,10000 -- <ID_BB_SECURITY, int,>
           ,'BV' -- <ID_CUSIP, varchar(9),>
           ,'10000' -- <ID_COMMON, varchar(9),>
           ,'BX' -- <ADR_UNDL_TICKER, varchar(12),>
           ,1.0000 -- <ADR_SH_PER_ADR, decimal(22,8),>
           ,'BY' -- <DVD_CRNCY, varchar(5),>
           ,1.0000 -- <EQY_DVD_SH_12M_NET, decimal(22,8),>
           ,1.0000 -- <DVD_SH_12M, decimal(22,8),>
           ,1.0000 -- <DVD_SH_LAST, decimal(22,8),>
           ,1.0000 -- <LAST_DPS_GROSS, decimal(22,8),>
           ,1.0000 -- <EQY_DVD_PCT_FRANKED, decimal(22,8),>
           ,'BZ' -- <DVD_TYP_LAST, varchar(30),>
           ,'BA' -- <DVD_FREQ, varchar(8),>
           ,2018-01-01 -- <DVD_PAY_DT, datetime,>
           ,2018-01-01 -- <DVD_RECORD_DT, datetime,>
           ,2018-01-01 -- <DVD_DECLARED_DT, datetime,>
           ,2018-01-01 -- <EQY_SPLIT_DT, datetime,>
           ,'BB' -- <EQY_SPLIT_RATIO, varchar(30),>
           ,2018-01-01 -- <DVD_EX_DT, datetime,>
           ,1 -- <EQY_DVD_EX_FLAG, bit,>
           ,10000 -- <INDUSTRY_SUBGROUP_NUM, int,>
           ,'BC' -- <CNTRY_ISSUE_ISO, varchar(4),>
           ,'BD' -- <MARKET_STATUS, varchar(4),>
           ,10000 -- <ID_BB_PARENT_CO, int,>
           ,10000 -- <ADR_UNDL_CMPID, int,>
           ,10000 -- <ADR_UNDL_SECID, int,>
           ,'BE' -- <REL_INDEX, varchar(8),>
           ,10000 -- <PX_TRADE_LOT_SIZE, int,>
           ,'BF' -- <PARENT_COMP_TICKER, varchar(8),>
           ,'BG' -- <PARENT_COMP_NAME, varchar(30),>
           ,'BH' -- <ID_LOCAL, varchar(8),>
           ,'BI' -- <LONG_COMP_NAME, varchar(100),>
           ,'BJ' -- <PARENT_INDUSTRY_GROUP, varchar(24),>
           ,'BK' -- <PARENT_INDUSTRY_SUBGROUP, varchar(24),>
           ,'BL' -- <PARENT_INDUSTRY_SECTOR, varchar(24),>
           ,1.0000 -- <VOTING_RIGHTS, decimal(22,8),>
           ,1 -- <ID_BB_PRIM_SECURITY_FLAG, bit,>
           ,'BM' -- <PRE_EURO_ID_ISIN, varchar(12),>
           ,'BN' -- <PRE_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <PRE_EURO_PAR_AMT, decimal(22,8),>
           ,'BO' -- <POST_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <POST_EURO_PAR_AMT, decimal(22,8),>
           ,'BP' -- <POST_EURO_ID_ISIN, varchar(12),>
           ,2018-01-01 -- <REDENOM_DT, datetime,>
           ,'BQ' -- <REDENOM_METHOD, varchar(30),>
           ,'BR' -- <REDENOM_ROUND_METHOD, varchar(30),>
           ,'BS' -- <PAR_VAL_CRNCY, varchar(8),>
           ,1.0000 -- <EQY_SH_OUT, decimal(22,8),>
           ,2018-01-01 -- <EQY_SH_OUT_DT, datetime,>
           ,'BT' -- <ID_BB_UNIQUE, varchar(30),>
           ,'BU' -- <MARKET_SECTOR_DES, varchar(8),>
           ,1 -- <IS_STK_MARGINABLE, bit,>
           ,1 -- <144A_FLAG, bit,>
           ,'BV' -- <TRANSFER_AGENT, varchar(80),>
           ,'BW' -- <EQY_PRIM_SECURITY_TICKER, varchar(8),>
           ,'BX' -- <EQY_PRIM_SECURITY_COMP_EXCH, varchar(4),>
           ,1 -- <IS_SETS, bit,>
           ,'BY' -- <WHICH_JAPANESE_SECTION, varchar(4),>
           ,1.0000 -- <ADR_ADR_PER_SH, decimal(22,8),>
           ,'BZ' -- <EQY_PRIM_SECURITY_PRIM_EXCH, varchar(8),>
           ,'BA' -- <EQY_FUND_CRNCY, varchar(5),>
           ,1 -- <WHEN_ISSUED, bit,>
           ,'BB' -- <CDR_COUNTRY_CODE, varchar(4),>
           ,'BC' -- <CDR_EXCH_CODE, varchar(4),>
           ,'BD' -- <CNTRY_OF_INCORPORATION, varchar(4),>
           ,'BE' -- <CNTRY_OF_DOMICILE, varchar(4),>
           ,10000 -- <SEC_RESTRICT, int,>
           ,1.0000 -- <EQY_SH_OUT_REAL, decimal(30,8),>
           ,'BF' -- <ADR_UNDL_CRNCY, varchar(4),>
           ,1 -- <MULTIPLE_SHARE, bit,>
           ,1.0000 -- <PX_QUOTE_LOT_SIZE, decimal(22,8),>
           ,10000 -- <PX_ROUND_LOT_SIZE, int,>
           ,'BG' -- <ID_SEDOL2, varchar(7),>
           ,'BH' -- <SEDOL1_COUNTRY_ISO, varchar(4),>
           ,'BI' -- <SEDOL2_COUNTRY_ISO, varchar(4),>
           ,'BJ' -- <ID_MIC_PRIM_EXCH, varchar(4),>
           ,'BK' -- <ID_MIC_LOCAL_EXCH, varchar(4),>
           ,'BL' -- <LSE_SECTOR, varchar(4),>
           ,'BM' -- <LSE_SEGMENT, varchar(4),>
           ,1.0000 -- <EQY_SH_OUT_TOT_MULT_SH, decimal(30,8),>
           ,'BN' -- <SECURITY_TYP2, varchar(28),>
           ,10000 -- <ID_BB_PRIM_SECURITY, int,>
           ,1 -- <EQY_OPT_AVAIL, bit,>
           ,1.0000 -- <EQY_FREE_FLOAT_PCT, decimal(22,8),>
           ,'BO' -- <TICKER_AND_EXCH_CODE, varchar(12),>
           ,2018-01-01 -- <EQY_INIT_PO_DT, datetime,>
           ,2018-01-01 -- <EQY_PO_DT, datetime,>
           ,1.0000 -- <EQY_INIT_PO_SH_PX, decimal(22,8),>
           ,1.0000 -- <EQY_SPLIT_ADJ_INIT_PO_PX, decimal(30,8),>
           ,'BX' -- <EQY_FUND_TICKER, varchar(12),>
           ,1.0000 -- <TOTAL_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <ID_EXCH_SYMBOL, varchar(30),>
           ,10000 -- <ID_BB_CONNECT, int,>
           ,'BX' -- <ID_NAICS_CODE, varchar(8),>
           ,1.0000 -- <TOTAL_NON_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <CDR_SETTLE_CODE, varchar(4),>
           ,'BX' -- <CFI_CODE, varchar(6),>
           ,'A' -- <ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <COMPOSITE_ID_BB_GLOBAL, varchar(12),>
           ,10000 -- <INDUSTRY_GROUP_NUM, int,>
           ,10000 -- <INDUSTRY_SECTOR_NUM, int,>
           ,'BX' -- <EQY_PRIM_SECURITY_CRNCY, varchar(8),>
           ,'BX' -- <ID_BB_SEC_NUM_DES, varchar(30),>
           ,'BX' -- <FEED_SOURCE, varchar(30),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY_NAME, varchar(100),>
           ,'BX' -- <UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <PRIMARY_UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_SHARE_CLASS_LEVEL, varchar(12),>
           ,'BX' -- <PRIM_SECURITY_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER, varchar(40),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER_DES, varchar(80),>
           ,1 -- <ID_CUSIP_VALID, bit,>
           ,1 -- <ID_ISIN_VALID, bit,>
           ,1 -- <ID_SEDOL_VALID, bit,>
           ,1 -- <ID_SEDOL2_VALID, bit,>
           ,10000 -- <TOP_LEVEL_RUN_ID, int,>
           ,GETDATE() -- <CADIS_SYSTEM_INSERTED, datetime,>
           ,GETDATE() -- <CADIS_SYSTEM_UPDATED, datetime,>
           ,'TEST' -- <CADIS_SYSTEM_CHANGEDBY, nvarchar(50),>
           ,1 -- <CADIS_SYSTEM_PRIORITY, int,>
           ,GETDATE() -- <CADIS_SYSTEM_LASTMODIFIED, datetime,>)
		)

-- PPA_SEC_ID 1001

INSERT INTO [dbo].[T_PPA_BBO_EQUITY_SEC]
           ([PPA_SEC_ID]
           ,[FILE_NAME]
           ,[FILE_REGION]
           ,[FILE_NAME_DATE]
           ,[DATARECORDS]
           ,[TIMEFINISHED]
           ,[SECURITY_DESCRIPTION]
           ,[RCODE]
           ,[NFIELDS]
           ,[TICKER]
           ,[EXCH_CODE]
           ,[NAME]
           ,[COUNTRY]
           ,[CRNCY]
           ,[SECURITY_TYP]
           ,[PAR_AMT]
           ,[EQY_PRIM_EXCH]
           ,[EQY_PRIM_EXCH_SHRT]
           ,[EQY_SIC_CODE]
           ,[EQY_SIC_NAME]
           ,[INDUSTRY_GROUP]
           ,[INDUSTRY_SUBGROUP]
           ,[INDUSTRY_SECTOR]
           ,[ID_SEDOL1]
           ,[ID_WERTPAPIER]
           ,[ID_ISIN]
           ,[ID_DUTCH]
           ,[ID_VALOREN]
           ,[ID_FRENCH]
           ,[ID_BELGIUM]
           ,[ID_BB_COMPANY]
           ,[ID_BB_SECURITY]
           ,[ID_CUSIP]
           ,[ID_COMMON]
           ,[ADR_UNDL_TICKER]
           ,[ADR_SH_PER_ADR]
           ,[DVD_CRNCY]
           ,[EQY_DVD_SH_12M_NET]
           ,[DVD_SH_12M]
           ,[DVD_SH_LAST]
           ,[LAST_DPS_GROSS]
           ,[EQY_DVD_PCT_FRANKED]
           ,[DVD_TYP_LAST]
           ,[DVD_FREQ]
           ,[DVD_PAY_DT]
           ,[DVD_RECORD_DT]
           ,[DVD_DECLARED_DT]
           ,[EQY_SPLIT_DT]
           ,[EQY_SPLIT_RATIO]
           ,[DVD_EX_DT]
           ,[EQY_DVD_EX_FLAG]
           ,[INDUSTRY_SUBGROUP_NUM]
           ,[CNTRY_ISSUE_ISO]
           ,[MARKET_STATUS]
           ,[ID_BB_PARENT_CO]
           ,[ADR_UNDL_CMPID]
           ,[ADR_UNDL_SECID]
           ,[REL_INDEX]
           ,[PX_TRADE_LOT_SIZE]
           ,[PARENT_COMP_TICKER]
           ,[PARENT_COMP_NAME]
           ,[ID_LOCAL]
           ,[LONG_COMP_NAME]
           ,[PARENT_INDUSTRY_GROUP]
           ,[PARENT_INDUSTRY_SUBGROUP]
           ,[PARENT_INDUSTRY_SECTOR]
           ,[VOTING_RIGHTS]
           ,[ID_BB_PRIM_SECURITY_FLAG]
           ,[PRE_EURO_ID_ISIN]
           ,[PRE_REDENOM_CRNCY]
           ,[PRE_EURO_PAR_AMT]
           ,[POST_REDENOM_CRNCY]
           ,[POST_EURO_PAR_AMT]
           ,[POST_EURO_ID_ISIN]
           ,[REDENOM_DT]
           ,[REDENOM_METHOD]
           ,[REDENOM_ROUND_METHOD]
           ,[PAR_VAL_CRNCY]
           ,[EQY_SH_OUT]
           ,[EQY_SH_OUT_DT]
           ,[ID_BB_UNIQUE]
           ,[MARKET_SECTOR_DES]
           ,[IS_STK_MARGINABLE]
           ,[144A_FLAG]
           ,[TRANSFER_AGENT]
           ,[EQY_PRIM_SECURITY_TICKER]
           ,[EQY_PRIM_SECURITY_COMP_EXCH]
           ,[IS_SETS]
           ,[WHICH_JAPANESE_SECTION]
           ,[ADR_ADR_PER_SH]
           ,[EQY_PRIM_SECURITY_PRIM_EXCH]
           ,[EQY_FUND_CRNCY]
           ,[WHEN_ISSUED]
           ,[CDR_COUNTRY_CODE]
           ,[CDR_EXCH_CODE]
           ,[CNTRY_OF_INCORPORATION]
           ,[CNTRY_OF_DOMICILE]
           ,[SEC_RESTRICT]
           ,[EQY_SH_OUT_REAL]
           ,[ADR_UNDL_CRNCY]
           ,[MULTIPLE_SHARE]
           ,[PX_QUOTE_LOT_SIZE]
           ,[PX_ROUND_LOT_SIZE]
           ,[ID_SEDOL2]
           ,[SEDOL1_COUNTRY_ISO]
           ,[SEDOL2_COUNTRY_ISO]
           ,[ID_MIC_PRIM_EXCH]
           ,[ID_MIC_LOCAL_EXCH]
           ,[LSE_SECTOR]
           ,[LSE_SEGMENT]
           ,[EQY_SH_OUT_TOT_MULT_SH]
           ,[SECURITY_TYP2]
           ,[ID_BB_PRIM_SECURITY]
           ,[EQY_OPT_AVAIL]
           ,[EQY_FREE_FLOAT_PCT]
           ,[TICKER_AND_EXCH_CODE]
           ,[EQY_INIT_PO_DT]
           ,[EQY_PO_DT]
           ,[EQY_INIT_PO_SH_PX]
           ,[EQY_SPLIT_ADJ_INIT_PO_PX]
           ,[EQY_FUND_TICKER]
           ,[TOTAL_VOTING_SHARES_VALUE]
           ,[ID_EXCH_SYMBOL]
           ,[ID_BB_CONNECT]
           ,[ID_NAICS_CODE]
           ,[TOTAL_NON_VOTING_SHARES_VALUE]
           ,[CDR_SETTLE_CODE]
           ,[CFI_CODE]
           ,[ID_BB_GLOBAL]
           ,[COMPOSITE_ID_BB_GLOBAL]
           ,[INDUSTRY_GROUP_NUM]
           ,[INDUSTRY_SECTOR_NUM]
           ,[EQY_PRIM_SECURITY_CRNCY]
           ,[ID_BB_SEC_NUM_DES]
           ,[FEED_SOURCE]
           ,[ID_BB_GLOBAL_COMPANY]
           ,[ID_BB_GLOBAL_COMPANY_NAME]
           ,[UNDERLYING_ID_BB_GLOBAL]
           ,[PRIMARY_UNDERLYING_ID_BB_GLOBAL]
           ,[ID_BB_GLOBAL_SHARE_CLASS_LEVEL]
           ,[PRIM_SECURITY_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL]
           ,[TRADING_SYSTEM_IDENTIFIER]
           ,[TRADING_SYSTEM_IDENTIFIER_DES]
           ,[ID_CUSIP_VALID]
           ,[ID_ISIN_VALID]
           ,[ID_SEDOL_VALID]
           ,[ID_SEDOL2_VALID]
           ,[TOP_LEVEL_RUN_ID]
           ,[CADIS_SYSTEM_INSERTED]
           ,[CADIS_SYSTEM_UPDATED]
           ,[CADIS_SYSTEM_CHANGEDBY]
           ,[CADIS_SYSTEM_PRIORITY]
           ,[CADIS_SYSTEM_LASTMODIFIED])
     VALUES
           (1001 -- <PPA_SEC_ID, int,>
           ,'BA' -- <FILE_NAME, varchar(50),>
           ,'BB' -- <FILE_REGION, varchar(50),>
           ,'2018-01-01' -- <FILE_NAME_DATE, datetime,>
           ,10000 -- <DATARECORDS, int,>
           ,'BC' -- <TIMEFINISHED, varchar(50),>
           ,'BD' -- <SECURITY_DESCRIPTION, varchar(50),>
           ,10001 -- <RCODE, int,>
           ,10002 -- <NFIELDS, int,>
           ,'BE' -- <TICKER, varchar(22),>
           ,'BF' -- <EXCH_CODE, varchar(18),>
           ,'BG' -- <NAME, varchar(30),>
           ,'BH' -- <COUNTRY, varchar(8),>
           ,'BI' -- <CRNCY, varchar(8),>
           ,'BJ' -- <SECURITY_TYP, varchar(30),>
           ,7.0135 -- <PAR_AMT, decimal(22,8),>
           ,'BK' -- <EQY_PRIM_EXCH, varchar(30),>
           ,'BI' -- <EQY_PRIM_EXCH_SHRT, varchar(8),>
           ,'1000' -- <EQY_SIC_CODE, varchar(4),>
           ,'BK' -- <EQY_SIC_NAME, varchar(14),>
           ,'BL' -- <INDUSTRY_GROUP, varchar(24),>
           ,'BM' -- <INDUSTRY_SUBGROUP, varchar(30),>
           ,'BN' -- <INDUSTRY_SECTOR, varchar(24),>
           ,'BO' -- <ID_SEDOL1, varchar(7),>
           ,'BP' -- <ID_WERTPAPIER, varchar(8),>
           ,'BQ' -- <ID_ISIN, varchar(12),>
           ,'BR' -- <ID_DUTCH, varchar(8),>
           ,'10000' -- <ID_VALOREN, varchar(12),>
           ,'BT' -- <ID_FRENCH, varchar(8),>
           ,'BU' -- <ID_BELGIUM, varchar(9),>
           ,10000 -- <ID_BB_COMPANY, int,>
           ,10000 -- <ID_BB_SECURITY, int,>
           ,'BV' -- <ID_CUSIP, varchar(9),>
           ,'10000' -- <ID_COMMON, varchar(9),>
           ,'BX' -- <ADR_UNDL_TICKER, varchar(12),>
           ,1.0000 -- <ADR_SH_PER_ADR, decimal(22,8),>
           ,'BY' -- <DVD_CRNCY, varchar(5),>
           ,1.0000 -- <EQY_DVD_SH_12M_NET, decimal(22,8),>
           ,1.0000 -- <DVD_SH_12M, decimal(22,8),>
           ,1.0000 -- <DVD_SH_LAST, decimal(22,8),>
           ,1.0000 -- <LAST_DPS_GROSS, decimal(22,8),>
           ,1.0000 -- <EQY_DVD_PCT_FRANKED, decimal(22,8),>
           ,'BZ' -- <DVD_TYP_LAST, varchar(30),>
           ,'BA' -- <DVD_FREQ, varchar(8),>
           ,2018-01-01 -- <DVD_PAY_DT, datetime,>
           ,2018-01-01 -- <DVD_RECORD_DT, datetime,>
           ,2018-01-01 -- <DVD_DECLARED_DT, datetime,>
           ,2018-01-01 -- <EQY_SPLIT_DT, datetime,>
           ,'BB' -- <EQY_SPLIT_RATIO, varchar(30),>
           ,2018-01-01 -- <DVD_EX_DT, datetime,>
           ,1 -- <EQY_DVD_EX_FLAG, bit,>
           ,10000 -- <INDUSTRY_SUBGROUP_NUM, int,>
           ,'BC' -- <CNTRY_ISSUE_ISO, varchar(4),>
           ,'BD' -- <MARKET_STATUS, varchar(4),>
           ,10000 -- <ID_BB_PARENT_CO, int,>
           ,10000 -- <ADR_UNDL_CMPID, int,>
           ,10000 -- <ADR_UNDL_SECID, int,>
           ,'BE' -- <REL_INDEX, varchar(8),>
           ,10000 -- <PX_TRADE_LOT_SIZE, int,>
           ,'BF' -- <PARENT_COMP_TICKER, varchar(8),>
           ,'BG' -- <PARENT_COMP_NAME, varchar(30),>
           ,'BH' -- <ID_LOCAL, varchar(8),>
           ,'BI' -- <LONG_COMP_NAME, varchar(100),>
           ,'BJ' -- <PARENT_INDUSTRY_GROUP, varchar(24),>
           ,'BK' -- <PARENT_INDUSTRY_SUBGROUP, varchar(24),>
           ,'BL' -- <PARENT_INDUSTRY_SECTOR, varchar(24),>
           ,1.0000 -- <VOTING_RIGHTS, decimal(22,8),>
           ,1 -- <ID_BB_PRIM_SECURITY_FLAG, bit,>
           ,'BM' -- <PRE_EURO_ID_ISIN, varchar(12),>
           ,'BN' -- <PRE_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <PRE_EURO_PAR_AMT, decimal(22,8),>
           ,'BO' -- <POST_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <POST_EURO_PAR_AMT, decimal(22,8),>
           ,'BP' -- <POST_EURO_ID_ISIN, varchar(12),>
           ,2018-01-01 -- <REDENOM_DT, datetime,>
           ,'BQ' -- <REDENOM_METHOD, varchar(30),>
           ,'BR' -- <REDENOM_ROUND_METHOD, varchar(30),>
           ,'BS' -- <PAR_VAL_CRNCY, varchar(8),>
           ,1.0000 -- <EQY_SH_OUT, decimal(22,8),>
           ,2018-01-01 -- <EQY_SH_OUT_DT, datetime,>
           ,'BT' -- <ID_BB_UNIQUE, varchar(30),>
           ,'BU' -- <MARKET_SECTOR_DES, varchar(8),>
           ,1 -- <IS_STK_MARGINABLE, bit,>
           ,1 -- <144A_FLAG, bit,>
           ,'BV' -- <TRANSFER_AGENT, varchar(80),>
           ,'BW' -- <EQY_PRIM_SECURITY_TICKER, varchar(8),>
           ,'BX' -- <EQY_PRIM_SECURITY_COMP_EXCH, varchar(4),>
           ,1 -- <IS_SETS, bit,>
           ,'BY' -- <WHICH_JAPANESE_SECTION, varchar(4),>
           ,1.0000 -- <ADR_ADR_PER_SH, decimal(22,8),>
           ,'BZ' -- <EQY_PRIM_SECURITY_PRIM_EXCH, varchar(8),>
           ,'BA' -- <EQY_FUND_CRNCY, varchar(5),>
           ,1 -- <WHEN_ISSUED, bit,>
           ,'BB' -- <CDR_COUNTRY_CODE, varchar(4),>
           ,'BC' -- <CDR_EXCH_CODE, varchar(4),>
           ,'BD' -- <CNTRY_OF_INCORPORATION, varchar(4),>
           ,'BE' -- <CNTRY_OF_DOMICILE, varchar(4),>
           ,10000 -- <SEC_RESTRICT, int,>
           ,1.0000 -- <EQY_SH_OUT_REAL, decimal(30,8),>
           ,'BF' -- <ADR_UNDL_CRNCY, varchar(4),>
           ,1 -- <MULTIPLE_SHARE, bit,>
           ,1.0000 -- <PX_QUOTE_LOT_SIZE, decimal(22,8),>
           ,10000 -- <PX_ROUND_LOT_SIZE, int,>
           ,'BG' -- <ID_SEDOL2, varchar(7),>
           ,'BH' -- <SEDOL1_COUNTRY_ISO, varchar(4),>
           ,'BI' -- <SEDOL2_COUNTRY_ISO, varchar(4),>
           ,'BJ' -- <ID_MIC_PRIM_EXCH, varchar(4),>
           ,'BK' -- <ID_MIC_LOCAL_EXCH, varchar(4),>
           ,'BL' -- <LSE_SECTOR, varchar(4),>
           ,'BM' -- <LSE_SEGMENT, varchar(4),>
           ,1.0000 -- <EQY_SH_OUT_TOT_MULT_SH, decimal(30,8),>
           ,'BN' -- <SECURITY_TYP2, varchar(28),>
           ,10000 -- <ID_BB_PRIM_SECURITY, int,>
           ,1 -- <EQY_OPT_AVAIL, bit,>
           ,1.0000 -- <EQY_FREE_FLOAT_PCT, decimal(22,8),>
           ,'BO' -- <TICKER_AND_EXCH_CODE, varchar(12),>
           ,2018-01-01 -- <EQY_INIT_PO_DT, datetime,>
           ,2018-01-01 -- <EQY_PO_DT, datetime,>
           ,1.0000 -- <EQY_INIT_PO_SH_PX, decimal(22,8),>
           ,1.0000 -- <EQY_SPLIT_ADJ_INIT_PO_PX, decimal(30,8),>
           ,'BX' -- <EQY_FUND_TICKER, varchar(12),>
           ,1.0000 -- <TOTAL_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <ID_EXCH_SYMBOL, varchar(30),>
           ,10000 -- <ID_BB_CONNECT, int,>
           ,'BX' -- <ID_NAICS_CODE, varchar(8),>
           ,1.0000 -- <TOTAL_NON_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <CDR_SETTLE_CODE, varchar(4),>
           ,'BX' -- <CFI_CODE, varchar(6),>
           ,'B' -- <ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <COMPOSITE_ID_BB_GLOBAL, varchar(12),>
           ,10000 -- <INDUSTRY_GROUP_NUM, int,>
           ,10000 -- <INDUSTRY_SECTOR_NUM, int,>
           ,'BX' -- <EQY_PRIM_SECURITY_CRNCY, varchar(8),>
           ,'BX' -- <ID_BB_SEC_NUM_DES, varchar(30),>
           ,'BX' -- <FEED_SOURCE, varchar(30),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY_NAME, varchar(100),>
           ,'BX' -- <UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <PRIMARY_UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_SHARE_CLASS_LEVEL, varchar(12),>
           ,'BX' -- <PRIM_SECURITY_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER, varchar(40),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER_DES, varchar(80),>
           ,1 -- <ID_CUSIP_VALID, bit,>
           ,1 -- <ID_ISIN_VALID, bit,>
           ,1 -- <ID_SEDOL_VALID, bit,>
           ,1 -- <ID_SEDOL2_VALID, bit,>
           ,10000 -- <TOP_LEVEL_RUN_ID, int,>
           ,GETDATE() -- <CADIS_SYSTEM_INSERTED, datetime,>
           ,GETDATE() -- <CADIS_SYSTEM_UPDATED, datetime,>
           ,'TEST' -- <CADIS_SYSTEM_CHANGEDBY, nvarchar(50),>
           ,1 -- <CADIS_SYSTEM_PRIORITY, int,>
           ,GETDATE() -- <CADIS_SYSTEM_LASTMODIFIED, datetime,>)
		)

-- PPA_SEC_ID 1002

INSERT INTO [dbo].[T_PPA_BBO_EQUITY_SEC]
           ([PPA_SEC_ID]
           ,[FILE_NAME]
           ,[FILE_REGION]
           ,[FILE_NAME_DATE]
           ,[DATARECORDS]
           ,[TIMEFINISHED]
           ,[SECURITY_DESCRIPTION]
           ,[RCODE]
           ,[NFIELDS]
           ,[TICKER]
           ,[EXCH_CODE]
           ,[NAME]
           ,[COUNTRY]
           ,[CRNCY]
           ,[SECURITY_TYP]
           ,[PAR_AMT]
           ,[EQY_PRIM_EXCH]
           ,[EQY_PRIM_EXCH_SHRT]
           ,[EQY_SIC_CODE]
           ,[EQY_SIC_NAME]
           ,[INDUSTRY_GROUP]
           ,[INDUSTRY_SUBGROUP]
           ,[INDUSTRY_SECTOR]
           ,[ID_SEDOL1]
           ,[ID_WERTPAPIER]
           ,[ID_ISIN]
           ,[ID_DUTCH]
           ,[ID_VALOREN]
           ,[ID_FRENCH]
           ,[ID_BELGIUM]
           ,[ID_BB_COMPANY]
           ,[ID_BB_SECURITY]
           ,[ID_CUSIP]
           ,[ID_COMMON]
           ,[ADR_UNDL_TICKER]
           ,[ADR_SH_PER_ADR]
           ,[DVD_CRNCY]
           ,[EQY_DVD_SH_12M_NET]
           ,[DVD_SH_12M]
           ,[DVD_SH_LAST]
           ,[LAST_DPS_GROSS]
           ,[EQY_DVD_PCT_FRANKED]
           ,[DVD_TYP_LAST]
           ,[DVD_FREQ]
           ,[DVD_PAY_DT]
           ,[DVD_RECORD_DT]
           ,[DVD_DECLARED_DT]
           ,[EQY_SPLIT_DT]
           ,[EQY_SPLIT_RATIO]
           ,[DVD_EX_DT]
           ,[EQY_DVD_EX_FLAG]
           ,[INDUSTRY_SUBGROUP_NUM]
           ,[CNTRY_ISSUE_ISO]
           ,[MARKET_STATUS]
           ,[ID_BB_PARENT_CO]
           ,[ADR_UNDL_CMPID]
           ,[ADR_UNDL_SECID]
           ,[REL_INDEX]
           ,[PX_TRADE_LOT_SIZE]
           ,[PARENT_COMP_TICKER]
           ,[PARENT_COMP_NAME]
           ,[ID_LOCAL]
           ,[LONG_COMP_NAME]
           ,[PARENT_INDUSTRY_GROUP]
           ,[PARENT_INDUSTRY_SUBGROUP]
           ,[PARENT_INDUSTRY_SECTOR]
           ,[VOTING_RIGHTS]
           ,[ID_BB_PRIM_SECURITY_FLAG]
           ,[PRE_EURO_ID_ISIN]
           ,[PRE_REDENOM_CRNCY]
           ,[PRE_EURO_PAR_AMT]
           ,[POST_REDENOM_CRNCY]
           ,[POST_EURO_PAR_AMT]
           ,[POST_EURO_ID_ISIN]
           ,[REDENOM_DT]
           ,[REDENOM_METHOD]
           ,[REDENOM_ROUND_METHOD]
           ,[PAR_VAL_CRNCY]
           ,[EQY_SH_OUT]
           ,[EQY_SH_OUT_DT]
           ,[ID_BB_UNIQUE]
           ,[MARKET_SECTOR_DES]
           ,[IS_STK_MARGINABLE]
           ,[144A_FLAG]
           ,[TRANSFER_AGENT]
           ,[EQY_PRIM_SECURITY_TICKER]
           ,[EQY_PRIM_SECURITY_COMP_EXCH]
           ,[IS_SETS]
           ,[WHICH_JAPANESE_SECTION]
           ,[ADR_ADR_PER_SH]
           ,[EQY_PRIM_SECURITY_PRIM_EXCH]
           ,[EQY_FUND_CRNCY]
           ,[WHEN_ISSUED]
           ,[CDR_COUNTRY_CODE]
           ,[CDR_EXCH_CODE]
           ,[CNTRY_OF_INCORPORATION]
           ,[CNTRY_OF_DOMICILE]
           ,[SEC_RESTRICT]
           ,[EQY_SH_OUT_REAL]
           ,[ADR_UNDL_CRNCY]
           ,[MULTIPLE_SHARE]
           ,[PX_QUOTE_LOT_SIZE]
           ,[PX_ROUND_LOT_SIZE]
           ,[ID_SEDOL2]
           ,[SEDOL1_COUNTRY_ISO]
           ,[SEDOL2_COUNTRY_ISO]
           ,[ID_MIC_PRIM_EXCH]
           ,[ID_MIC_LOCAL_EXCH]
           ,[LSE_SECTOR]
           ,[LSE_SEGMENT]
           ,[EQY_SH_OUT_TOT_MULT_SH]
           ,[SECURITY_TYP2]
           ,[ID_BB_PRIM_SECURITY]
           ,[EQY_OPT_AVAIL]
           ,[EQY_FREE_FLOAT_PCT]
           ,[TICKER_AND_EXCH_CODE]
           ,[EQY_INIT_PO_DT]
           ,[EQY_PO_DT]
           ,[EQY_INIT_PO_SH_PX]
           ,[EQY_SPLIT_ADJ_INIT_PO_PX]
           ,[EQY_FUND_TICKER]
           ,[TOTAL_VOTING_SHARES_VALUE]
           ,[ID_EXCH_SYMBOL]
           ,[ID_BB_CONNECT]
           ,[ID_NAICS_CODE]
           ,[TOTAL_NON_VOTING_SHARES_VALUE]
           ,[CDR_SETTLE_CODE]
           ,[CFI_CODE]
           ,[ID_BB_GLOBAL]
           ,[COMPOSITE_ID_BB_GLOBAL]
           ,[INDUSTRY_GROUP_NUM]
           ,[INDUSTRY_SECTOR_NUM]
           ,[EQY_PRIM_SECURITY_CRNCY]
           ,[ID_BB_SEC_NUM_DES]
           ,[FEED_SOURCE]
           ,[ID_BB_GLOBAL_COMPANY]
           ,[ID_BB_GLOBAL_COMPANY_NAME]
           ,[UNDERLYING_ID_BB_GLOBAL]
           ,[PRIMARY_UNDERLYING_ID_BB_GLOBAL]
           ,[ID_BB_GLOBAL_SHARE_CLASS_LEVEL]
           ,[PRIM_SECURITY_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL]
           ,[TRADING_SYSTEM_IDENTIFIER]
           ,[TRADING_SYSTEM_IDENTIFIER_DES]
           ,[ID_CUSIP_VALID]
           ,[ID_ISIN_VALID]
           ,[ID_SEDOL_VALID]
           ,[ID_SEDOL2_VALID]
           ,[TOP_LEVEL_RUN_ID]
           ,[CADIS_SYSTEM_INSERTED]
           ,[CADIS_SYSTEM_UPDATED]
           ,[CADIS_SYSTEM_CHANGEDBY]
           ,[CADIS_SYSTEM_PRIORITY]
           ,[CADIS_SYSTEM_LASTMODIFIED])
     VALUES
           (1002 -- <PPA_SEC_ID, int,>
           ,'BA' -- <FILE_NAME, varchar(50),>
           ,'BB' -- <FILE_REGION, varchar(50),>
           ,'2018-01-01' -- <FILE_NAME_DATE, datetime,>
           ,10000 -- <DATARECORDS, int,>
           ,'BC' -- <TIMEFINISHED, varchar(50),>
           ,'BD' -- <SECURITY_DESCRIPTION, varchar(50),>
           ,10001 -- <RCODE, int,>
           ,10002 -- <NFIELDS, int,>
           ,'BE' -- <TICKER, varchar(22),>
           ,'BF' -- <EXCH_CODE, varchar(18),>
           ,'BG' -- <NAME, varchar(30),>
           ,'BH' -- <COUNTRY, varchar(8),>
           ,'BI' -- <CRNCY, varchar(8),>
           ,'BJ' -- <SECURITY_TYP, varchar(30),>
           ,7.0135 -- <PAR_AMT, decimal(22,8),>
           ,'BK' -- <EQY_PRIM_EXCH, varchar(30),>
           ,'BI' -- <EQY_PRIM_EXCH_SHRT, varchar(8),>
           ,'1000' -- <EQY_SIC_CODE, varchar(4),>
           ,'BK' -- <EQY_SIC_NAME, varchar(14),>
           ,'BL' -- <INDUSTRY_GROUP, varchar(24),>
           ,'BM' -- <INDUSTRY_SUBGROUP, varchar(30),>
           ,'BN' -- <INDUSTRY_SECTOR, varchar(24),>
           ,'BO' -- <ID_SEDOL1, varchar(7),>
           ,'BP' -- <ID_WERTPAPIER, varchar(8),>
           ,'BQ' -- <ID_ISIN, varchar(12),>
           ,'BR' -- <ID_DUTCH, varchar(8),>
           ,'10000' -- <ID_VALOREN, varchar(12),>
           ,'BT' -- <ID_FRENCH, varchar(8),>
           ,'BU' -- <ID_BELGIUM, varchar(9),>
           ,10000 -- <ID_BB_COMPANY, int,>
           ,10000 -- <ID_BB_SECURITY, int,>
           ,'BV' -- <ID_CUSIP, varchar(9),>
           ,'10000' -- <ID_COMMON, varchar(9),>
           ,'BX' -- <ADR_UNDL_TICKER, varchar(12),>
           ,1.0000 -- <ADR_SH_PER_ADR, decimal(22,8),>
           ,'BY' -- <DVD_CRNCY, varchar(5),>
           ,1.0000 -- <EQY_DVD_SH_12M_NET, decimal(22,8),>
           ,1.0000 -- <DVD_SH_12M, decimal(22,8),>
           ,1.0000 -- <DVD_SH_LAST, decimal(22,8),>
           ,1.0000 -- <LAST_DPS_GROSS, decimal(22,8),>
           ,1.0000 -- <EQY_DVD_PCT_FRANKED, decimal(22,8),>
           ,'BZ' -- <DVD_TYP_LAST, varchar(30),>
           ,'BA' -- <DVD_FREQ, varchar(8),>
           ,2018-01-01 -- <DVD_PAY_DT, datetime,>
           ,2018-01-01 -- <DVD_RECORD_DT, datetime,>
           ,2018-01-01 -- <DVD_DECLARED_DT, datetime,>
           ,2018-01-01 -- <EQY_SPLIT_DT, datetime,>
           ,'BB' -- <EQY_SPLIT_RATIO, varchar(30),>
           ,2018-01-01 -- <DVD_EX_DT, datetime,>
           ,1 -- <EQY_DVD_EX_FLAG, bit,>
           ,10000 -- <INDUSTRY_SUBGROUP_NUM, int,>
           ,'BC' -- <CNTRY_ISSUE_ISO, varchar(4),>
           ,'BD' -- <MARKET_STATUS, varchar(4),>
           ,10000 -- <ID_BB_PARENT_CO, int,>
           ,10000 -- <ADR_UNDL_CMPID, int,>
           ,10000 -- <ADR_UNDL_SECID, int,>
           ,'BE' -- <REL_INDEX, varchar(8),>
           ,10000 -- <PX_TRADE_LOT_SIZE, int,>
           ,'BF' -- <PARENT_COMP_TICKER, varchar(8),>
           ,'BG' -- <PARENT_COMP_NAME, varchar(30),>
           ,'BH' -- <ID_LOCAL, varchar(8),>
           ,'BI' -- <LONG_COMP_NAME, varchar(100),>
           ,'BJ' -- <PARENT_INDUSTRY_GROUP, varchar(24),>
           ,'BK' -- <PARENT_INDUSTRY_SUBGROUP, varchar(24),>
           ,'BL' -- <PARENT_INDUSTRY_SECTOR, varchar(24),>
           ,1.0000 -- <VOTING_RIGHTS, decimal(22,8),>
           ,1 -- <ID_BB_PRIM_SECURITY_FLAG, bit,>
           ,'BM' -- <PRE_EURO_ID_ISIN, varchar(12),>
           ,'BN' -- <PRE_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <PRE_EURO_PAR_AMT, decimal(22,8),>
           ,'BO' -- <POST_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <POST_EURO_PAR_AMT, decimal(22,8),>
           ,'BP' -- <POST_EURO_ID_ISIN, varchar(12),>
           ,2018-01-01 -- <REDENOM_DT, datetime,>
           ,'BQ' -- <REDENOM_METHOD, varchar(30),>
           ,'BR' -- <REDENOM_ROUND_METHOD, varchar(30),>
           ,'BS' -- <PAR_VAL_CRNCY, varchar(8),>
           ,1.0000 -- <EQY_SH_OUT, decimal(22,8),>
           ,2018-01-01 -- <EQY_SH_OUT_DT, datetime,>
           ,'BT' -- <ID_BB_UNIQUE, varchar(30),>
           ,'BU' -- <MARKET_SECTOR_DES, varchar(8),>
           ,1 -- <IS_STK_MARGINABLE, bit,>
           ,1 -- <144A_FLAG, bit,>
           ,'BV' -- <TRANSFER_AGENT, varchar(80),>
           ,'BW' -- <EQY_PRIM_SECURITY_TICKER, varchar(8),>
           ,'BX' -- <EQY_PRIM_SECURITY_COMP_EXCH, varchar(4),>
           ,1 -- <IS_SETS, bit,>
           ,'BY' -- <WHICH_JAPANESE_SECTION, varchar(4),>
           ,1.0000 -- <ADR_ADR_PER_SH, decimal(22,8),>
           ,'BZ' -- <EQY_PRIM_SECURITY_PRIM_EXCH, varchar(8),>
           ,'BA' -- <EQY_FUND_CRNCY, varchar(5),>
           ,1 -- <WHEN_ISSUED, bit,>
           ,'BB' -- <CDR_COUNTRY_CODE, varchar(4),>
           ,'BC' -- <CDR_EXCH_CODE, varchar(4),>
           ,'BD' -- <CNTRY_OF_INCORPORATION, varchar(4),>
           ,'BE' -- <CNTRY_OF_DOMICILE, varchar(4),>
           ,10000 -- <SEC_RESTRICT, int,>
           ,1.0000 -- <EQY_SH_OUT_REAL, decimal(30,8),>
           ,'BF' -- <ADR_UNDL_CRNCY, varchar(4),>
           ,1 -- <MULTIPLE_SHARE, bit,>
           ,1.0000 -- <PX_QUOTE_LOT_SIZE, decimal(22,8),>
           ,10000 -- <PX_ROUND_LOT_SIZE, int,>
           ,'BG' -- <ID_SEDOL2, varchar(7),>
           ,'BH' -- <SEDOL1_COUNTRY_ISO, varchar(4),>
           ,'BI' -- <SEDOL2_COUNTRY_ISO, varchar(4),>
           ,'BJ' -- <ID_MIC_PRIM_EXCH, varchar(4),>
           ,'BK' -- <ID_MIC_LOCAL_EXCH, varchar(4),>
           ,'BL' -- <LSE_SECTOR, varchar(4),>
           ,'BM' -- <LSE_SEGMENT, varchar(4),>
           ,1.0000 -- <EQY_SH_OUT_TOT_MULT_SH, decimal(30,8),>
           ,'BN' -- <SECURITY_TYP2, varchar(28),>
           ,10000 -- <ID_BB_PRIM_SECURITY, int,>
           ,1 -- <EQY_OPT_AVAIL, bit,>
           ,1.0000 -- <EQY_FREE_FLOAT_PCT, decimal(22,8),>
           ,'BO' -- <TICKER_AND_EXCH_CODE, varchar(12),>
           ,2018-01-01 -- <EQY_INIT_PO_DT, datetime,>
           ,2018-01-01 -- <EQY_PO_DT, datetime,>
           ,1.0000 -- <EQY_INIT_PO_SH_PX, decimal(22,8),>
           ,1.0000 -- <EQY_SPLIT_ADJ_INIT_PO_PX, decimal(30,8),>
           ,'BX' -- <EQY_FUND_TICKER, varchar(12),>
           ,1.0000 -- <TOTAL_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <ID_EXCH_SYMBOL, varchar(30),>
           ,10000 -- <ID_BB_CONNECT, int,>
           ,'BX' -- <ID_NAICS_CODE, varchar(8),>
           ,1.0000 -- <TOTAL_NON_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <CDR_SETTLE_CODE, varchar(4),>
           ,'BX' -- <CFI_CODE, varchar(6),>
           ,'C' -- <ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <COMPOSITE_ID_BB_GLOBAL, varchar(12),>
           ,10000 -- <INDUSTRY_GROUP_NUM, int,>
           ,10000 -- <INDUSTRY_SECTOR_NUM, int,>
           ,'BX' -- <EQY_PRIM_SECURITY_CRNCY, varchar(8),>
           ,'BX' -- <ID_BB_SEC_NUM_DES, varchar(30),>
           ,'BX' -- <FEED_SOURCE, varchar(30),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY_NAME, varchar(100),>
           ,'BX' -- <UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <PRIMARY_UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_SHARE_CLASS_LEVEL, varchar(12),>
           ,'BX' -- <PRIM_SECURITY_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER, varchar(40),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER_DES, varchar(80),>
           ,1 -- <ID_CUSIP_VALID, bit,>
           ,1 -- <ID_ISIN_VALID, bit,>
           ,1 -- <ID_SEDOL_VALID, bit,>
           ,1 -- <ID_SEDOL2_VALID, bit,>
           ,10000 -- <TOP_LEVEL_RUN_ID, int,>
           ,GETDATE() -- <CADIS_SYSTEM_INSERTED, datetime,>
           ,GETDATE() -- <CADIS_SYSTEM_UPDATED, datetime,>
           ,'TEST' -- <CADIS_SYSTEM_CHANGEDBY, nvarchar(50),>
           ,1 -- <CADIS_SYSTEM_PRIORITY, int,>
           ,GETDATE() -- <CADIS_SYSTEM_LASTMODIFIED, datetime,>)
		)

-- PPA_SEC_ID 1003

INSERT INTO [dbo].[T_PPA_BBO_EQUITY_SEC]
           ([PPA_SEC_ID]
           ,[FILE_NAME]
           ,[FILE_REGION]
           ,[FILE_NAME_DATE]
           ,[DATARECORDS]
           ,[TIMEFINISHED]
           ,[SECURITY_DESCRIPTION]
           ,[RCODE]
           ,[NFIELDS]
           ,[TICKER]
           ,[EXCH_CODE]
           ,[NAME]
           ,[COUNTRY]
           ,[CRNCY]
           ,[SECURITY_TYP]
           ,[PAR_AMT]
           ,[EQY_PRIM_EXCH]
           ,[EQY_PRIM_EXCH_SHRT]
           ,[EQY_SIC_CODE]
           ,[EQY_SIC_NAME]
           ,[INDUSTRY_GROUP]
           ,[INDUSTRY_SUBGROUP]
           ,[INDUSTRY_SECTOR]
           ,[ID_SEDOL1]
           ,[ID_WERTPAPIER]
           ,[ID_ISIN]
           ,[ID_DUTCH]
           ,[ID_VALOREN]
           ,[ID_FRENCH]
           ,[ID_BELGIUM]
           ,[ID_BB_COMPANY]
           ,[ID_BB_SECURITY]
           ,[ID_CUSIP]
           ,[ID_COMMON]
           ,[ADR_UNDL_TICKER]
           ,[ADR_SH_PER_ADR]
           ,[DVD_CRNCY]
           ,[EQY_DVD_SH_12M_NET]
           ,[DVD_SH_12M]
           ,[DVD_SH_LAST]
           ,[LAST_DPS_GROSS]
           ,[EQY_DVD_PCT_FRANKED]
           ,[DVD_TYP_LAST]
           ,[DVD_FREQ]
           ,[DVD_PAY_DT]
           ,[DVD_RECORD_DT]
           ,[DVD_DECLARED_DT]
           ,[EQY_SPLIT_DT]
           ,[EQY_SPLIT_RATIO]
           ,[DVD_EX_DT]
           ,[EQY_DVD_EX_FLAG]
           ,[INDUSTRY_SUBGROUP_NUM]
           ,[CNTRY_ISSUE_ISO]
           ,[MARKET_STATUS]
           ,[ID_BB_PARENT_CO]
           ,[ADR_UNDL_CMPID]
           ,[ADR_UNDL_SECID]
           ,[REL_INDEX]
           ,[PX_TRADE_LOT_SIZE]
           ,[PARENT_COMP_TICKER]
           ,[PARENT_COMP_NAME]
           ,[ID_LOCAL]
           ,[LONG_COMP_NAME]
           ,[PARENT_INDUSTRY_GROUP]
           ,[PARENT_INDUSTRY_SUBGROUP]
           ,[PARENT_INDUSTRY_SECTOR]
           ,[VOTING_RIGHTS]
           ,[ID_BB_PRIM_SECURITY_FLAG]
           ,[PRE_EURO_ID_ISIN]
           ,[PRE_REDENOM_CRNCY]
           ,[PRE_EURO_PAR_AMT]
           ,[POST_REDENOM_CRNCY]
           ,[POST_EURO_PAR_AMT]
           ,[POST_EURO_ID_ISIN]
           ,[REDENOM_DT]
           ,[REDENOM_METHOD]
           ,[REDENOM_ROUND_METHOD]
           ,[PAR_VAL_CRNCY]
           ,[EQY_SH_OUT]
           ,[EQY_SH_OUT_DT]
           ,[ID_BB_UNIQUE]
           ,[MARKET_SECTOR_DES]
           ,[IS_STK_MARGINABLE]
           ,[144A_FLAG]
           ,[TRANSFER_AGENT]
           ,[EQY_PRIM_SECURITY_TICKER]
           ,[EQY_PRIM_SECURITY_COMP_EXCH]
           ,[IS_SETS]
           ,[WHICH_JAPANESE_SECTION]
           ,[ADR_ADR_PER_SH]
           ,[EQY_PRIM_SECURITY_PRIM_EXCH]
           ,[EQY_FUND_CRNCY]
           ,[WHEN_ISSUED]
           ,[CDR_COUNTRY_CODE]
           ,[CDR_EXCH_CODE]
           ,[CNTRY_OF_INCORPORATION]
           ,[CNTRY_OF_DOMICILE]
           ,[SEC_RESTRICT]
           ,[EQY_SH_OUT_REAL]
           ,[ADR_UNDL_CRNCY]
           ,[MULTIPLE_SHARE]
           ,[PX_QUOTE_LOT_SIZE]
           ,[PX_ROUND_LOT_SIZE]
           ,[ID_SEDOL2]
           ,[SEDOL1_COUNTRY_ISO]
           ,[SEDOL2_COUNTRY_ISO]
           ,[ID_MIC_PRIM_EXCH]
           ,[ID_MIC_LOCAL_EXCH]
           ,[LSE_SECTOR]
           ,[LSE_SEGMENT]
           ,[EQY_SH_OUT_TOT_MULT_SH]
           ,[SECURITY_TYP2]
           ,[ID_BB_PRIM_SECURITY]
           ,[EQY_OPT_AVAIL]
           ,[EQY_FREE_FLOAT_PCT]
           ,[TICKER_AND_EXCH_CODE]
           ,[EQY_INIT_PO_DT]
           ,[EQY_PO_DT]
           ,[EQY_INIT_PO_SH_PX]
           ,[EQY_SPLIT_ADJ_INIT_PO_PX]
           ,[EQY_FUND_TICKER]
           ,[TOTAL_VOTING_SHARES_VALUE]
           ,[ID_EXCH_SYMBOL]
           ,[ID_BB_CONNECT]
           ,[ID_NAICS_CODE]
           ,[TOTAL_NON_VOTING_SHARES_VALUE]
           ,[CDR_SETTLE_CODE]
           ,[CFI_CODE]
           ,[ID_BB_GLOBAL]
           ,[COMPOSITE_ID_BB_GLOBAL]
           ,[INDUSTRY_GROUP_NUM]
           ,[INDUSTRY_SECTOR_NUM]
           ,[EQY_PRIM_SECURITY_CRNCY]
           ,[ID_BB_SEC_NUM_DES]
           ,[FEED_SOURCE]
           ,[ID_BB_GLOBAL_COMPANY]
           ,[ID_BB_GLOBAL_COMPANY_NAME]
           ,[UNDERLYING_ID_BB_GLOBAL]
           ,[PRIMARY_UNDERLYING_ID_BB_GLOBAL]
           ,[ID_BB_GLOBAL_SHARE_CLASS_LEVEL]
           ,[PRIM_SECURITY_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL]
           ,[TRADING_SYSTEM_IDENTIFIER]
           ,[TRADING_SYSTEM_IDENTIFIER_DES]
           ,[ID_CUSIP_VALID]
           ,[ID_ISIN_VALID]
           ,[ID_SEDOL_VALID]
           ,[ID_SEDOL2_VALID]
           ,[TOP_LEVEL_RUN_ID]
           ,[CADIS_SYSTEM_INSERTED]
           ,[CADIS_SYSTEM_UPDATED]
           ,[CADIS_SYSTEM_CHANGEDBY]
           ,[CADIS_SYSTEM_PRIORITY]
           ,[CADIS_SYSTEM_LASTMODIFIED])
     VALUES
           (1003 -- <PPA_SEC_ID, int,>
           ,'BA' -- <FILE_NAME, varchar(50),>
           ,'BB' -- <FILE_REGION, varchar(50),>
           ,'2018-01-01' -- <FILE_NAME_DATE, datetime,>
           ,10000 -- <DATARECORDS, int,>
           ,'BC' -- <TIMEFINISHED, varchar(50),>
           ,'BD' -- <SECURITY_DESCRIPTION, varchar(50),>
           ,10001 -- <RCODE, int,>
           ,10002 -- <NFIELDS, int,>
           ,'BE' -- <TICKER, varchar(22),>
           ,'BF' -- <EXCH_CODE, varchar(18),>
           ,'BG' -- <NAME, varchar(30),>
           ,'BH' -- <COUNTRY, varchar(8),>
           ,'BI' -- <CRNCY, varchar(8),>
           ,'BJ' -- <SECURITY_TYP, varchar(30),>
           ,7.0135 -- <PAR_AMT, decimal(22,8),>
           ,'BK' -- <EQY_PRIM_EXCH, varchar(30),>
           ,'BI' -- <EQY_PRIM_EXCH_SHRT, varchar(8),>
           ,'1000' -- <EQY_SIC_CODE, varchar(4),>
           ,'BK' -- <EQY_SIC_NAME, varchar(14),>
           ,'BL' -- <INDUSTRY_GROUP, varchar(24),>
           ,'BM' -- <INDUSTRY_SUBGROUP, varchar(30),>
           ,'BN' -- <INDUSTRY_SECTOR, varchar(24),>
           ,'BO' -- <ID_SEDOL1, varchar(7),>
           ,'BP' -- <ID_WERTPAPIER, varchar(8),>
           ,'BQ' -- <ID_ISIN, varchar(12),>
           ,'BR' -- <ID_DUTCH, varchar(8),>
           ,'10000' -- <ID_VALOREN, varchar(12),>
           ,'BT' -- <ID_FRENCH, varchar(8),>
           ,'BU' -- <ID_BELGIUM, varchar(9),>
           ,10000 -- <ID_BB_COMPANY, int,>
           ,10000 -- <ID_BB_SECURITY, int,>
           ,'BV' -- <ID_CUSIP, varchar(9),>
           ,'10000' -- <ID_COMMON, varchar(9),>
           ,'BX' -- <ADR_UNDL_TICKER, varchar(12),>
           ,1.0000 -- <ADR_SH_PER_ADR, decimal(22,8),>
           ,'BY' -- <DVD_CRNCY, varchar(5),>
           ,1.0000 -- <EQY_DVD_SH_12M_NET, decimal(22,8),>
           ,1.0000 -- <DVD_SH_12M, decimal(22,8),>
           ,1.0000 -- <DVD_SH_LAST, decimal(22,8),>
           ,1.0000 -- <LAST_DPS_GROSS, decimal(22,8),>
           ,1.0000 -- <EQY_DVD_PCT_FRANKED, decimal(22,8),>
           ,'BZ' -- <DVD_TYP_LAST, varchar(30),>
           ,'BA' -- <DVD_FREQ, varchar(8),>
           ,2018-01-01 -- <DVD_PAY_DT, datetime,>
           ,2018-01-01 -- <DVD_RECORD_DT, datetime,>
           ,2018-01-01 -- <DVD_DECLARED_DT, datetime,>
           ,2018-01-01 -- <EQY_SPLIT_DT, datetime,>
           ,'BB' -- <EQY_SPLIT_RATIO, varchar(30),>
           ,2018-01-01 -- <DVD_EX_DT, datetime,>
           ,1 -- <EQY_DVD_EX_FLAG, bit,>
           ,10000 -- <INDUSTRY_SUBGROUP_NUM, int,>
           ,'BC' -- <CNTRY_ISSUE_ISO, varchar(4),>
           ,'BD' -- <MARKET_STATUS, varchar(4),>
           ,10000 -- <ID_BB_PARENT_CO, int,>
           ,10000 -- <ADR_UNDL_CMPID, int,>
           ,10000 -- <ADR_UNDL_SECID, int,>
           ,'BE' -- <REL_INDEX, varchar(8),>
           ,10000 -- <PX_TRADE_LOT_SIZE, int,>
           ,'BF' -- <PARENT_COMP_TICKER, varchar(8),>
           ,'BG' -- <PARENT_COMP_NAME, varchar(30),>
           ,'BH' -- <ID_LOCAL, varchar(8),>
           ,'BI' -- <LONG_COMP_NAME, varchar(100),>
           ,'BJ' -- <PARENT_INDUSTRY_GROUP, varchar(24),>
           ,'BK' -- <PARENT_INDUSTRY_SUBGROUP, varchar(24),>
           ,'BL' -- <PARENT_INDUSTRY_SECTOR, varchar(24),>
           ,1.0000 -- <VOTING_RIGHTS, decimal(22,8),>
           ,1 -- <ID_BB_PRIM_SECURITY_FLAG, bit,>
           ,'BM' -- <PRE_EURO_ID_ISIN, varchar(12),>
           ,'BN' -- <PRE_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <PRE_EURO_PAR_AMT, decimal(22,8),>
           ,'BO' -- <POST_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <POST_EURO_PAR_AMT, decimal(22,8),>
           ,'BP' -- <POST_EURO_ID_ISIN, varchar(12),>
           ,2018-01-01 -- <REDENOM_DT, datetime,>
           ,'BQ' -- <REDENOM_METHOD, varchar(30),>
           ,'BR' -- <REDENOM_ROUND_METHOD, varchar(30),>
           ,'BS' -- <PAR_VAL_CRNCY, varchar(8),>
           ,1.0000 -- <EQY_SH_OUT, decimal(22,8),>
           ,2018-01-01 -- <EQY_SH_OUT_DT, datetime,>
           ,'BT' -- <ID_BB_UNIQUE, varchar(30),>
           ,'BU' -- <MARKET_SECTOR_DES, varchar(8),>
           ,1 -- <IS_STK_MARGINABLE, bit,>
           ,1 -- <144A_FLAG, bit,>
           ,'BV' -- <TRANSFER_AGENT, varchar(80),>
           ,'BW' -- <EQY_PRIM_SECURITY_TICKER, varchar(8),>
           ,'BX' -- <EQY_PRIM_SECURITY_COMP_EXCH, varchar(4),>
           ,1 -- <IS_SETS, bit,>
           ,'BY' -- <WHICH_JAPANESE_SECTION, varchar(4),>
           ,1.0000 -- <ADR_ADR_PER_SH, decimal(22,8),>
           ,'BZ' -- <EQY_PRIM_SECURITY_PRIM_EXCH, varchar(8),>
           ,'BA' -- <EQY_FUND_CRNCY, varchar(5),>
           ,1 -- <WHEN_ISSUED, bit,>
           ,'BB' -- <CDR_COUNTRY_CODE, varchar(4),>
           ,'BC' -- <CDR_EXCH_CODE, varchar(4),>
           ,'BD' -- <CNTRY_OF_INCORPORATION, varchar(4),>
           ,'BE' -- <CNTRY_OF_DOMICILE, varchar(4),>
           ,10000 -- <SEC_RESTRICT, int,>
           ,1.0000 -- <EQY_SH_OUT_REAL, decimal(30,8),>
           ,'BF' -- <ADR_UNDL_CRNCY, varchar(4),>
           ,1 -- <MULTIPLE_SHARE, bit,>
           ,1.0000 -- <PX_QUOTE_LOT_SIZE, decimal(22,8),>
           ,10000 -- <PX_ROUND_LOT_SIZE, int,>
           ,'BG' -- <ID_SEDOL2, varchar(7),>
           ,'BH' -- <SEDOL1_COUNTRY_ISO, varchar(4),>
           ,'BI' -- <SEDOL2_COUNTRY_ISO, varchar(4),>
           ,'BJ' -- <ID_MIC_PRIM_EXCH, varchar(4),>
           ,'BK' -- <ID_MIC_LOCAL_EXCH, varchar(4),>
           ,'BL' -- <LSE_SECTOR, varchar(4),>
           ,'BM' -- <LSE_SEGMENT, varchar(4),>
           ,1.0000 -- <EQY_SH_OUT_TOT_MULT_SH, decimal(30,8),>
           ,'BN' -- <SECURITY_TYP2, varchar(28),>
           ,10000 -- <ID_BB_PRIM_SECURITY, int,>
           ,1 -- <EQY_OPT_AVAIL, bit,>
           ,1.0000 -- <EQY_FREE_FLOAT_PCT, decimal(22,8),>
           ,'BO' -- <TICKER_AND_EXCH_CODE, varchar(12),>
           ,2018-01-01 -- <EQY_INIT_PO_DT, datetime,>
           ,2018-01-01 -- <EQY_PO_DT, datetime,>
           ,1.0000 -- <EQY_INIT_PO_SH_PX, decimal(22,8),>
           ,1.0000 -- <EQY_SPLIT_ADJ_INIT_PO_PX, decimal(30,8),>
           ,'BX' -- <EQY_FUND_TICKER, varchar(12),>
           ,1.0000 -- <TOTAL_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <ID_EXCH_SYMBOL, varchar(30),>
           ,10000 -- <ID_BB_CONNECT, int,>
           ,'BX' -- <ID_NAICS_CODE, varchar(8),>
           ,1.0000 -- <TOTAL_NON_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <CDR_SETTLE_CODE, varchar(4),>
           ,'BX' -- <CFI_CODE, varchar(6),>
           ,'D' -- <ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <COMPOSITE_ID_BB_GLOBAL, varchar(12),>
           ,10000 -- <INDUSTRY_GROUP_NUM, int,>
           ,10000 -- <INDUSTRY_SECTOR_NUM, int,>
           ,'BX' -- <EQY_PRIM_SECURITY_CRNCY, varchar(8),>
           ,'BX' -- <ID_BB_SEC_NUM_DES, varchar(30),>
           ,'BX' -- <FEED_SOURCE, varchar(30),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY_NAME, varchar(100),>
           ,'BX' -- <UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <PRIMARY_UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_SHARE_CLASS_LEVEL, varchar(12),>
           ,'BX' -- <PRIM_SECURITY_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER, varchar(40),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER_DES, varchar(80),>
           ,1 -- <ID_CUSIP_VALID, bit,>
           ,1 -- <ID_ISIN_VALID, bit,>
           ,1 -- <ID_SEDOL_VALID, bit,>
           ,1 -- <ID_SEDOL2_VALID, bit,>
           ,10000 -- <TOP_LEVEL_RUN_ID, int,>
           ,GETDATE() -- <CADIS_SYSTEM_INSERTED, datetime,>
           ,GETDATE() -- <CADIS_SYSTEM_UPDATED, datetime,>
           ,'TEST' -- <CADIS_SYSTEM_CHANGEDBY, nvarchar(50),>
           ,1 -- <CADIS_SYSTEM_PRIORITY, int,>
           ,GETDATE() -- <CADIS_SYSTEM_LASTMODIFIED, datetime,>)
		)

-- PPA_SEC_ID 1007

INSERT INTO [dbo].[T_PPA_BBO_EQUITY_SEC]
           ([PPA_SEC_ID]
           ,[FILE_NAME]
           ,[FILE_REGION]
           ,[FILE_NAME_DATE]
           ,[DATARECORDS]
           ,[TIMEFINISHED]
           ,[SECURITY_DESCRIPTION]
           ,[RCODE]
           ,[NFIELDS]
           ,[TICKER]
           ,[EXCH_CODE]
           ,[NAME]
           ,[COUNTRY]
           ,[CRNCY]
           ,[SECURITY_TYP]
           ,[PAR_AMT]
           ,[EQY_PRIM_EXCH]
           ,[EQY_PRIM_EXCH_SHRT]
           ,[EQY_SIC_CODE]
           ,[EQY_SIC_NAME]
           ,[INDUSTRY_GROUP]
           ,[INDUSTRY_SUBGROUP]
           ,[INDUSTRY_SECTOR]
           ,[ID_SEDOL1]
           ,[ID_WERTPAPIER]
           ,[ID_ISIN]
           ,[ID_DUTCH]
           ,[ID_VALOREN]
           ,[ID_FRENCH]
           ,[ID_BELGIUM]
           ,[ID_BB_COMPANY]
           ,[ID_BB_SECURITY]
           ,[ID_CUSIP]
           ,[ID_COMMON]
           ,[ADR_UNDL_TICKER]
           ,[ADR_SH_PER_ADR]
           ,[DVD_CRNCY]
           ,[EQY_DVD_SH_12M_NET]
           ,[DVD_SH_12M]
           ,[DVD_SH_LAST]
           ,[LAST_DPS_GROSS]
           ,[EQY_DVD_PCT_FRANKED]
           ,[DVD_TYP_LAST]
           ,[DVD_FREQ]
           ,[DVD_PAY_DT]
           ,[DVD_RECORD_DT]
           ,[DVD_DECLARED_DT]
           ,[EQY_SPLIT_DT]
           ,[EQY_SPLIT_RATIO]
           ,[DVD_EX_DT]
           ,[EQY_DVD_EX_FLAG]
           ,[INDUSTRY_SUBGROUP_NUM]
           ,[CNTRY_ISSUE_ISO]
           ,[MARKET_STATUS]
           ,[ID_BB_PARENT_CO]
           ,[ADR_UNDL_CMPID]
           ,[ADR_UNDL_SECID]
           ,[REL_INDEX]
           ,[PX_TRADE_LOT_SIZE]
           ,[PARENT_COMP_TICKER]
           ,[PARENT_COMP_NAME]
           ,[ID_LOCAL]
           ,[LONG_COMP_NAME]
           ,[PARENT_INDUSTRY_GROUP]
           ,[PARENT_INDUSTRY_SUBGROUP]
           ,[PARENT_INDUSTRY_SECTOR]
           ,[VOTING_RIGHTS]
           ,[ID_BB_PRIM_SECURITY_FLAG]
           ,[PRE_EURO_ID_ISIN]
           ,[PRE_REDENOM_CRNCY]
           ,[PRE_EURO_PAR_AMT]
           ,[POST_REDENOM_CRNCY]
           ,[POST_EURO_PAR_AMT]
           ,[POST_EURO_ID_ISIN]
           ,[REDENOM_DT]
           ,[REDENOM_METHOD]
           ,[REDENOM_ROUND_METHOD]
           ,[PAR_VAL_CRNCY]
           ,[EQY_SH_OUT]
           ,[EQY_SH_OUT_DT]
           ,[ID_BB_UNIQUE]
           ,[MARKET_SECTOR_DES]
           ,[IS_STK_MARGINABLE]
           ,[144A_FLAG]
           ,[TRANSFER_AGENT]
           ,[EQY_PRIM_SECURITY_TICKER]
           ,[EQY_PRIM_SECURITY_COMP_EXCH]
           ,[IS_SETS]
           ,[WHICH_JAPANESE_SECTION]
           ,[ADR_ADR_PER_SH]
           ,[EQY_PRIM_SECURITY_PRIM_EXCH]
           ,[EQY_FUND_CRNCY]
           ,[WHEN_ISSUED]
           ,[CDR_COUNTRY_CODE]
           ,[CDR_EXCH_CODE]
           ,[CNTRY_OF_INCORPORATION]
           ,[CNTRY_OF_DOMICILE]
           ,[SEC_RESTRICT]
           ,[EQY_SH_OUT_REAL]
           ,[ADR_UNDL_CRNCY]
           ,[MULTIPLE_SHARE]
           ,[PX_QUOTE_LOT_SIZE]
           ,[PX_ROUND_LOT_SIZE]
           ,[ID_SEDOL2]
           ,[SEDOL1_COUNTRY_ISO]
           ,[SEDOL2_COUNTRY_ISO]
           ,[ID_MIC_PRIM_EXCH]
           ,[ID_MIC_LOCAL_EXCH]
           ,[LSE_SECTOR]
           ,[LSE_SEGMENT]
           ,[EQY_SH_OUT_TOT_MULT_SH]
           ,[SECURITY_TYP2]
           ,[ID_BB_PRIM_SECURITY]
           ,[EQY_OPT_AVAIL]
           ,[EQY_FREE_FLOAT_PCT]
           ,[TICKER_AND_EXCH_CODE]
           ,[EQY_INIT_PO_DT]
           ,[EQY_PO_DT]
           ,[EQY_INIT_PO_SH_PX]
           ,[EQY_SPLIT_ADJ_INIT_PO_PX]
           ,[EQY_FUND_TICKER]
           ,[TOTAL_VOTING_SHARES_VALUE]
           ,[ID_EXCH_SYMBOL]
           ,[ID_BB_CONNECT]
           ,[ID_NAICS_CODE]
           ,[TOTAL_NON_VOTING_SHARES_VALUE]
           ,[CDR_SETTLE_CODE]
           ,[CFI_CODE]
           ,[ID_BB_GLOBAL]
           ,[COMPOSITE_ID_BB_GLOBAL]
           ,[INDUSTRY_GROUP_NUM]
           ,[INDUSTRY_SECTOR_NUM]
           ,[EQY_PRIM_SECURITY_CRNCY]
           ,[ID_BB_SEC_NUM_DES]
           ,[FEED_SOURCE]
           ,[ID_BB_GLOBAL_COMPANY]
           ,[ID_BB_GLOBAL_COMPANY_NAME]
           ,[UNDERLYING_ID_BB_GLOBAL]
           ,[PRIMARY_UNDERLYING_ID_BB_GLOBAL]
           ,[ID_BB_GLOBAL_SHARE_CLASS_LEVEL]
           ,[PRIM_SECURITY_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_COMP_ID_BB_GLOBAL]
           ,[MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL]
           ,[TRADING_SYSTEM_IDENTIFIER]
           ,[TRADING_SYSTEM_IDENTIFIER_DES]
           ,[ID_CUSIP_VALID]
           ,[ID_ISIN_VALID]
           ,[ID_SEDOL_VALID]
           ,[ID_SEDOL2_VALID]
           ,[TOP_LEVEL_RUN_ID]
           ,[CADIS_SYSTEM_INSERTED]
           ,[CADIS_SYSTEM_UPDATED]
           ,[CADIS_SYSTEM_CHANGEDBY]
           ,[CADIS_SYSTEM_PRIORITY]
           ,[CADIS_SYSTEM_LASTMODIFIED])
     VALUES
           (1007 -- <PPA_SEC_ID, int,>
           ,'BA' -- <FILE_NAME, varchar(50),>
           ,'BB' -- <FILE_REGION, varchar(50),>
           ,'2018-01-01' -- <FILE_NAME_DATE, datetime,>
           ,10000 -- <DATARECORDS, int,>
           ,'BC' -- <TIMEFINISHED, varchar(50),>
           ,'BD' -- <SECURITY_DESCRIPTION, varchar(50),>
           ,10001 -- <RCODE, int,>
           ,10002 -- <NFIELDS, int,>
           ,'BE' -- <TICKER, varchar(22),>
           ,'BF' -- <EXCH_CODE, varchar(18),>
           ,'BG' -- <NAME, varchar(30),>
           ,'BH' -- <COUNTRY, varchar(8),>
           ,'BI' -- <CRNCY, varchar(8),>
           ,'BJ' -- <SECURITY_TYP, varchar(30),>
           ,7.0135 -- <PAR_AMT, decimal(22,8),>
           ,'BK' -- <EQY_PRIM_EXCH, varchar(30),>
           ,'BI' -- <EQY_PRIM_EXCH_SHRT, varchar(8),>
           ,'1000' -- <EQY_SIC_CODE, varchar(4),>
           ,'BK' -- <EQY_SIC_NAME, varchar(14),>
           ,'BL' -- <INDUSTRY_GROUP, varchar(24),>
           ,'BM' -- <INDUSTRY_SUBGROUP, varchar(30),>
           ,'BN' -- <INDUSTRY_SECTOR, varchar(24),>
           ,'BO' -- <ID_SEDOL1, varchar(7),>
           ,'BP' -- <ID_WERTPAPIER, varchar(8),>
           ,'BQ' -- <ID_ISIN, varchar(12),>
           ,'BR' -- <ID_DUTCH, varchar(8),>
           ,'10000' -- <ID_VALOREN, varchar(12),>
           ,'BT' -- <ID_FRENCH, varchar(8),>
           ,'BU' -- <ID_BELGIUM, varchar(9),>
           ,10000 -- <ID_BB_COMPANY, int,>
           ,10000 -- <ID_BB_SECURITY, int,>
           ,'BV' -- <ID_CUSIP, varchar(9),>
           ,'10000' -- <ID_COMMON, varchar(9),>
           ,'BX' -- <ADR_UNDL_TICKER, varchar(12),>
           ,1.0000 -- <ADR_SH_PER_ADR, decimal(22,8),>
           ,'BY' -- <DVD_CRNCY, varchar(5),>
           ,1.0000 -- <EQY_DVD_SH_12M_NET, decimal(22,8),>
           ,1.0000 -- <DVD_SH_12M, decimal(22,8),>
           ,1.0000 -- <DVD_SH_LAST, decimal(22,8),>
           ,1.0000 -- <LAST_DPS_GROSS, decimal(22,8),>
           ,1.0000 -- <EQY_DVD_PCT_FRANKED, decimal(22,8),>
           ,'BZ' -- <DVD_TYP_LAST, varchar(30),>
           ,'BA' -- <DVD_FREQ, varchar(8),>
           ,2018-01-01 -- <DVD_PAY_DT, datetime,>
           ,2018-01-01 -- <DVD_RECORD_DT, datetime,>
           ,2018-01-01 -- <DVD_DECLARED_DT, datetime,>
           ,2018-01-01 -- <EQY_SPLIT_DT, datetime,>
           ,'BB' -- <EQY_SPLIT_RATIO, varchar(30),>
           ,2018-01-01 -- <DVD_EX_DT, datetime,>
           ,1 -- <EQY_DVD_EX_FLAG, bit,>
           ,10000 -- <INDUSTRY_SUBGROUP_NUM, int,>
           ,'BC' -- <CNTRY_ISSUE_ISO, varchar(4),>
           ,'BD' -- <MARKET_STATUS, varchar(4),>
           ,10000 -- <ID_BB_PARENT_CO, int,>
           ,10000 -- <ADR_UNDL_CMPID, int,>
           ,10000 -- <ADR_UNDL_SECID, int,>
           ,'BE' -- <REL_INDEX, varchar(8),>
           ,10000 -- <PX_TRADE_LOT_SIZE, int,>
           ,'BF' -- <PARENT_COMP_TICKER, varchar(8),>
           ,'BG' -- <PARENT_COMP_NAME, varchar(30),>
           ,'BH' -- <ID_LOCAL, varchar(8),>
           ,'BI' -- <LONG_COMP_NAME, varchar(100),>
           ,'BJ' -- <PARENT_INDUSTRY_GROUP, varchar(24),>
           ,'BK' -- <PARENT_INDUSTRY_SUBGROUP, varchar(24),>
           ,'BL' -- <PARENT_INDUSTRY_SECTOR, varchar(24),>
           ,1.0000 -- <VOTING_RIGHTS, decimal(22,8),>
           ,1 -- <ID_BB_PRIM_SECURITY_FLAG, bit,>
           ,'BM' -- <PRE_EURO_ID_ISIN, varchar(12),>
           ,'BN' -- <PRE_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <PRE_EURO_PAR_AMT, decimal(22,8),>
           ,'BO' -- <POST_REDENOM_CRNCY, varchar(8),>
           ,1.0000 -- <POST_EURO_PAR_AMT, decimal(22,8),>
           ,'BP' -- <POST_EURO_ID_ISIN, varchar(12),>
           ,2018-01-01 -- <REDENOM_DT, datetime,>
           ,'BQ' -- <REDENOM_METHOD, varchar(30),>
           ,'BR' -- <REDENOM_ROUND_METHOD, varchar(30),>
           ,'BS' -- <PAR_VAL_CRNCY, varchar(8),>
           ,1.0000 -- <EQY_SH_OUT, decimal(22,8),>
           ,2018-01-01 -- <EQY_SH_OUT_DT, datetime,>
           ,'BT' -- <ID_BB_UNIQUE, varchar(30),>
           ,'BU' -- <MARKET_SECTOR_DES, varchar(8),>
           ,1 -- <IS_STK_MARGINABLE, bit,>
           ,1 -- <144A_FLAG, bit,>
           ,'BV' -- <TRANSFER_AGENT, varchar(80),>
           ,'BW' -- <EQY_PRIM_SECURITY_TICKER, varchar(8),>
           ,'BX' -- <EQY_PRIM_SECURITY_COMP_EXCH, varchar(4),>
           ,1 -- <IS_SETS, bit,>
           ,'BY' -- <WHICH_JAPANESE_SECTION, varchar(4),>
           ,1.0000 -- <ADR_ADR_PER_SH, decimal(22,8),>
           ,'BZ' -- <EQY_PRIM_SECURITY_PRIM_EXCH, varchar(8),>
           ,'BA' -- <EQY_FUND_CRNCY, varchar(5),>
           ,1 -- <WHEN_ISSUED, bit,>
           ,'BB' -- <CDR_COUNTRY_CODE, varchar(4),>
           ,'BC' -- <CDR_EXCH_CODE, varchar(4),>
           ,'BD' -- <CNTRY_OF_INCORPORATION, varchar(4),>
           ,'BE' -- <CNTRY_OF_DOMICILE, varchar(4),>
           ,10000 -- <SEC_RESTRICT, int,>
           ,1.0000 -- <EQY_SH_OUT_REAL, decimal(30,8),>
           ,'BF' -- <ADR_UNDL_CRNCY, varchar(4),>
           ,1 -- <MULTIPLE_SHARE, bit,>
           ,1.0000 -- <PX_QUOTE_LOT_SIZE, decimal(22,8),>
           ,10000 -- <PX_ROUND_LOT_SIZE, int,>
           ,'BG' -- <ID_SEDOL2, varchar(7),>
           ,'BH' -- <SEDOL1_COUNTRY_ISO, varchar(4),>
           ,'BI' -- <SEDOL2_COUNTRY_ISO, varchar(4),>
           ,'BJ' -- <ID_MIC_PRIM_EXCH, varchar(4),>
           ,'BK' -- <ID_MIC_LOCAL_EXCH, varchar(4),>
           ,'BL' -- <LSE_SECTOR, varchar(4),>
           ,'BM' -- <LSE_SEGMENT, varchar(4),>
           ,1.0000 -- <EQY_SH_OUT_TOT_MULT_SH, decimal(30,8),>
           ,'BN' -- <SECURITY_TYP2, varchar(28),>
           ,10000 -- <ID_BB_PRIM_SECURITY, int,>
           ,1 -- <EQY_OPT_AVAIL, bit,>
           ,1.0000 -- <EQY_FREE_FLOAT_PCT, decimal(22,8),>
           ,'BO' -- <TICKER_AND_EXCH_CODE, varchar(12),>
           ,2018-01-01 -- <EQY_INIT_PO_DT, datetime,>
           ,2018-01-01 -- <EQY_PO_DT, datetime,>
           ,1.0000 -- <EQY_INIT_PO_SH_PX, decimal(22,8),>
           ,1.0000 -- <EQY_SPLIT_ADJ_INIT_PO_PX, decimal(30,8),>
           ,'BX' -- <EQY_FUND_TICKER, varchar(12),>
           ,1.0000 -- <TOTAL_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <ID_EXCH_SYMBOL, varchar(30),>
           ,10000 -- <ID_BB_CONNECT, int,>
           ,'BX' -- <ID_NAICS_CODE, varchar(8),>
           ,1.0000 -- <TOTAL_NON_VOTING_SHARES_VALUE, decimal(30,8),>
           ,'BX' -- <CDR_SETTLE_CODE, varchar(4),>
           ,'BX' -- <CFI_CODE, varchar(6),>
           ,'H' -- <ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <COMPOSITE_ID_BB_GLOBAL, varchar(12),>
           ,10000 -- <INDUSTRY_GROUP_NUM, int,>
           ,10000 -- <INDUSTRY_SECTOR_NUM, int,>
           ,'BX' -- <EQY_PRIM_SECURITY_CRNCY, varchar(8),>
           ,'BX' -- <ID_BB_SEC_NUM_DES, varchar(30),>
           ,'BX' -- <FEED_SOURCE, varchar(30),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_COMPANY_NAME, varchar(100),>
           ,'BX' -- <UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <PRIMARY_UNDERLYING_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <ID_BB_GLOBAL_SHARE_CLASS_LEVEL, varchar(12),>
           ,'BX' -- <PRIM_SECURITY_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_COMP_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <MTF_ASSC_MKT_PRIM_ID_BB_GLOBAL, varchar(12),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER, varchar(40),>
           ,'BX' -- <TRADING_SYSTEM_IDENTIFIER_DES, varchar(80),>
           ,1 -- <ID_CUSIP_VALID, bit,>
           ,1 -- <ID_ISIN_VALID, bit,>
           ,1 -- <ID_SEDOL_VALID, bit,>
           ,1 -- <ID_SEDOL2_VALID, bit,>
           ,10000 -- <TOP_LEVEL_RUN_ID, int,>
           ,GETDATE() -- <CADIS_SYSTEM_INSERTED, datetime,>
           ,GETDATE() -- <CADIS_SYSTEM_UPDATED, datetime,>
           ,'TEST' -- <CADIS_SYSTEM_CHANGEDBY, nvarchar(50),>
           ,1 -- <CADIS_SYSTEM_PRIORITY, int,>
           ,GETDATE() -- <CADIS_SYSTEM_LASTMODIFIED, datetime,>
		)

-- SELECT * FROM dbo.T_PPA_BBO_EQUITY_SEC WHERE PPA_SEC_ID BETWEEN 1000 AND 1007

-- DELETE dbo.T_PPA_BBO_EQUITY_SEC WHERE PPA_SEC_ID BETWEEN 1000 AND 1007

GO


