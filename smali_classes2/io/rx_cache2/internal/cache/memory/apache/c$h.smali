.class public Lio/rx_cache2/internal/cache/memory/apache/c$h;
.super Ljava/util/AbstractCollection;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/rx_cache2/internal/cache/memory/apache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c<",
            "*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c<",
            "*TV;>;)V"
        }
    .end annotation

    .line 1011
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 1012
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$h;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1022
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$h;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1027
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$h;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$h;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1017
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$h;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v0

    return v0
.end method
