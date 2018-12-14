.class public Lio/rx_cache2/internal/cache/memory/apache/c$b;
.super Lio/rx_cache2/internal/cache/memory/apache/c$d;
.source "AbstractHashedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
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
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
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

    .line 882
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c$d;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 886
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$d;->b()Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 879
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$b;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
