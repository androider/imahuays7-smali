.class Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$c;
.super Lio/rx_cache2/internal/cache/memory/apache/c$a;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/c$a<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 512
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c$a;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    return-void
.end method


# virtual methods
.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 517
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$c;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$c;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$c;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 525
    new-instance v3, Lio/rx_cache2/internal/cache/memory/apache/f;

    invoke-direct {v3, v2}, Lio/rx_cache2/internal/cache/memory/apache/f;-><init>(Ljava/util/Map$Entry;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
