.class public Lcom/taobao/accs/init/Launcher_CrossActivityStopped;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 23
    :try_start_0
    sget-object p2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Launcher_CrossActivityStopped"

    const-string v0, "onStopped"

    .line 24
    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-static {}, Lanet/channel/h/b;->c()V

    .line 29
    sget-object p2, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    sget-boolean p2, Lcom/taobao/accs/init/Launcher_InitAccs;->mIsInited:Z

    if-eqz p2, :cond_3

    .line 34
    new-instance p2, Lcom/taobao/accs/init/b;

    invoke-direct {p2, p0}, Lcom/taobao/accs/init/b;-><init>(Lcom/taobao/accs/init/Launcher_CrossActivityStopped;)V

    invoke-static {p2}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "Launcher_CrossActivityStopped"

    const-string v0, "params null!!!"

    const/4 v1, 0x4

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "appkey"

    aput-object v2, v1, p1

    const/4 v2, 0x1

    sget-object v3, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "context"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string v0, "Launcher_CrossActivityStopped"

    const-string v1, "onStoped"

    .line 45
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p2, p1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 46
    invoke-static {p2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
