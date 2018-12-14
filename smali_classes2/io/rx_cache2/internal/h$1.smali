.class Lio/rx_cache2/internal/h$1;
.super Ljava/lang/Object;
.source "ProxyProviders.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/h;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
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
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Lio/rx_cache2/internal/h;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/h;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lio/rx_cache2/internal/h$1;->c:Lio/rx_cache2/internal/h;

    iput-object p2, p0, Lio/rx_cache2/internal/h$1;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lio/rx_cache2/internal/h$1;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/rx_cache2/internal/h$1;->c:Lio/rx_cache2/internal/h;

    .line 77
    invoke-static {v0}, Lio/rx_cache2/internal/h;->b(Lio/rx_cache2/internal/h;)Lio/rx_cache2/internal/f;

    move-result-object v0

    iget-object v1, p0, Lio/rx_cache2/internal/h$1;->c:Lio/rx_cache2/internal/h;

    invoke-static {v1}, Lio/rx_cache2/internal/h;->a(Lio/rx_cache2/internal/h;)Lio/rx_cache2/internal/i;

    move-result-object v1

    iget-object v2, p0, Lio/rx_cache2/internal/h$1;->a:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lio/rx_cache2/internal/h$1;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/rx_cache2/internal/i;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lio/rx_cache2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rx_cache2/internal/f;->a(Lio/rx_cache2/a;)Lio/reactivex/Observable;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lio/rx_cache2/internal/h$1;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 80
    const-class v2, Lio/reactivex/Observable;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    const-class v2, Lio/reactivex/Single;

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lio/reactivex/Single;->fromObservable(Lio/reactivex/ObservableSource;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    const-class v2, Lio/reactivex/Maybe;

    if-ne v1, v2, :cond_2

    .line 85
    invoke-static {v0}, Lio/reactivex/Single;->fromObservable(Lio/reactivex/ObservableSource;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Maybe;->fromSingle(Lio/reactivex/SingleSource;)Lio/reactivex/Maybe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 88
    :cond_2
    iget-object v1, p0, Lio/rx_cache2/internal/h$1;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/reactivex/Flowable;

    if-ne v1, v2, :cond_3

    .line 89
    sget-object v1, Lio/reactivex/BackpressureStrategy;->MISSING:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/rx_cache2/internal/h$1;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needs to return one of the next reactive types: observable, single, maybe or flowable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lio/rx_cache2/internal/h$1;->a()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
