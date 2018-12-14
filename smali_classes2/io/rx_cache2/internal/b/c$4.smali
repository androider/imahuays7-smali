.class Lio/rx_cache2/internal/b/c$4;
.super Ljava/lang/Object;
.source "DoMigrations.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/b/c;->a()Lio/reactivex/Observable;
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
        "Ljava/util/List<",
        "Lio/rx_cache2/l;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/internal/b/c;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/b/c;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lio/rx_cache2/internal/b/c$4;->a:Lio/rx_cache2/internal/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Ljava/util/List<",
            "Lio/rx_cache2/l;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/rx_cache2/internal/b/c$4;->a:Lio/rx_cache2/internal/b/c;

    invoke-static {v0}, Lio/rx_cache2/internal/b/c;->e(Lio/rx_cache2/internal/b/c;)Lio/rx_cache2/internal/b/f;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lio/rx_cache2/internal/b/c$4;->a:Lio/rx_cache2/internal/b/c;

    invoke-static {v1}, Lio/rx_cache2/internal/b/c;->a(Lio/rx_cache2/internal/b/c;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/rx_cache2/internal/b/f;->a(ILjava/util/List;)Lio/rx_cache2/internal/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lio/rx_cache2/internal/b/f;->a()Lio/reactivex/Observable;

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

    .line 48
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/b/c$4;->a(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
