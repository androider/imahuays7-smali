.class public Lio/rx_cache2/internal/cache/memory/apache/c$f;
.super Ljava/util/AbstractSet;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/rx_cache2/internal/cache/memory/apache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c<",
            "TK;*>;"
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
            "TK;*>;)V"
        }
    .end annotation

    .line 927
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 928
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$f;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 938
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$f;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 943
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$f;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$f;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 948
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$f;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 949
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$f;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v1, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public size()I
    .locals 1

    .line 933
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$f;->a:Lio/rx_cache2/internal/cache/memory/apache/c;

    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v0

    return v0
.end method
