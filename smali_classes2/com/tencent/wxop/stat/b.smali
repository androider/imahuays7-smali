.class Lcom/tencent/wxop/stat/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/a;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/b;->a:Lcom/tencent/wxop/stat/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/wxop/stat/b;->a:Lcom/tencent/wxop/stat/a;

    invoke-static {p1}, Lcom/tencent/wxop/stat/a;->a(Lcom/tencent/wxop/stat/a;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wxop/stat/b;->a:Lcom/tencent/wxop/stat/a;

    invoke-static {p1}, Lcom/tencent/wxop/stat/a;->a(Lcom/tencent/wxop/stat/a;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    new-instance p2, Lcom/tencent/wxop/stat/c;

    invoke-direct {p2, p0}, Lcom/tencent/wxop/stat/c;-><init>(Lcom/tencent/wxop/stat/b;)V

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
