.class Lcom/taobao/accs/init/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Landroid/app/Application;

.field final synthetic c:Lcom/taobao/accs/init/Launcher_Login;


# direct methods
.method constructor <init>(Lcom/taobao/accs/init/Launcher_Login;Ljava/util/HashMap;Landroid/app/Application;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/taobao/accs/init/e;->c:Lcom/taobao/accs/init/Launcher_Login;

    iput-object p2, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/taobao/accs/init/e;->b:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v4, "envIndex"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 30
    iget-object v4, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v5, "onlineAppKey"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v1, :cond_0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v3, "preAppKey"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v3, "dailyAppkey"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_3
    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v3

    :goto_2
    :try_start_2
    const-string v4, "Launcher_Login"

    const-string v5, "login get param error"

    .line 37
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "Launcher_Login"

    const-string v3, "login get appkey null"

    .line 41
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "21646297"

    .line 46
    :cond_4
    sput-boolean v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mForceBindUser:Z

    .line 47
    iget-object v1, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v3, "userId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mUserId:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v3, "sid"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mSid:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/taobao/accs/init/e;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/accs/init/e;->a:Ljava/util/HashMap;

    const-string v4, "ttid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/e;

    invoke-static {v1, v0, v3, v4}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "Launcher_Login"

    const-string v3, "login"

    .line 54
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
