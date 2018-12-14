.class public final Lio/rx_cache2/internal/cache/d;
.super Lio/rx_cache2/internal/cache/a;
.source "EvictExpiredRecordsPersistence.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final c:Lio/rx_cache2/internal/cache/i;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;Lio/rx_cache2/internal/cache/i;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lio/rx_cache2/internal/cache/a;-><init>(Lio/rx_cache2/internal/d;Lio/rx_cache2/internal/e;)V

    .line 35
    iput-object p3, p0, Lio/rx_cache2/internal/cache/d;->c:Lio/rx_cache2/internal/cache/i;

    .line 36
    iput-object p4, p0, Lio/rx_cache2/internal/cache/d;->d:Ljava/lang/String;

    return-void
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

    .line 40
    iget-object v0, p0, Lio/rx_cache2/internal/cache/d;->b:Lio/rx_cache2/internal/e;

    invoke-interface {v0}, Lio/rx_cache2/internal/e;->a()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lio/rx_cache2/internal/cache/d;->b:Lio/rx_cache2/internal/e;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/rx_cache2/internal/cache/d;->d:Ljava/lang/String;

    invoke-interface {v3, v1, v4, v5}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;ZLjava/lang/String;)Lio/rx_cache2/internal/Record;

    move-result-object v3

    if-nez v3, :cond_1

    .line 45
    iget-object v4, p0, Lio/rx_cache2/internal/cache/d;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lio/rx_cache2/internal/cache/d;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 46
    iget-object v3, p0, Lio/rx_cache2/internal/cache/d;->b:Lio/rx_cache2/internal/e;

    iget-object v4, p0, Lio/rx_cache2/internal/cache/d;->d:Ljava/lang/String;

    invoke-interface {v3, v1, v2, v4}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;ZLjava/lang/String;)Lio/rx_cache2/internal/Record;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_0

    .line 49
    iget-object v2, p0, Lio/rx_cache2/internal/cache/d;->c:Lio/rx_cache2/internal/cache/i;

    invoke-virtual {v2, v3}, Lio/rx_cache2/internal/cache/i;->a(Lio/rx_cache2/internal/Record;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lio/rx_cache2/internal/cache/d;->b:Lio/rx_cache2/internal/e;

    invoke-interface {v2, v1}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
