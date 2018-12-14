.class Lcom/taobao/accs/internal/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/taobao/accs/internal/e;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/e;Landroid/content/Context;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/taobao/accs/internal/g;->b:Lcom/taobao/accs/internal/e;

    iput-object p2, p0, Lcom/taobao/accs/internal/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/g;->b:Lcom/taobao/accs/internal/e;

    invoke-static {v1}, Lcom/taobao/accs/internal/e;->b(Lcom/taobao/accs/internal/e;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 552
    sput-boolean v1, Lcom/taobao/accs/a/a;->c:Z

    const-string v1, "ElectionServiceImpl"

    const-string v2, "wait app election time out"

    .line 553
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 555
    iget-object v2, p0, Lcom/taobao/accs/internal/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v2, p0, Lcom/taobao/accs/internal/g;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ElectionServiceImpl"

    const-string v3, "mSelectAppTimeOutTask"

    .line 559
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
