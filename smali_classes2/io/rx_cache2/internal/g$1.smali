.class Lio/rx_cache2/internal/g$1;
.super Ljava/lang/Object;
.source "ProcessorProvidersBehaviour.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/internal/b/c;Lio/rx_cache2/internal/cache/d;)Lio/reactivex/Observable;
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
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/internal/cache/d;

.field final synthetic b:Lio/rx_cache2/internal/g;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/internal/cache/d;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lio/rx_cache2/internal/g$1;->b:Lio/rx_cache2/internal/g;

    iput-object p2, p0, Lio/rx_cache2/internal/g$1;->a:Lio/rx_cache2/internal/cache/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lio/rx_cache2/internal/g$1;->a:Lio/rx_cache2/internal/cache/d;

    invoke-virtual {p1}, Lio/rx_cache2/internal/cache/d;->a()Lio/reactivex/Observable;

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

    .line 55
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/g$1;->a(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
