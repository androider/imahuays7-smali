.class final Lio/rx_cache2/internal/b/f;
.super Ljava/lang/Object;
.source "GetPendingMigrations.java"


# instance fields
.field private a:I

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
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/rx_cache2/internal/b/f;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/rx_cache2/internal/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/b/f;->b:Ljava/util/List;

    new-instance v1, Lio/rx_cache2/internal/b/f$1;

    invoke-direct {v1, p0}, Lio/rx_cache2/internal/b/f$1;-><init>(Lio/rx_cache2/internal/b/f;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v1, p0, Lio/rx_cache2/internal/b/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rx_cache2/l;

    .line 54
    iget v3, p0, Lio/rx_cache2/internal/b/f;->a:I

    invoke-virtual {v2}, Lio/rx_cache2/l;->a()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 41
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method a(ILjava/util/List;)Lio/rx_cache2/internal/b/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;)",
            "Lio/rx_cache2/internal/b/f;"
        }
    .end annotation

    .line 34
    iput p1, p0, Lio/rx_cache2/internal/b/f;->a:I

    .line 35
    iput-object p2, p0, Lio/rx_cache2/internal/b/f;->b:Ljava/util/List;

    return-object p0
.end method
