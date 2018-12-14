.class public Lio/rx_cache2/internal/cache/memory/apache/ReferenceMap;
.super Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1594ca03984908d7L


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 79
    sget-object v1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    sget-object v2, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->SOFT:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method public constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;)V
    .locals 6

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 97
    invoke-direct/range {v0 .. v5}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method public constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;IF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 137
    invoke-direct/range {v0 .. v5}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method public constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;IFZ)V
    .locals 0

    .line 160
    invoke-direct/range {p0 .. p5}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method public constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Z)V
    .locals 6

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 116
    invoke-direct/range {v0 .. v5}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 177
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/ReferenceMap;->a(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 169
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/ReferenceMap;->a(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
