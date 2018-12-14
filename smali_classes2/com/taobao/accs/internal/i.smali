.class Lcom/taobao/accs/internal/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/internal/e;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/e;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/taobao/accs/internal/i;->a:Lcom/taobao/accs/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ElectionServiceImpl"

    const-string v1, "serverElection time out"

    const/4 v2, 0x0

    .line 694
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/taobao/accs/internal/i;->a:Lcom/taobao/accs/internal/e;

    const/4 v1, 0x0

    const/16 v2, -0x9

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/internal/e;->a(Lcom/taobao/accs/internal/e;[BI)V

    return-void
.end method
