.class public Lcom/taobao/accs/f/i;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/taobao/accs/f/i;->a:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/f/i;->b:Ljava/util/List;

    .line 31
    invoke-static {}, Lanet/channel/strategy/a/c;->a()Lanet/channel/strategy/a/c;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/f/j;

    invoke-direct {v1, p0}, Lcom/taobao/accs/f/j;-><init>(Lcom/taobao/accs/f/i;)V

    invoke-virtual {v0, v1}, Lanet/channel/strategy/a/c;->a(Lanet/channel/strategy/a/c$a;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/taobao/accs/f/i;->a(Ljava/lang/String;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lanet/channel/strategy/c;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/accs/f/i;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/f/i;->a(Ljava/util/List;)Lanet/channel/strategy/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Lanet/channel/strategy/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;)",
            "Lanet/channel/strategy/c;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget v1, p0, Lcom/taobao/accs/f/i;->a:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/taobao/accs/f/i;->a:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 77
    :cond_1
    iput v0, p0, Lcom/taobao/accs/f/i;->a:I

    .line 80
    :cond_2
    iget v0, p0, Lcom/taobao/accs/f/i;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/c;

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "HttpDnsProvider"

    const-string v1, "strategys null or 0"

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/c;",
            ">;"
        }
    .end annotation

    .line 47
    iget v0, p0, Lcom/taobao/accs/f/i;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/f/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    :cond_0
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lanet/channel/strategy/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/taobao/accs/f/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/c;

    .line 53
    invoke-interface {v0}, Lanet/channel/strategy/c;->d()Lanet/channel/strategy/ConnProtocol;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/entity/ConnType;->a(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->d()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v2

    sget-object v3, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/taobao/accs/f/i;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/taobao/accs/f/i;->b:Ljava/util/List;

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 90
    iget v0, p0, Lcom/taobao/accs/f/i;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/f/i;->a:I

    .line 91
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HttpDnsProvider"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStrategyPos StrategyPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/accs/f/i;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-static {}, Lanet/channel/strategy/h;->a()Lanet/channel/strategy/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lanet/channel/strategy/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/taobao/accs/f/i;->a:I

    return v0
.end method
