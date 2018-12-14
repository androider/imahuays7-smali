.class public Lio/rx_cache2/internal/cache/memory/apache/c$c;
.super Ljava/lang/Object;
.source "AbstractHashedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected a:Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Ljava/lang/Object;

.field protected d:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;I",
            "Ljava/lang/Object;",
            "TV;)V"
        }
    .end annotation

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 1074
    iput p2, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->b:I

    .line 1075
    iput-object p3, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    .line 1076
    iput-object p4, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1104
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1107
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 1109
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1110
    :goto_0
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    sget-object v1, Lio/rx_cache2/internal/cache/memory/apache/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1084
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1115
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1116
    :goto_0
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->d:Ljava/lang/Object;

    .line 1095
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
