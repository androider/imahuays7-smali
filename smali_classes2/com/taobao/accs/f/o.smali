.class Lcom/taobao/accs/f/o;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/f;


# instance fields
.field final synthetic a:Lanet/channel/Session;

.field final synthetic b:Lanet/channel/e$a;

.field final synthetic c:Lcom/taobao/accs/f/l$a;


# direct methods
.method constructor <init>(Lcom/taobao/accs/f/l$a;Lanet/channel/Session;Lanet/channel/e$a;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/taobao/accs/f/o;->c:Lcom/taobao/accs/f/l$a;

    iput-object p2, p0, Lcom/taobao/accs/f/o;->a:Lanet/channel/Session;

    iput-object p3, p0, Lcom/taobao/accs/f/o;->b:Lanet/channel/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 503
    iget-object p2, p0, Lcom/taobao/accs/f/o;->c:Lcom/taobao/accs/f/l$a;

    invoke-static {p2}, Lcom/taobao/accs/f/l$a;->a(Lcom/taobao/accs/f/l$a;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "AUTH onFinish"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statusCode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "seq"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/taobao/accs/f/o;->a:Lanet/channel/Session;

    iget-object v2, v2, Lanet/channel/Session;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p2, p3, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iget-object p2, p0, Lcom/taobao/accs/f/o;->b:Lanet/channel/e$a;

    const-string p3, "onFinish auth fail"

    invoke-interface {p2, p1, p3}, Lanet/channel/e$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/taobao/accs/f/o;->c:Lcom/taobao/accs/f/l$a;

    invoke-static {v0}, Lcom/taobao/accs/f/l$a;->a(Lcom/taobao/accs/f/l$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTH"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "httpStatusCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "seq"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/taobao/accs/f/o;->a:Lanet/channel/Session;

    iget-object v3, v3, Lanet/channel/Session;->m:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 483
    iget-object p1, p0, Lcom/taobao/accs/f/o;->b:Lanet/channel/e$a;

    invoke-interface {p1}, Lanet/channel/e$a;->a()V

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/f/o;->b:Lanet/channel/e$a;

    const-string v1, "auth fail"

    invoke-interface {v0, p1, v1}, Lanet/channel/e$a;->a(ILjava/lang/String;)V

    .line 488
    :goto_0
    invoke-static {p2}, Lcom/taobao/accs/utl/b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "x-at"

    .line 489
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 491
    iget-object p2, p0, Lcom/taobao/accs/f/o;->c:Lcom/taobao/accs/f/l$a;

    invoke-static {p2}, Lcom/taobao/accs/f/l$a;->b(Lcom/taobao/accs/f/l$a;)Lcom/taobao/accs/f/c;

    move-result-object p2

    iput-object p1, p2, Lcom/taobao/accs/f/c;->k:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public a(Lanet/channel/c/a;Z)V
    .locals 0

    return-void
.end method
