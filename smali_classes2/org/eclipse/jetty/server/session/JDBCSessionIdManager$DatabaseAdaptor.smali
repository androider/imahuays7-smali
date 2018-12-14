.class public Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;
.super Ljava/lang/Object;
.source "JDBCSessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatabaseAdaptor"
.end annotation


# instance fields
.field _dbName:Ljava/lang/String;

.field _isLower:Z

.field _isUpper:Z

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;Ljava/sql/DatabaseMetaData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    .line 129
    sget-object p1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "Using database {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->storesLowerCaseIdentifiers()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isLower:Z

    .line 131
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->storesUpperCaseIdentifiers()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isUpper:Z

    return-void
.end method


# virtual methods
.method public convertIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isLower:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isUpper:Z

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method

.method public getBlobInputStream(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "postgres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 184
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p2

    .line 187
    :cond_0
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBlobType()Ljava/lang/String;
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "postgres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bytea"

    return-object v0

    :cond_1
    const-string v0, "blob"

    return-object v0
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const-string v2, ""

    .line 212
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->isEmptyStringNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " where sessionId = ? and contextPath is null and virtualHost = ?"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 218
    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 219
    invoke-interface {p1, v0, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    return-object p1

    .line 227
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v3, v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where sessionId = ? and contextPath = ? and virtualHost = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 229
    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 230
    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p2, 0x3

    .line 231
    invoke-interface {p1, p2, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    return-object p1
.end method

.method public getLongType()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "number(20)"

    return-object v0

    :cond_1
    const-string v0, "bigint"

    return-object v0
.end method

.method public getRowIdColumnName()Ljava/lang/String;
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "srowId"

    return-object v0

    :cond_0
    const-string v0, "rowId"

    return-object v0
.end method

.method public isEmptyStringNull()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
