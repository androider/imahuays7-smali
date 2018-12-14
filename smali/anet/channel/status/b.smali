.class final Lanet/channel/status/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;


# direct methods
.method constructor <init>(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lanet/channel/status/b;->a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 79
    :try_start_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->l()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/status/NetworkStatusHelper$a;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    iget-object v4, p0, Lanet/channel/status/b;->a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-interface {v1, v4}, Lanet/channel/status/NetworkStatusHelper$a;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v6, v4, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v6, v2

    if-lez v4, :cond_0

    const-string v2, "awcn.NetworkStatusHelper"

    const-string v3, "call back cost too much time"

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 83
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "listener"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method
