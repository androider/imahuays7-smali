.class Lio/rx_cache2/internal/g$3;
.super Ljava/lang/Object;
.source "ProcessorProvidersBehaviour.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/a;)Lio/reactivex/Observable;
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
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/a;

.field final synthetic b:Lio/rx_cache2/internal/g;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lio/rx_cache2/internal/g$3;->b:Lio/rx_cache2/internal/g;

    iput-object p2, p0, Lio/rx_cache2/internal/g$3;->a:Lio/rx_cache2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/rx_cache2/internal/g$3;->b:Lio/rx_cache2/internal/g;

    invoke-static {v0}, Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/internal/g;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lio/rx_cache2/internal/g$3;->b:Lio/rx_cache2/internal/g;

    iget-object v1, p0, Lio/rx_cache2/internal/g$3;->a:Lio/rx_cache2/a;

    invoke-virtual {v0, v1}, Lio/rx_cache2/internal/g;->b(Lio/rx_cache2/a;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/g$3;->b:Lio/rx_cache2/internal/g;

    invoke-static {v0}, Lio/rx_cache2/internal/g;->b(Lio/rx_cache2/internal/g;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lio/rx_cache2/internal/g$3$1;

    invoke-direct {v1, p0}, Lio/rx_cache2/internal/g$3$1;-><init>(Lio/rx_cache2/internal/g$3;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 73
    invoke-virtual {p0}, Lio/rx_cache2/internal/g$3;->a()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
