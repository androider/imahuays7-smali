.class Lio/rx_cache2/internal/g$2;
.super Ljava/lang/Object;
.source "ProcessorProvidersBehaviour.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/internal/g;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/g;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lio/rx_cache2/internal/g$2;->a:Lio/rx_cache2/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object p1, p0, Lio/rx_cache2/internal/g$2;->a:Lio/rx_cache2/internal/g;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/internal/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/g$2;->a(Ljava/lang/Integer;)V

    return-void
.end method
