.class public final Lio/rx_cache2/internal/b/b;
.super Ljava/lang/Object;
.source "DeleteRecordMatchingClassName.java"


# instance fields
.field private final a:Lio/rx_cache2/internal/e;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/e;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/rx_cache2/internal/b/b;->a:Lio/rx_cache2/internal/e;

    .line 30
    iput-object p2, p0, Lio/rx_cache2/internal/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lio/rx_cache2/internal/Record;)Z
    .locals 2

    .line 59
    invoke-virtual {p1}, Lio/rx_cache2/internal/Record;->getDataClassName()Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lio/rx_cache2/internal/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/rx_cache2/internal/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/b/b;->a:Lio/rx_cache2/internal/e;

    invoke-interface {v0}, Lio/rx_cache2/internal/e;->a()Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lio/rx_cache2/internal/b/b;->a:Lio/rx_cache2/internal/e;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/rx_cache2/internal/b/b;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;ZLjava/lang/String;)Lio/rx_cache2/internal/Record;

    move-result-object v3

    if-nez v3, :cond_2

    .line 47
    iget-object v3, p0, Lio/rx_cache2/internal/b/b;->a:Lio/rx_cache2/internal/e;

    iget-object v4, p0, Lio/rx_cache2/internal/b/b;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v1, v4}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;ZLjava/lang/String;)Lio/rx_cache2/internal/Record;

    move-result-object v3

    .line 50
    :cond_2
    invoke-direct {p0, v3}, Lio/rx_cache2/internal/b/b;->a(Lio/rx_cache2/internal/Record;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    iget-object v3, p0, Lio/rx_cache2/internal/b/b;->a:Lio/rx_cache2/internal/e;

    invoke-interface {v3, v2}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Lio/rx_cache2/internal/b/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)",
            "Lio/rx_cache2/internal/b/b;"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lio/rx_cache2/internal/b/b;->c:Ljava/util/List;

    return-object p0
.end method
