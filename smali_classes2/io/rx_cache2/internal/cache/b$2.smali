.class Lio/rx_cache2/internal/cache/b$2;
.super Ljava/lang/Object;
.source "EvictExpirableRecordsPersistence.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/cache/b;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/internal/cache/b;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/cache/b;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    invoke-static {v0}, Lio/rx_cache2/internal/cache/b;->a(Lio/rx_cache2/internal/cache/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Records can not be evicted because no one is expirable"

    .line 61
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 62
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    iget-object v0, v0, Lio/rx_cache2/internal/cache/b;->b:Lio/rx_cache2/internal/e;

    invoke-interface {v0}, Lio/rx_cache2/internal/e;->b()I

    move-result v0

    .line 68
    iget-object v1, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    invoke-static {v1, v0}, Lio/rx_cache2/internal/cache/b;->a(Lio/rx_cache2/internal/cache/b;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    iget-object v1, v1, Lio/rx_cache2/internal/cache/b;->b:Lio/rx_cache2/internal/e;

    invoke-interface {v1}, Lio/rx_cache2/internal/e;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    iget-object v4, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    invoke-static {v4, v0, v2}, Lio/rx_cache2/internal/cache/b;->a(Lio/rx_cache2/internal/cache/b;IF)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    iget-object v4, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    iget-object v4, v4, Lio/rx_cache2/internal/cache/b;->b:Lio/rx_cache2/internal/e;

    iget-object v5, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    invoke-static {v5}, Lio/rx_cache2/internal/cache/b;->b(Lio/rx_cache2/internal/cache/b;)Z

    move-result v5

    iget-object v6, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    invoke-static {v6}, Lio/rx_cache2/internal/cache/b;->c(Lio/rx_cache2/internal/cache/b;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;ZLjava/lang/String;)Lio/rx_cache2/internal/Record;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v4}, Lio/rx_cache2/internal/Record;->getExpirable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 85
    :cond_4
    iget-object v5, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    iget-object v5, v5, Lio/rx_cache2/internal/cache/b;->b:Lio/rx_cache2/internal/e;

    invoke-interface {v5, v3}, Lio/rx_cache2/internal/e;->a(Ljava/lang/String;)V

    .line 86
    invoke-interface {p1, v3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v4}, Lio/rx_cache2/internal/Record;->getSizeOnMb()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 91
    :cond_5
    :goto_1
    iget-object v1, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    iget-object v3, p0, Lio/rx_cache2/internal/cache/b$2;->a:Lio/rx_cache2/internal/cache/b;

    invoke-static {v3, v0, v2}, Lio/rx_cache2/internal/cache/b;->a(Lio/rx_cache2/internal/cache/b;IF)Z

    move-result v0

    invoke-static {v1, v0}, Lio/rx_cache2/internal/cache/b;->a(Lio/rx_cache2/internal/cache/b;Z)Z

    .line 92
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
