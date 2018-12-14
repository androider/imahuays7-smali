.class public abstract Lio/rx_cache2/internal/cache/memory/apache/b;
.super Lio/rx_cache2/internal/cache/memory/apache/a;
.source "AbstractEmptyMapIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/a<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/a;-><init>()V

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

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/a;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/a;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 25
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/a;->remove()V

    return-void
.end method
