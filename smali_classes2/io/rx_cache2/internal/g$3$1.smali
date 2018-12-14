.class Lio/rx_cache2/internal/g$3$1;
.super Ljava/lang/Object;
.source "ProcessorProvidersBehaviour.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/g$3;->a()Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/ObservableSource<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/internal/g$3;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/g$3;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lio/rx_cache2/internal/g$3$1;->a:Lio/rx_cache2/internal/g$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    iget-object p1, p0, Lio/rx_cache2/internal/g$3$1;->a:Lio/rx_cache2/internal/g$3;

    iget-object p1, p1, Lio/rx_cache2/internal/g$3;->b:Lio/rx_cache2/internal/g;

    iget-object v0, p0, Lio/rx_cache2/internal/g$3$1;->a:Lio/rx_cache2/internal/g$3;

    iget-object v0, v0, Lio/rx_cache2/internal/g$3;->a:Lio/rx_cache2/a;

    invoke-virtual {p1, v0}, Lio/rx_cache2/internal/g;->b(Lio/rx_cache2/a;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/g$3$1;->a(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
