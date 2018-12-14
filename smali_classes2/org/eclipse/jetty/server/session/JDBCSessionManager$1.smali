.class Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;
.super Ljava/lang/Object;
.source "JDBCSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

.field final synthetic val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$canonicalContextPath:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$vhost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$canonicalContextPath:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$vhost:Ljava/lang/String;

    iput-object p5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    .line 815
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager;)Ljava/sql/Connection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$canonicalContextPath:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$vhost:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getLoadStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 817
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 818
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v3, v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v3, v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "createTime"

    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v3, "accessTime"

    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;JJ)V

    const-string v3, "cookieTime"

    .line 821
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setCookieSet(J)V

    const-string v3, "lastAccessTime"

    .line 822
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastAccessedTime(J)V

    const-string v3, "lastNode"

    .line 823
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastNode(Ljava/lang/String;)V

    const-string v3, "lastSavedTime"

    .line 824
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastSaved(J)V

    const-string v3, "expiryTime"

    .line 825
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setExpiryTime(J)V

    const-string v3, "contextPath"

    .line 826
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setCanonicalContext(Ljava/lang/String;)V

    const-string v3, "virtualHost"

    .line 827
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setVirtualHost(Ljava/lang/String;)V

    .line 829
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v3, v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    const-string v4, "map"

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getBlobInputStream(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 830
    new-instance v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-direct {v3, v4, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/io/InputStream;)V

    .line 831
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 832
    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->addAttributes(Ljava/util/Map;)V

    .line 833
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;->close()V

    .line 835
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOADED session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 848
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 842
    :goto_0
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 848
    :try_start_4
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 849
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 848
    :try_start_5
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 849
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v0
.end method
