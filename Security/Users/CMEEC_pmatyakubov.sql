IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'CMEEC\pmatyakubov')
CREATE LOGIN [CMEEC\pmatyakubov] FROM WINDOWS
GO
CREATE USER [CMEEC\pmatyakubov] FOR LOGIN [CMEEC\pmatyakubov]
GO
