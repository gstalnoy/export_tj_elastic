-- Returns status of instant file initialization (Query 6) (IFI Status)
EXEC sys.xp_readerrorlog 0, 1, N'Database Instant File Initialization';