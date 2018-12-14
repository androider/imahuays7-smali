.class public Lcom/taobao/accs/data/MsgDistributeService;
.super Landroid/app/Service;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 p2, 0x2

    const/4 p3, 0x0

    :try_start_0
    const-string v0, "MsgDistributeService"

    const-string v1, "onStartCommand"

    .line 34
    new-array v2, p2, [Ljava/lang/Object;

    const-string v3, "action"

    aput-object v3, v2, p3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.taobao.accs.intent.action.SEND"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reqdata"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const-string v1, "packageName"

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appKey"

    .line 38
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "configTag"

    .line 39
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/data/MsgDistributeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, p1}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/c;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcom/taobao/accs/data/MsgDistributeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1, p3}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/accs/data/MsgDistributeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/accs/data/e;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MsgDistributeService"

    const-string v1, "onStartCommand"

    .line 48
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, p3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return p2
.end method
