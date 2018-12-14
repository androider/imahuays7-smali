.class public abstract Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
.super Lio/rx_cache2/internal/cache/memory/apache/c;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$k;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$j;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$g;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$i;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$f;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$d;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$a;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$h;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$e;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$c;,
        Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private j:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

.field private k:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

.field private l:Z

.field private transient m:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;IFZ)V
    .locals 0

    .line 167
    invoke-direct {p0, p3, p4}, Lio/rx_cache2/internal/cache/memory/apache/c;-><init>(IF)V

    .line 168
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->j:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    .line 169
    iput-object p2, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->k:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    .line 170
    iput-boolean p5, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->l:Z

    return-void
.end method

.method static synthetic a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;
    .locals 0

    .line 81
    iget-object p0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->j:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    return-object p0
.end method

.method static synthetic b(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;
    .locals 0

    .line 81
    iget-object p0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->k:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    return-object p0
.end method

.method static synthetic c(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 81
    iget-object p0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->m:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method static synthetic d(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->l:Z

    return p0
.end method


# virtual methods
.method protected synthetic a(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 1

    .line 178
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->m:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method protected a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1032
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->resolve(I)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->j:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    .line 1033
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->resolve(I)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->k:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    .line 1034
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->l:Z

    .line 1035
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b:F

    .line 1036
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1037
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a()V

    .line 1038
    new-array v0, v0, [Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 1040
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1047
    iget-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length p1, p1

    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b:F

    invoke-virtual {p0, p1, v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a(IF)I

    move-result p1

    iput p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->e:I

    return-void

    .line 1044
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1045
    invoke-virtual {p0, v0, v1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->j:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    iget v0, v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->value:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 998
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->k:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    iget v0, v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->value:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 999
    iget-boolean v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->l:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1000
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 1001
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1002
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->mapIterator()Lio/rx_cache2/internal/cache/memory/apache/j;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lio/rx_cache2/internal/cache/memory/apache/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    invoke-interface {v0}, Lio/rx_cache2/internal/cache/memory/apache/j;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1004
    invoke-interface {v0}, Lio/rx_cache2/internal/cache/memory/apache/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1006
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/ref/Reference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)V"
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 396
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a(II)I

    move-result v0

    .line 398
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v2, :cond_2

    .line 400
    move-object v3, v2

    check-cast v3, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    invoke-virtual {v3, p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->a(Ljava/lang/ref/Reference;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    .line 402
    iget-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iget-object v1, v2, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    aput-object v1, p1, v0

    goto :goto_1

    .line 404
    :cond_0
    iget-object p1, v2, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iput-object p1, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 406
    :goto_1
    iget p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->c:I

    return-void

    .line 410
    :cond_1
    iget-object v1, v2, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 456
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->j:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    sget-object v1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/ref/Reference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    if-eq p1, p2, :cond_2

    .line 457
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method protected b(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;ITK;TV;)",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 472
    new-instance v6, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected c(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 440
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    xor-int/2addr p1, v0

    return p1
.end method

.method protected c(Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 427
    :cond_0
    invoke-super {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->c(Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object p1

    return-object p1
.end method

.method protected c()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 482
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$d;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$d;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 294
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->clear()V

    .line 295
    :goto_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->m:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->g()V

    .line 213
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->c(Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 217
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 228
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->g()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 232
    :cond_0
    invoke-super {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 492
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$f;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$f;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected e()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 502
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$i;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$i;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->g:Lio/rx_cache2/internal/cache/memory/apache/c$a;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$c;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$c;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->g:Lio/rx_cache2/internal/cache/memory/apache/c$a;

    .line 322
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->g:Lio/rx_cache2/internal/cache/memory/apache/c$a;

    return-object v0
.end method

.method protected g()V
    .locals 0

    .line 358
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->i()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->g()V

    .line 244
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->c(Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected h()V
    .locals 0

    .line 367
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->i()V

    return-void
.end method

.method protected i()V
    .locals 1

    .line 379
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->m:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0, v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a(Ljava/lang/ref/Reference;)V

    .line 382
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->m:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->g()V

    .line 201
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->h:Lio/rx_cache2/internal/cache/memory/apache/c$f;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$e;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$e;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->h:Lio/rx_cache2/internal/cache/memory/apache/c$f;

    .line 335
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->h:Lio/rx_cache2/internal/cache/memory/apache/c$f;

    return-object v0
.end method

.method public mapIterator()Lio/rx_cache2/internal/cache/memory/apache/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rx_cache2/internal/cache/memory/apache/j<",
            "TK;TV;>;"
        }
    .end annotation

    .line 307
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$g;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$g;-><init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 264
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null keys not allowed"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 267
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null values not allowed"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_1
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->h()V

    .line 271
    invoke-super {p0, p1, p2}, Lio/rx_cache2/internal/cache/memory/apache/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_0
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->h()V

    .line 286
    invoke-super {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 189
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->g()V

    .line 190
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->i:Lio/rx_cache2/internal/cache/memory/apache/c$h;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$h;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$h;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->i:Lio/rx_cache2/internal/cache/memory/apache/c$h;

    .line 348
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->i:Lio/rx_cache2/internal/cache/memory/apache/c$h;

    return-object v0
.end method
