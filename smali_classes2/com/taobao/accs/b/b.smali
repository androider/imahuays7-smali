.class Lcom/taobao/accs/b/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/b/a;


# direct methods
.method constructor <init>(Lcom/taobao/accs/b/a;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/taobao/accs/b/b;->a:Lcom/taobao/accs/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "AntiBrush"

    const-string v1, "anti bursh timeout"

    const/4 v2, 0x0

    .line 59
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/taobao/accs/b/b;->a:Lcom/taobao/accs/b/a;

    invoke-static {v0}, Lcom/taobao/accs/b/a;->a(Lcom/taobao/accs/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/accs/b/a;->a(Landroid/content/Context;Z)V

    return-void
.end method
