.class Lcom/taobao/accs/internal/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/c;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/c;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/taobao/accs/internal/j;->a:Lcom/taobao/accs/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 108
    invoke-static {}, Lcom/taobao/accs/internal/c;->e()V

    .line 109
    iget-object v0, p0, Lcom/taobao/accs/internal/j;->a:Lcom/taobao/accs/internal/c;

    iget-object v1, p0, Lcom/taobao/accs/internal/j;->a:Lcom/taobao/accs/internal/c;

    invoke-static {v1}, Lcom/taobao/accs/internal/c;->a(Lcom/taobao/accs/internal/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/accs/internal/c;->a(Lcom/taobao/accs/internal/c;Landroid/content/Context;)V

    .line 110
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v0

    const-string v1, "START"

    invoke-static {}, Lcom/taobao/accs/utl/b;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PROXY"

    const v4, 0x101d1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/taobao/accs/internal/j;->a:Lcom/taobao/accs/internal/c;

    invoke-static {v0}, Lcom/taobao/accs/internal/c;->a(Lcom/taobao/accs/internal/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->u(Landroid/content/Context;)J

    move-result-wide v0

    const-string v2, "ServiceImpl"

    const-string v3, "getServiceAliveTime"

    const/4 v5, 0x2

    .line 113
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "aliveTime"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x4e20

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const-string v2, "accs"

    const-string v3, "service_alive"

    const-string v5, ""

    const-wide/16 v6, 0x3e8

    .line 116
    div-long/2addr v0, v6

    long-to-double v0, v0

    invoke-static {v2, v3, v5, v0, v1}, Lcom/taobao/accs/utl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/j;->a:Lcom/taobao/accs/internal/c;

    invoke-static {v0}, Lcom/taobao/accs/internal/c;->a(Lcom/taobao/accs/internal/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "service_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 120
    invoke-static {}, Lcom/taobao/accs/utl/a;->a()Lcom/taobao/accs/utl/a;

    move-result-object v0

    const-string v1, "NOTIFY"

    iget-object v2, p0, Lcom/taobao/accs/internal/j;->a:Lcom/taobao/accs/internal/c;

    invoke-static {v2}, Lcom/taobao/accs/internal/c;->a(Lcom/taobao/accs/internal/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/accs/utl/b;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/taobao/accs/utl/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
