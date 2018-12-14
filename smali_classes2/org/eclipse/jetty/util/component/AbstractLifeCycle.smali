.class public abstract Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.super Ljava/lang/Object;
.source "AbstractLifeCycle.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/component/AbstractLifeCycle$AbstractLifeCycleListener;
    }
.end annotation


# static fields
.field public static final FAILED:Ljava/lang/String; = "FAILED"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final RUNNING:Ljava/lang/String; = "RUNNING"

.field public static final STARTED:Ljava/lang/String; = "STARTED"

.field public static final STARTING:Ljava/lang/String; = "STARTING"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final STOPPING:Ljava/lang/String; = "STOPPING"


# instance fields
.field private final __FAILED:I

.field private final __STARTED:I

.field private final __STARTING:I

.field private final __STOPPED:I

.field private final __STOPPING:I

.field protected final _listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/eclipse/jetty/util/component/LifeCycle$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final _lock:Ljava/lang/Object;

.field private volatile _state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__FAILED:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__STOPPED:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__STARTING:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__STARTED:I

    const/4 v1, 0x3

    iput v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->__STOPPING:I

    .line 43
    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getState(Lorg/eclipse/jetty/util/component/LifeCycle;)Ljava/lang/String;
    .locals 1

    .line 162
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "STARTING"

    return-object p0

    .line 163
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "STARTED"

    return-object p0

    .line 164
    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "STOPPING"

    return-object p0

    .line 165
    :cond_2
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStopped()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "STOPPED"

    return-object p0

    :cond_3
    const-string p0, "FAILED"

    return-object p0
.end method

.method private setFailed(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, -0x1

    .line 203
    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 204
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 206
    invoke-interface {v1, p0, p1}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleFailure(Lorg/eclipse/jetty/util/component/LifeCycle;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStarted()V
    .locals 4

    const/4 v0, 0x2

    .line 171
    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 172
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "STARTED {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 174
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStarted(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStarting()V
    .locals 5

    .line 179
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "starting {}"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iput v2, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 182
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStarting(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStopped()V
    .locals 5

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 196
    sget-object v1, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "{} {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "STOPPED"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 198
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStopped(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStopping()V
    .locals 4

    .line 187
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "stopping {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 188
    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 190
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStopping(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lorg/eclipse/jetty/util/component/LifeCycle$Listener;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 149
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "STOPPING"

    return-object v0

    :pswitch_1
    const-string v0, "STARTED"

    return-object v0

    :pswitch_2
    const-string v0, "STARTING"

    return-object v0

    :pswitch_3
    const-string v0, "STOPPED"

    return-object v0

    :pswitch_4
    const-string v0, "FAILED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isFailed()Z
    .locals 2

    .line 134
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 3

    .line 107
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isStarted()Z
    .locals 2

    .line 114
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarting()Z
    .locals 2

    .line 119
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStopped()Z
    .locals 1

    .line 129
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopping()Z
    .locals 2

    .line 124
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeLifeCycleListener(Lorg/eclipse/jetty/util/component/LifeCycle$Listener;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setStarting()V

    .line 64
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 65
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    monitor-exit v0

    return-void

    .line 62
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 74
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 75
    throw v1

    :catch_1
    move-exception v1

    .line 69
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 70
    throw v1

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_state:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setStopping()V

    .line 89
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 90
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setStopped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    monitor-exit v0

    return-void

    .line 87
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 99
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 100
    throw v1

    :catch_1
    move-exception v1

    .line 94
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->setFailed(Ljava/lang/Throwable;)V

    .line 95
    throw v1

    .line 102
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
