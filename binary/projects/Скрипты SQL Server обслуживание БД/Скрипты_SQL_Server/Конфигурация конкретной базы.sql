-- Get database scoped configuration values for current database (Query 53) (Database-scoped Configurations)
SELECT configuration_id, name, [value] AS [value_for_primary], value_for_secondary
FROM sys.database_scoped_configurations WITH (NOLOCK) OPTION (RECOMPILE);