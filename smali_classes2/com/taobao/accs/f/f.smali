.class Lcom/taobao/accs/f/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/f/c;


# direct methods
.method constructor <init>(Lcom/taobao/accs/f/c;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/taobao/accs/f/f;->a:Lcom/taobao/accs/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/taobao/accs/f/f;->a:Lcom/taobao/accs/f/c;

    iget-object v0, v0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    invoke-virtual {v0}, Lcom/taobao/accs/data/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/taobao/accs/f/f;->a:Lcom/taobao/accs/f/c;

    invoke-virtual {v0}, Lcom/taobao/accs/f/c;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/f/f;->a:Lcom/taobao/accs/f/c;

    iget v2, v2, Lcom/taobao/accs/f/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "receive ping time out! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/taobao/accs/f/f;->a:Lcom/taobao/accs/f/c;

    iget-object v0, v0, Lcom/taobao/accs/f/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/f/h;->a(Landroid/content/Context;)Lcom/taobao/accs/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/f/h;->c()V

    .line 311
    iget-object v0, p0, Lcom/taobao/accs/f/f;->a:Lcom/taobao/accs/f/c;

    const-string v1, ""

    const-string v2, "receive ping timeout"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/f/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/taobao/accs/f/f;->a:Lcom/taobao/accs/f/c;

    iget-object v0, v0, Lcom/taobao/accs/f/c;->e:Lcom/taobao/accs/data/b;

    const/16 v1, -0xc

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/b;->a(I)V

    :cond_0
    return-void
.end method
