.class Lio/rx_cache2/internal/b/c$2;
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
        "Ljava/util/List<",
        "Ljava/lang/Class;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/internal/b/c;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/b/c;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lio/rx_cache2/internal/b/c$2;->a:Lio/rx_cache2/internal/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)",
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

    .line 61
    iget-object v0, p0, Lio/rx_cache2/internal/b/c$2;->a:Lio/rx_cache2/internal/b/c;

    invoke-static {v0}, Lio/rx_cache2/internal/b/c;->c(Lio/rx_cache2/internal/b/c;)Lio/rx_cache2/internal/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rx_cache2/internal/b/b;->a(Ljava/util/List;)Lio/rx_cache2/internal/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lio/rx_cache2/internal/b/b;->a()Lio/reactivex/Observable;

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

    .line 59
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/b/c$2;->a(Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
