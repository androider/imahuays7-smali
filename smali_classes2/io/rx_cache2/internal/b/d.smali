.class final Lio/rx_cache2/internal/b/d;
.super Lio/rx_cache2/internal/b/a;
.source "GetCacheVersion.java"


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/e;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/b/a;-><init>(Lio/rx_cache2/internal/e;)V

    return-void
.end method


# virtual methods
.method a()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lio/rx_cache2/internal/b/d;->a:Lio/rx_cache2/internal/e;

    const-string v1, "key_cache_version"

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
