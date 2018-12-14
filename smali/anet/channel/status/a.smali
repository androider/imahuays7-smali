.class final Lanet/channel/status/a;
.super Landroid/content/BroadcastReceiver;
.source "Taobao"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    .line 75
    invoke-static {v0}, Lanet/channel/h/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "awcn.NetworkStatusMonitor"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p2, v1, v2}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    new-instance p2, Lanet/channel/status/d;

    invoke-direct {p2, p0, p1}, Lanet/channel/status/d;-><init>(Lanet/channel/status/a;Landroid/content/Context;)V

    invoke-static {p2}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
