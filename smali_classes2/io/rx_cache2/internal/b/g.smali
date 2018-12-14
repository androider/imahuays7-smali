.class final Lio/rx_cache2/internal/b/g;
.super Lio/rx_cache2/internal/b/a;
.source "UpgradeCacheVersion.java"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/e;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/b/a;-><init>(Lio/rx_cache2/internal/e;)V

    return-void
.end method


# virtual methods
.method a()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/rx_cache2/internal/b/g;->b:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rx_cache2/internal/b/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/b/g;->b:Ljava/util/List;

    iget-object v2, p0, Lio/rx_cache2/internal/b/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/l;

    .line 40
    iget-object v2, p0, Lio/rx_cache2/internal/b/g;->a:Lio/rx_cache2/internal/e;

    const-string v3, "key_cache_version"

    invoke-virtual {v0}, Lio/rx_cache2/l;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)V

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/List;)Lio/rx_cache2/internal/b/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;)",
            "Lio/rx_cache2/internal/b/g;"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lio/rx_cache2/internal/b/g;->b:Ljava/util/List;

    return-object p0
.end method
