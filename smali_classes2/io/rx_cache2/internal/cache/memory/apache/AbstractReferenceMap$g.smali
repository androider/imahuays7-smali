.class Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$g;
.super Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;
.source "AbstractReferenceMap.java"

# interfaces
.implements Lio/rx_cache2/internal/cache/memory/apache/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a<",
        "TK;TV;>;",
        "Lio/rx_cache2/internal/cache/memory/apache/j<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 902
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 918
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$g;->c()Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 920
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_0
    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 906
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$g;->b()Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
