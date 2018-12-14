.class public Lcom/mh/movie/core/andserver/b;
.super Landroid/content/BroadcastReceiver;
.source "ServerManager.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/mh/movie/core/andserver/b;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/andserver/CoreService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/mh/movie/core/andserver/b;->b:Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x4

    .line 56
    invoke-static {p0, v0}, Lcom/mh/movie/core/andserver/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/andserver/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mh.movie.core.receiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CMD_KEY"

    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "MESSAGE_KEY"

    .line 66
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-static {p0, v0, p1}, Lcom/mh/movie/core/andserver/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 47
    invoke-static {p0, v0, p1}, Lcom/mh/movie/core/andserver/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mh.movie.core.receiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/andserver/b;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    invoke-virtual {v1, p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/andserver/b;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    iget-object v1, p0, Lcom/mh/movie/core/andserver/b;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public c()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/andserver/b;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mh.movie.core.receiver"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CMD_KEY"

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "MESSAGE_KEY"

    .line 116
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p1, "MESSAGE_KEY"

    .line 108
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/mh/movie/core/andserver/b;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    instance-of p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    if-eqz p2, :cond_0

    .line 110
    iget-object p2, p0, Lcom/mh/movie/core/andserver/b;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
