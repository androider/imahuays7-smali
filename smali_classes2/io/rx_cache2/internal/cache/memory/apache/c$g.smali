.class public Lio/rx_cache2/internal/cache/memory/apache/c$g;
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
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/c$d<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c<",
            "TK;*>;)V"
        }
    .end annotation

    .line 966
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c$d;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 970
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$d;->b()Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
