.class public Lorg/eclipse/jetty/server/session/HashSessionManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.source "HashSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    }
.end annotation


# static fields
.field private static __id:I

.field static final __log:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _deleteUnrestorableSessions:Z

.field _idleSavePeriodMs:J

.field private _lazyLoad:Z

.field _savePeriodMs:J

.field private _saveTask:Ljava/util/TimerTask;

.field _scavengePeriodMs:J

.field protected final _sessions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/session/HashedSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _sessionsLoaded:Z

.field _storeDir:Ljava/io/File;

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;

.field private _timerStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    const-wide/16 v1, 0x7530

    .line 67
    iput-wide v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    const-wide/16 v1, 0x0

    .line 68
    iput-wide v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    .line 69
    iput-wide v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    .line 72
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    .line 73
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    .line 74
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    return-void
.end method


# virtual methods
.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
    .locals 2

    .line 353
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lorg/eclipse/jetty/server/session/HashedSession;

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStart()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 95
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "org.eclipse.jetty.server.session.timer"

    .line 97
    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 101
    new-instance v1, Ljava/util/Timer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HashSessionScavenger-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lorg/eclipse/jetty/server/session/HashSessionManager;->__id:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lorg/eclipse/jetty/server/session/HashSessionManager;->__id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->getScavengePeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-nez v0, :cond_3

    .line 112
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSessions()V

    .line 115
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->getSavePeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setSavePeriod(I)V

    return-void
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 131
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 133
    :cond_1
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 134
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 136
    :cond_2
    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStop()V

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void

    :catchall_0
    move-exception v0

    .line 137
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIdleSavePeriod()I
    .locals 5

    .line 175
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 178
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSavePeriod()I
    .locals 5

    .line 250
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getScavengePeriod()I
    .locals 4

    .line 152
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 5

    .line 361
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    if-nez v0, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 369
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 373
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 377
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    if-nez v0, :cond_2

    .line 379
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-eqz v2, :cond_2

    .line 380
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return-object v1

    .line 384
    :cond_3
    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    .line 385
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->deIdle()V

    :cond_4
    return-object v0
.end method

.method public getSessions()I
    .locals 4

    .line 160
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessions()I

    move-result v0

    .line 161
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 164
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public getStoreDirectory()Ljava/io/File;
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    return-object v0
.end method

.method protected invalidateSessions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v1, 0x64

    .line 397
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    .line 400
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopping()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/HashedSession;

    const/4 v3, 0x0

    .line 405
    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V

    .line 406
    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/server/session/HashSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    goto :goto_1

    .line 411
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 412
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/HashedSession;->invalidate()V

    goto :goto_2

    .line 416
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isDeleteUnrestorableSessions()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    return v0
.end method

.method public isLazyLoad()Z
    .locals 1

    .line 463
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    return v0
.end method

.method protected newSession(JJLjava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 8

    .line 430
    new-instance v7, Lorg/eclipse/jetty/server/session/HashedSession;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/HashedSession;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;JJLjava/lang/String;)V

    return-object v7
.end method

.method protected newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1

    .line 424
    new-instance v0, Lorg/eclipse/jetty/server/session/HashedSession;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/session/HashedSession;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method protected removeSession(Ljava/lang/String;)Z
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 574
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 575
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 576
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 577
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 578
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-nez p2, :cond_0

    move-object v1, p0

    .line 581
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/server/session/HashSessionManager;->newSession(JJLjava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 582
    :cond_0
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/session/HashedSession;->setRequests(I)V

    .line 583
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-lez p1, :cond_2

    .line 586
    new-instance v1, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 591
    :try_start_1
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 593
    invoke-virtual {p2, v3, v4}, Lorg/eclipse/jetty/server/session/HashedSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 598
    :try_start_2
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw p1

    :cond_1
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 605
    :cond_2
    invoke-static {v0}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    return-object p2

    :catchall_1
    move-exception p1

    invoke-static {v0}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw p1
.end method

.method protected declared-synchronized restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;
    .locals 5

    monitor-enter p0

    .line 504
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 510
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    :try_start_2
    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;

    move-result-object v3

    const/4 v4, 0x0

    .line 514
    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jetty/server/session/HashSessionManager;->addSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 515
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/HashedSession;->didActivate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 525
    :try_start_3
    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 540
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_2

    .line 525
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 540
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1

    :catch_1
    move-exception v3

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 525
    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    :cond_3
    if-eqz v3, :cond_1

    .line 529
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isDeleteUnrestorableSessions()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 531
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 532
    sget-object v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting file for unrestorable session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 536
    :cond_4
    sget-object v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem restoring session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 543
    :goto_2
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    .line 503
    monitor-exit p0

    throw p1
.end method

.method public restoreSessions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    .line 483
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 490
    sget-object v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore Sessions: Cannot read from Session storage directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 495
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 497
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public saveSessions(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_1

    .line 556
    sget-object p1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to save Sessions: Session persistence storage directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not writeable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 560
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    const/4 v1, 0x1

    .line 561
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected scavenge()V
    .locals 14

    .line 301
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopping()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 304
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 308
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 312
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 314
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 317
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/HashedSession;->getMaxInactiveInterval()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    .line 318
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    add-long v12, v10, v6

    cmp-long v6, v12, v2

    if-gez v6, :cond_3

    .line 323
    :try_start_1
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/HashedSession;->timeout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 327
    :try_start_2
    sget-object v6, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Problem scavenging sessions"

    invoke-interface {v6, v7, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 330
    :cond_3
    iget-wide v6, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    add-long v10, v6, v8

    cmp-long v6, v10, v2

    if-gez v6, :cond_2

    .line 334
    :try_start_3
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/HashedSession;->idle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v6

    .line 338
    :try_start_4
    sget-object v7, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem idling session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/HashedSession;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v2

    :cond_5
    :goto_1
    return-void
.end method

.method public setDeleteUnrestorableSessions(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    return-void
.end method

.method public setIdleSavePeriod(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 192
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    return-void
.end method

.method public setLazyLoad(Z)V
    .locals 0

    .line 457
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 6

    .line 199
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->setMaxInactiveInterval(I)V

    .line 200
    iget p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    if-lez p1, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    iget p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 201
    iget p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    add-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0xa

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    :cond_0
    return-void
.end method

.method public setSavePeriod(I)V
    .locals 6

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    move-wide v0, v2

    .line 213
    :cond_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    .line 215
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz p1, :cond_3

    .line 217
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 221
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 223
    new-instance p1, Lorg/eclipse/jetty/server/session/HashSessionManager$1;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/server/session/HashSessionManager$1;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V

    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 240
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public setScavengePeriod(I)V
    .locals 8

    if-nez p1, :cond_0

    const/16 p1, 0x3c

    .line 265
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long p1, v2, v6

    if-lez p1, :cond_1

    move-wide v2, v6

    :cond_1
    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    move-wide v2, v4

    .line 272
    :cond_2
    iput-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 274
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz p1, :cond_5

    cmp-long p1, v2, v0

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-nez p1, :cond_5

    .line 276
    :cond_3
    monitor-enter p0

    .line 278
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz p1, :cond_4

    .line 279
    iget-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 280
    :cond_4
    new-instance p1, Lorg/eclipse/jetty/server/session/HashSessionManager$2;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/server/session/HashSessionManager$2;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V

    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 289
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public setStoreDirectory(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    return-void
.end method
