.class Lio/rx_cache2/internal/g$4;
.super Ljava/lang/Object;
.source "ProcessorProvidersBehaviour.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/g;->b(Lio/rx_cache2/a;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/rx_cache2/n;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/a;

.field final synthetic b:Lio/rx_cache2/internal/g;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lio/rx_cache2/internal/g$4;->b:Lio/rx_cache2/internal/g;

    iput-object p2, p0, Lio/rx_cache2/internal/g$4;->a:Lio/rx_cache2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/rx_cache2/n;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lio/rx_cache2/internal/g$4;->b:Lio/rx_cache2/internal/g;

    iget-object v1, p0, Lio/rx_cache2/internal/g$4;->a:Lio/rx_cache2/a;

    invoke-static {v0, v1, p1}, Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;Lio/rx_cache2/n;)Ljava/lang/Object;

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

    .line 102
    check-cast p1, Lio/rx_cache2/n;

    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/g$4;->a(Lio/rx_cache2/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
