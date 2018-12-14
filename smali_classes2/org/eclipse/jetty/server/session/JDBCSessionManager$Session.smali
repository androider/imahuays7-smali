.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
.super Lorg/eclipse/jetty/server/session/AbstractSession;
.source "JDBCSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x48482e75793f5edfL


# instance fields
.field private _canonicalContext:Ljava/lang/String;

.field private _cookieSet:J

.field private _dirty:Z

.field private _expiryTime:J

.field private _lastNode:Ljava/lang/String;

.field private _lastSaved:J

.field private _rowId:Ljava/lang/String;

.field private _virtualHost:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .line 167
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object v6, p2

    .line 168
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;JJLjava/lang/String;)V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 169
    iput-object p3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_rowId:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 6

    .line 149
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .line 150
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    const/4 p2, 0x0

    .line 98
    iput-boolean p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 151
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getMaxInactiveInterval()I

    move-result p2

    if-gtz p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long v4, v0, v2

    move-wide v0, v4

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J

    .line 153
    iget-object p2, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {p2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_virtualHost:Ljava/lang/String;

    .line 154
    iget-object p2, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_canonicalContext:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J
    .locals 2

    .line 91
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J
    .locals 2

    .line 91
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J

    return-wide v0
.end method


# virtual methods
.method protected access(J)Z
    .locals 4

    .line 273
    monitor-enter p0

    .line 275
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->access(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getMaxInactiveInterval()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    add-long v2, p1, v0

    move-wide p1, v2

    .line 278
    :goto_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J

    const/4 p1, 0x1

    .line 279
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 281
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected complete()V
    .locals 7

    .line 294
    monitor-enter p0

    .line 296
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->complete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 299
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->willPassivate()V

    .line 306
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V

    .line 307
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->didActivate()V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J

    const/4 v5, 0x0

    sub-long v5, v1, v3

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSaveInterval()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    .line 311
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v1, p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$200(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :cond_1
    :goto_0
    :try_start_2
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 317
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem persisting changed session data id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 323
    :goto_1
    :try_start_4
    monitor-exit p0

    return-void

    .line 321
    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    throw v1

    :catchall_1
    move-exception v0

    .line 323
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected cookieSet()V
    .locals 2

    .line 261
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_cookieSet:J

    return-void
.end method

.method public declared-synchronized getCanonicalContext()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_canonicalContext:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookieSet()J
    .locals 2

    monitor-enter p0

    .line 231
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_cookieSet:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExpiryTime()J
    .locals 2

    monitor-enter p0

    .line 210
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastNode()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSaved()J
    .locals 2

    monitor-enter p0

    .line 195
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getRowId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_rowId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualHost()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_virtualHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->removeAttribute(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 247
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    return-void
.end method

.method public declared-synchronized setCanonicalContext(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 216
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_canonicalContext:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit p0

    throw p1
.end method

.method public setCookieSet(J)V
    .locals 0

    .line 226
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_cookieSet:J

    return-void
.end method

.method public declared-synchronized setExpiryTime(J)V
    .locals 0

    monitor-enter p0

    .line 205
    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 204
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastNode(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 236
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 235
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLastSaved(J)V
    .locals 0

    monitor-enter p0

    .line 200
    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 199
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setRowId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 180
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_rowId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 179
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVirtualHost(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 185
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_virtualHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 184
    monitor-exit p0

    throw p1
.end method

.method protected timeout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 329
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timing out session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->timeout()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session rowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_rowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",lastNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",accessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",lastAccessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastAccessedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",cookieSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_cookieSet:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",lastSaved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
