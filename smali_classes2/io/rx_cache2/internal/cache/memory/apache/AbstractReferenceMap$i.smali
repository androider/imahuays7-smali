.class Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$i;
.super Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;
.source "AbstractReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap<",
            "*TV;>;)V"
        }
    .end annotation

    .line 887
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$i;->b()Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
