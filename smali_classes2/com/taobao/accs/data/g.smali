.class Lcom/taobao/accs/data/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Lcom/taobao/accs/data/e;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/e;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/taobao/accs/data/g;->e:Lcom/taobao/accs/data/e;

    iput-object p2, p0, Lcom/taobao/accs/data/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/accs/data/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/accs/data/g;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/taobao/accs/data/g;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 480
    invoke-static {}, Lcom/taobao/accs/data/e;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/taobao/accs/data/e;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MsgDistribute"

    const-string v1, "routing msg time out, try election"

    const/4 v2, 0x4

    .line 482
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dataId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/accs/data/g;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "serviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/taobao/accs/data/g;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    invoke-static {}, Lcom/taobao/accs/data/e;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/taobao/accs/data/g;->e:Lcom/taobao/accs/data/e;

    iget-object v1, p0, Lcom/taobao/accs/data/g;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/taobao/accs/data/e;->a(Lcom/taobao/accs/data/e;Landroid/content/Context;)V

    const-string v0, "accs"

    const-string v1, "ele_routing_rate"

    const-string v2, ""

    const-string v3, "timeout"

    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/accs/data/g;->d:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
