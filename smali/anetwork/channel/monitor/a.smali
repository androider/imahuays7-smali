.class public Lanetwork/channel/monitor/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanetwork/channel/monitor/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    const-class v0, Lanetwork/channel/monitor/a;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lanetwork/channel/monitor/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Lanet/channel/monitor/c;->a()Lanet/channel/monitor/c;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/monitor/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method

.method public static b()Lanet/channel/monitor/NetworkSpeed;
    .locals 6

    .line 79
    sget-object v0, Lanet/channel/monitor/NetworkSpeed;->Fast:Lanet/channel/monitor/NetworkSpeed;

    .line 81
    :try_start_0
    invoke-static {}, Lanet/channel/monitor/c;->a()Lanet/channel/monitor/c;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/monitor/c;->b()I

    move-result v1

    .line 82
    invoke-static {v1}, Lanet/channel/monitor/NetworkSpeed;->valueOfCode(I)Lanet/channel/monitor/NetworkSpeed;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "anet.Monitor"

    const-string v3, "getNetworkSpeed failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 84
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0
.end method
