.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.source "JDBCSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;,
        Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

.field protected _saveIntervalSec:J

.field private _sessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/session/AbstractSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    const-wide/16 v0, 0x3c

    .line 81
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V

    return-void
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager;)Ljava/sql/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 75
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private calculateRowId(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Ljava/lang/String;
    .locals 2

    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x5f

    .line 1132
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1082
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method private static getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "0.0.0.0"

    if-nez p0, :cond_0

    return-object v0

    .line 1114
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1115
    array-length v1, p0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_0

    .line 1118
    :cond_1
    aget-object p0, p0, v1

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1015
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 1019
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 1020
    invoke-interface {v0, v3}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1021
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v4, v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionAccessTime:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 1022
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 1023
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v5

    invoke-interface {v4, v3, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x3

    .line 1024
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastAccessedTime()J

    move-result-wide v5

    invoke-interface {v4, v3, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x4

    .line 1025
    invoke-interface {v4, v3, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x5

    .line 1026
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getExpiryTime()J

    move-result-wide v5

    invoke-interface {v4, v3, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x6

    .line 1027
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getRowId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1028
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1029
    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastSaved(J)V

    .line 1030
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V

    .line 1031
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated access time session id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1037
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_2
    throw p1
.end method


# virtual methods
.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 667
    :cond_0
    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 676
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 678
    :try_start_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->willPassivate()V

    .line 679
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->storeSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V

    .line 680
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->didActivate()V

    .line 681
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 685
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store new session id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 670
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public cacheInvalidate(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 0

    return-void
.end method

.method protected deleteSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1054
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    const/4 v1, 0x1

    .line 1058
    :try_start_0
    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1059
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteSession:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 1060
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getRowId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1061
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1062
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted Session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1068
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_2
    throw p1
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No session id manager defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    .line 579
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 581
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStart()V

    return-void
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 596
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStop()V

    return-void
.end method

.method protected expire(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->isStopping()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 758
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 760
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 764
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 766
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 767
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 768
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expiring session id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    if-eqz v3, :cond_3

    .line 773
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->timeout()V

    .line 774
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 778
    :cond_3
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 779
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized session id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 789
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 785
    :try_start_1
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Problem expiring sessions"

    invoke-interface {v2, v3, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 789
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw p1

    :cond_5
    :goto_4
    return-void
.end method

.method public getSaveInterval()J
    .locals 2

    .line 404
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    return-wide v0
.end method

.method public bridge synthetic getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object p1

    return-object p1
.end method

.method public getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .locals 14

    .line 446
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 448
    monitor-enter p0

    .line 459
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 460
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    if-nez v0, :cond_1

    .line 463
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSession("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): not in session map,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " now="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " lastSaved="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    move-wide v10, v6

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v10

    :goto_0
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " interval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long v10, v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    invoke-interface {v3, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 468
    :cond_1
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSession("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): in session map, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " now="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " lastSaved="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    move-wide v10, v6

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v10

    :goto_1
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " interval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long v10, v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " lastNode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$400(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " thisNode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " difference="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v10

    const/4 v12, 0x0

    sub-long v12, v1, v10

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    invoke-interface {v3, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 481
    :try_start_1
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSession("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): no session in session map. Reloading session data from db."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v4

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 484
    :cond_4
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v9

    const/4 v11, 0x0

    sub-long v11, v1, v9

    iget-wide v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long v9, v9, v4

    cmp-long v4, v11, v9

    if-ltz v4, :cond_5

    .line 486
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSession("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): stale session. Reloading session data from db."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v4

    goto :goto_3

    .line 491
    :cond_5
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSession("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): session in session map"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    :goto_3
    const/4 v5, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_b

    .line 506
    :try_start_2
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastNode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v0, :cond_6

    goto :goto_4

    .line 537
    :cond_6
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "getSession({}): Session not stale {}"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v8

    aput-object v4, v2, v9

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 509
    :cond_7
    :goto_4
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-lez v0, :cond_9

    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_8

    goto :goto_5

    .line 531
    :cond_8
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "getSession ({}): Session has expired"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 511
    :cond_9
    :goto_5
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 512
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSession("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): lastNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " thisNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastNode(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    :try_start_3
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionNode(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V

    .line 521
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->didActivate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 525
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to update freshly loaded session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    monitor-exit p0

    return-object v3

    .line 542
    :cond_b
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "getSession({}): No session in database matching id={}"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v8

    aput-object p1, v2, v9

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    move-object v3, v4

    .line 545
    :goto_7
    monitor-exit p0

    return-object v3

    .line 497
    :goto_8
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    .line 546
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public getSessions()I
    .locals 1

    .line 558
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 561
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected invalidateSession(Ljava/lang/String;)V
    .locals 1

    .line 619
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 622
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->invalidate()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 622
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected invalidateSessions()V
    .locals 0

    return-void
.end method

.method protected loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 803
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 804
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 805
    new-instance v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 855
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez p2, :cond_0

    .line 856
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 858
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object p2

    invoke-virtual {p2, v9}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/Runnable;)V

    .line 860
    :goto_0
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 864
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->removeSession(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    throw p1

    .line 868
    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    return-object p1
.end method

.method protected newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1

    .line 698
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method public removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V
    .locals 3

    .line 713
    monitor-enter p0

    .line 716
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 719
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->removeSession(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 721
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 726
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionIdManager;->removeSession(Ljavax/servlet/http/HttpSession;)V

    if-eqz p2, :cond_1

    .line 729
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/server/SessionIdManager;->invalidateAll(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 731
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 733
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 734
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionListener;

    .line 735
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionListener;->sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 739
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->willPassivate()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 721
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected removeSession(Ljava/lang/String;)Z
    .locals 5

    .line 639
    monitor-enter p0

    .line 641
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 645
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->deleteSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 649
    :try_start_2
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem deleting session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 651
    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 652
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setSaveInterval(J)V
    .locals 0

    .line 399
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    return-void
.end method

.method protected storeSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 884
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 888
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->calculateRowId(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Ljava/lang/String;

    move-result-object v1

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 891
    invoke-interface {v0, v4}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 892
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v5, v5, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertSession:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    .line 893
    invoke-interface {v5, v4, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v4, 0x2

    .line 894
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v4, 0x3

    .line 895
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getCanonicalContext()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v4, 0x4

    .line 896
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getVirtualHost()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v4, 0x5

    .line 897
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v4, 0x6

    .line 898
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v6

    invoke-interface {v5, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v4, 0x7

    .line 899
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastAccessedTime()J

    move-result-wide v6

    invoke-interface {v5, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/16 v4, 0x8

    .line 900
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getCreationTime()J

    move-result-wide v6

    invoke-interface {v5, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/16 v4, 0x9

    .line 901
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getCookieSet()J

    move-result-wide v6

    invoke-interface {v5, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/16 v4, 0xa

    .line 902
    invoke-interface {v5, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/16 v4, 0xb

    .line 903
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getExpiryTime()J

    move-result-wide v6

    invoke-interface {v5, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 905
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 906
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 907
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAttributeMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 908
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 910
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v7, 0xc

    .line 911
    array-length v4, v4

    invoke-interface {v5, v7, v6, v4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 913
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 914
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setRowId(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastSaved(J)V

    .line 918
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 924
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_3
    throw p1
.end method

.method protected updateSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 941
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 945
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 946
    invoke-interface {v0, v3}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 947
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v4, v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSession:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 948
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 949
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v5

    invoke-interface {v4, v3, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x3

    .line 950
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastAccessedTime()J

    move-result-wide v5

    invoke-interface {v4, v3, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x4

    .line 951
    invoke-interface {v4, v3, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v3, 0x5

    .line 952
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getExpiryTime()J

    move-result-wide v5

    invoke-interface {v4, v3, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 954
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 955
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 956
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAttributeMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 957
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 958
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v6, 0x6

    .line 960
    array-length v3, v3

    invoke-interface {v4, v6, v5, v3}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    const/4 v3, 0x7

    .line 961
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getRowId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 962
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 964
    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastSaved(J)V

    .line 965
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 971
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_3
    throw p1
.end method

.method protected updateSessionNode(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 985
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v0

    .line 986
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    const/4 v2, 0x1

    .line 990
    :try_start_0
    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 991
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v3, v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionNode:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 992
    invoke-interface {v3, v2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 993
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getRowId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 994
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 995
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 996
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 997
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated last node for session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", lastNode = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, p1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1002
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    :cond_2
    throw p1
.end method
