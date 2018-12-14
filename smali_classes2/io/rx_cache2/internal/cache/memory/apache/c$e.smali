.class public Lio/rx_cache2/internal/cache/memory/apache/c$e;
.super Lio/rx_cache2/internal/cache/memory/apache/c$d;
.source "AbstractHashedMap.java"

# interfaces
.implements Lio/rx_cache2/internal/cache/memory/apache/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/c$d<",
        "TK;TV;>;",
        "Lio/rx_cache2/internal/cache/memory/apache/j<",
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

    .line 764
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c$d;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

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

    .line 780
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$e;->c()Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
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

    .line 768
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$d;->b()Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
