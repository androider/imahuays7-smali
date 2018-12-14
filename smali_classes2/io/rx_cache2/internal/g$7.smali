.class Lio/rx_cache2/internal/g$7;
.super Ljava/lang/Object;
.source "ProcessorProvidersBehaviour.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/g;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/internal/g;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/g;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lio/rx_cache2/internal/g$7;->a:Lio/rx_cache2/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lio/rx_cache2/internal/g$7;->a:Lio/rx_cache2/internal/g;

    invoke-static {v0}, Lio/rx_cache2/internal/g;->d(Lio/rx_cache2/internal/g;)Lio/rx_cache2/internal/cache/o;

    move-result-object v0

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/o;->a()V

    .line 182
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lio/rx_cache2/internal/g$7;->a()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
