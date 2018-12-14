.class Lcom/taobao/accs/f/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/taobao/accs/f/c;


# direct methods
.method constructor <init>(Lcom/taobao/accs/f/c;Landroid/content/Context;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/taobao/accs/f/g;->b:Lcom/taobao/accs/f/c;

    iput-object p2, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.START_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appKey"

    .line 408
    iget-object v2, p0, Lcom/taobao/accs/f/g;->b:Lcom/taobao/accs/f/c;

    invoke-virtual {v2}, Lcom/taobao/accs/f/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ttid"

    .line 409
    iget-object v2, p0, Lcom/taobao/accs/f/g;->b:Lcom/taobao/accs/f/c;

    iget-object v2, v2, Lcom/taobao/accs/f/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    .line 410
    iget-object v2, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_sercet"

    .line 411
    iget-object v2, p0, Lcom/taobao/accs/f/g;->b:Lcom/taobao/accs/f/c;

    iget-object v2, v2, Lcom/taobao/accs/f/c;->i:Lcom/taobao/accs/b;

    invoke-virtual {v2}, Lcom/taobao/accs/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mode"

    .line 412
    sget v2, Lcom/taobao/accs/b;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "agoo_app_key"

    .line 413
    iget-object v2, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "configTag"

    .line 414
    iget-object v2, p0, Lcom/taobao/accs/f/g;->b:Lcom/taobao/accs/f/c;

    iget-object v2, v2, Lcom/taobao/accs/f/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org.agoo.android.intent.action.REPORT"

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    iget-object v1, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/accs/client/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/taobao/accs/f/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
