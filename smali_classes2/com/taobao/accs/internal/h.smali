.class Lcom/taobao/accs/internal/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/e;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/e;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ElectionServiceImpl"

    const-string v1, "time out, onReportComplete"

    const/4 v2, 0x2

    .line 637
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pkgs"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/e;

    invoke-static {v3}, Lcom/taobao/accs/internal/e;->c(Lcom/taobao/accs/internal/e;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/taobao/accs/internal/h;->a:Lcom/taobao/accs/internal/e;

    invoke-static {v0}, Lcom/taobao/accs/internal/e;->d(Lcom/taobao/accs/internal/e;)V

    return-void
.end method
