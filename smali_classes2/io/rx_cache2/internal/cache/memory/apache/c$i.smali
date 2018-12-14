.class public Lio/rx_cache2/internal/cache/memory/apache/c$i;
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
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/c$d<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


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

    .line 1043
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c$d;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

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

    .line 1047
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$d;->b()Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
