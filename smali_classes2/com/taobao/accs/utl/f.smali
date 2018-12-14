.class public Lcom/taobao/accs/utl/f;
.super Lcom/taobao/accs/utl/k;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/taobao/accs/utl/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 10
    invoke-static {}, Lcom/taobao/accs/utl/b;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/taobao/accs/utl/f;->a:Lcom/taobao/accs/utl/k;

    if-eqz v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/taobao/accs/utl/f;->a:Lcom/taobao/accs/utl/k;

    invoke-virtual {v0}, Lcom/taobao/accs/utl/k;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
