.class public Lio/rx_cache2/internal/cache/memory/apache/c;
.super Ljava/util/AbstractMap;
.source "AbstractHashedMap.java"

# interfaces
.implements Lio/rx_cache2/internal/cache/memory/apache/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rx_cache2/internal/cache/memory/apache/c$d;,
        Lio/rx_cache2/internal/cache/memory/apache/c$c;,
        Lio/rx_cache2/internal/cache/memory/apache/c$i;,
        Lio/rx_cache2/internal/cache/memory/apache/c$h;,
        Lio/rx_cache2/internal/cache/memory/apache/c$g;,
        Lio/rx_cache2/internal/cache/memory/apache/c$f;,
        Lio/rx_cache2/internal/cache/memory/apache/c$b;,
        Lio/rx_cache2/internal/cache/memory/apache/c$a;,
        Lio/rx_cache2/internal/cache/memory/apache/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lio/rx_cache2/internal/cache/memory/apache/i<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Object;


# instance fields
.field transient b:F

.field transient c:I

.field transient d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient e:I

.field transient f:I

.field transient g:Lio/rx_cache2/internal/cache/memory/apache/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient h:Lio/rx_cache2/internal/cache/memory/apache/c$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c$f<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient i:Lio/rx_cache2/internal/cache/memory/apache/c$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/c$h<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/rx_cache2/internal/cache/memory/apache/c;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-gez p1, :cond_0

    .line 137
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial capacity must be a non negative number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    .line 139
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    iput p2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->b:F

    .line 143
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(I)I

    move-result p1

    .line 144
    invoke-virtual {p0, p1, p2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(IF)I

    move-result p2

    iput p2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->e:I

    .line 145
    new-array p1, p1, [Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 146
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->a()V

    return-void

    .line 140
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Load factor must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 314
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->b:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 319
    invoke-virtual {p0, v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(I)V

    .line 320
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(IF)I
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method

.method protected a(II)I
    .locals 0

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    return p1
.end method

.method protected a(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;ITK;TV;)",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 531
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/c$c;

    invoke-virtual {p0, p3}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lio/rx_cache2/internal/cache/memory/apache/c$c;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 377
    sget-object p1, Lio/rx_cache2/internal/cache/memory/apache/c;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(I)V
    .locals 7

    .line 621
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    return-void

    .line 625
    :cond_0
    iget v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    if-nez v1, :cond_1

    .line 626
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->b:F

    invoke-virtual {p0, p1, v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(IF)I

    move-result v0

    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->e:I

    .line 627
    new-array p1, p1, [Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    goto :goto_3

    .line 629
    :cond_1
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 630
    new-array v2, p1, [Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 632
    iget v3, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 634
    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 636
    aput-object v4, v1, v0

    .line 638
    :goto_1
    iget-object v4, v3, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 639
    iget v5, v3, Lio/rx_cache2/internal/cache/memory/apache/c$c;->b:I

    invoke-virtual {p0, v5, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(II)I

    move-result v5

    .line 640
    aget-object v6, v2, v5

    iput-object v6, v3, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 641
    aput-object v3, v2, v5

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 646
    :cond_4
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->b:F

    invoke-virtual {p0, p1, v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(IF)I

    move-result p1

    iput p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->e:I

    .line 647
    iput-object v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    :goto_3
    return-void
.end method

.method protected a(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .line 510
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    .line 511
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-result-object p2

    .line 512
    invoke-virtual {p0, p2, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Lio/rx_cache2/internal/cache/memory/apache/c$c;I)V

    .line 513
    iget p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    .line 514
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->b()V

    return-void
.end method

.method protected a(Lio/rx_cache2/internal/cache/memory/apache/c$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 594
    iput-object v0, p1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 595
    iput-object v0, p1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    .line 596
    iput-object v0, p1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->d:Ljava/lang/Object;

    return-void
.end method

.method protected a(Lio/rx_cache2/internal/cache/memory/apache/c$c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    aput-object p1, v0, p2

    return-void
.end method

.method protected a(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILio/rx_cache2/internal/cache/memory/apache/c$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;I",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 560
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    .line 561
    invoke-virtual {p0, p1, p2, p3}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILio/rx_cache2/internal/cache/memory/apache/c$c;)V

    .line 562
    iget p2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    .line 563
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Lio/rx_cache2/internal/cache/memory/apache/c$c;)V

    return-void
.end method

.method protected a(Lio/rx_cache2/internal/cache/memory/apache/c$c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 472
    invoke-virtual {p1, p2}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1257
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->b:F

    .line 1258
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1259
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1260
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->a()V

    .line 1261
    iget v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->b:F

    invoke-virtual {p0, v0, v2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(IF)I

    move-result v2

    iput v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->e:I

    .line 1262
    new-array v0, v0, [Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1264
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1265
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1266
    invoke-virtual {p0, v2, v3}, Lio/rx_cache2/internal/cache/memory/apache/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1226
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->b:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 1227
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1228
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1229
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->mapIterator()Lio/rx_cache2/internal/cache/memory/apache/j;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lio/rx_cache2/internal/cache/memory/apache/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    invoke-interface {v0}, Lio/rx_cache2/internal/cache/memory/apache/j;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1231
    invoke-interface {v0}, Lio/rx_cache2/internal/cache/memory/apache/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    .line 408
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected b(I)I
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 v0, p1, 0x9

    xor-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x4

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    return p1
.end method

.method protected b()V
    .locals 2

    .line 606
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    iget v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->e:I

    if-lt v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_0

    .line 609
    invoke-virtual {p0, v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(I)V

    :cond_0
    return-void
.end method

.method protected b(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILio/rx_cache2/internal/cache/memory/apache/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;I",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 579
    iget-object p3, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iget-object p1, p1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    aput-object p1, p3, p2

    goto :goto_0

    .line 581
    :cond_0
    iget-object p1, p1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iput-object p1, p3, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    :goto_0
    return-void
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    .line 421
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected c(Ljava/lang/Object;)Lio/rx_cache2/internal/cache/memory/apache/c$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 449
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 450
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(Ljava/lang/Object;)I

    move-result v0

    .line 451
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iget-object v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v2, v2

    invoke-virtual {p0, v0, v2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 453
    iget v2, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->b:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 456
    :cond_0
    iget-object v1, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

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

    .line 819
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 820
    invoke-static {}, Lio/rx_cache2/internal/cache/memory/apache/g;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 822
    :cond_0
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/c$b;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/c$b;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    return-object v0
.end method

.method public clear()V
    .locals 3

    .line 356
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    .line 357
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    .line 358
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 359
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    return-void
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->f()Lio/rx_cache2/internal/cache/memory/apache/c;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 216
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(Ljava/lang/Object;)I

    move-result v0

    .line 218
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iget-object v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v2, v2

    invoke-virtual {p0, v0, v2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 220
    iget v2, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->b:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 223
    :cond_0
    iget-object v1, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 237
    iget-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    :goto_1
    if-eqz v4, :cond_1

    .line 240
    invoke-virtual {v4}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    return v1

    .line 243
    :cond_0
    iget-object v4, v4, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_2
    iget-object v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    :goto_3
    if-eqz v5, :cond_4

    .line 250
    invoke-virtual {v5}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    .line 253
    :cond_3
    iget-object v5, v5, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return v0
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

    .line 913
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 914
    invoke-static {}, Lio/rx_cache2/internal/cache/memory/apache/g;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 916
    :cond_0
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/c$g;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/c$g;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

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

    .line 997
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 998
    invoke-static {}, Lio/rx_cache2/internal/cache/memory/apache/g;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_0
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/c$i;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/c$i;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

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

    .line 806
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->g:Lio/rx_cache2/internal/cache/memory/apache/c$a;

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/c$a;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/c$a;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->g:Lio/rx_cache2/internal/cache/memory/apache/c$a;

    .line 809
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->g:Lio/rx_cache2/internal/cache/memory/apache/c$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1310
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1313
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 1314
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 1317
    :cond_2
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->mapIterator()Lio/rx_cache2/internal/cache/memory/apache/j;

    move-result-object v1

    .line 1319
    :cond_3
    :try_start_0
    invoke-interface {v1}, Lio/rx_cache2/internal/cache/memory/apache/j;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1320
    invoke-interface {v1}, Lio/rx_cache2/internal/cache/memory/apache/j;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1321
    invoke-interface {v1}, Lio/rx_cache2/internal/cache/memory/apache/j;->a()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1323
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v2

    .line 1327
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    return v2

    :cond_6
    return v0

    :catch_0
    return v2

    :catch_1
    return v2
.end method

.method protected f()Lio/rx_cache2/internal/cache/memory/apache/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rx_cache2/internal/cache/memory/apache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1284
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rx_cache2/internal/cache/memory/apache/c;

    .line 1285
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v1, v1

    new-array v1, v1, [Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iput-object v1, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    const/4 v1, 0x0

    .line 1286
    iput-object v1, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->g:Lio/rx_cache2/internal/cache/memory/apache/c$a;

    .line 1287
    iput-object v1, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->h:Lio/rx_cache2/internal/cache/memory/apache/c$f;

    .line 1288
    iput-object v1, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->i:Lio/rx_cache2/internal/cache/memory/apache/c$h;

    const/4 v1, 0x0

    .line 1289
    iput v1, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->f:I

    .line 1290
    iput v1, v0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    .line 1291
    invoke-virtual {v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->a()V

    .line 1292
    invoke-virtual {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1295
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(Ljava/lang/Object;)I

    move-result v0

    .line 177
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    iget-object v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v2, v2

    invoke-virtual {p0, v0, v2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 179
    iget v2, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->b:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v1}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 182
    :cond_0
    iget-object v1, v1, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1348
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->c()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1349
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1350
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 204
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 900
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->h:Lio/rx_cache2/internal/cache/memory/apache/c$f;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/c$f;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/c$f;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->h:Lio/rx_cache2/internal/cache/memory/apache/c$f;

    .line 903
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->h:Lio/rx_cache2/internal/cache/memory/apache/c$f;

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

    .line 751
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    if-nez v0, :cond_0

    .line 752
    invoke-static {}, Lio/rx_cache2/internal/cache/memory/apache/h;->b()Lio/rx_cache2/internal/cache/memory/apache/j;

    move-result-object v0

    return-object v0

    .line 754
    :cond_0
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/c$e;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/c$e;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    invoke-virtual {p0, v0}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(Ljava/lang/Object;)I

    move-result v1

    .line 272
    iget-object v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(II)I

    move-result v2

    .line 273
    iget-object v3, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    aget-object v3, v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 275
    iget v4, v3, Lio/rx_cache2/internal/cache/memory/apache/c$c;->b:I

    if-ne v4, v1, :cond_0

    iget-object v4, v3, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    invoke-virtual {v3}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 277
    invoke-virtual {p0, v3, p2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Lio/rx_cache2/internal/cache/memory/apache/c$c;Ljava/lang/Object;)V

    return-object p1

    .line 280
    :cond_0
    iget-object v3, v3, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0, v2, v1, p1, p2}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 298
    invoke-direct {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 334
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/cache/memory/apache/c;->b(Ljava/lang/Object;)I

    move-result v0

    .line 335
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(II)I

    move-result v1

    .line 336
    iget-object v2, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->d:[Lio/rx_cache2/internal/cache/memory/apache/c$c;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 339
    iget v5, v2, Lio/rx_cache2/internal/cache/memory/apache/c$c;->b:I

    if-ne v5, v0, :cond_0

    iget-object v5, v2, Lio/rx_cache2/internal/cache/memory/apache/c$c;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1, v5}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    invoke-virtual {v2}, Lio/rx_cache2/internal/cache/memory/apache/c$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 341
    invoke-virtual {p0, v2, v1, v4}, Lio/rx_cache2/internal/cache/memory/apache/c;->a(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILio/rx_cache2/internal/cache/memory/apache/c$c;)V

    return-object p1

    .line 345
    :cond_0
    iget-object v4, v2, Lio/rx_cache2/internal/cache/memory/apache/c$c;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public size()I
    .locals 1

    .line 194
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1362
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 1365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->size()I

    move-result v1

    const/16 v2, 0x20

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 1366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/c;->mapIterator()Lio/rx_cache2/internal/cache/memory/apache/j;

    move-result-object v1

    .line 1369
    invoke-interface {v1}, Lio/rx_cache2/internal/cache/memory/apache/j;->hasNext()Z

    move-result v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    .line 1371
    invoke-interface {v1}, Lio/rx_cache2/internal/cache/memory/apache/j;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1372
    invoke-interface {v1}, Lio/rx_cache2/internal/cache/memory/apache/j;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, p0, :cond_2

    const-string v3, "(this Map)"

    .line 1373
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 1374
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v4, p0, :cond_3

    const-string v4, "(this Map)"

    .line 1375
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-interface {v1}, Lio/rx_cache2/internal/cache/memory/apache/j;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x2c

    .line 1379
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 1383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 984
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->i:Lio/rx_cache2/internal/cache/memory/apache/c$h;

    if-nez v0, :cond_0

    .line 985
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/c$h;

    invoke-direct {v0, p0}, Lio/rx_cache2/internal/cache/memory/apache/c$h;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c;)V

    iput-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->i:Lio/rx_cache2/internal/cache/memory/apache/c$h;

    .line 987
    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/c;->i:Lio/rx_cache2/internal/cache/memory/apache/c$h;

    return-object v0
.end method
