.class public Lcom/mh/movie/core/mvp/presenter/player/c;
.super Ljava/lang/Object;
.source "MHRandom.java"


# instance fields
.field private a:Ljava/util/Random;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Random;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/c;->a:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/c;->a:Ljava/util/Random;

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2
.end method

.method public a(III)[I
    .locals 4

    .line 38
    new-array v0, p3, [I

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    if-le p3, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p3, :cond_2

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, v2}, Lcom/mh/movie/core/mvp/presenter/player/c;->a(II)I

    move-result v2

    .line 51
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, p2

    .line 52
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public b(III)[I
    .locals 3

    .line 67
    new-array v0, p3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/player/c;->a(II)I

    move-result v2

    .line 80
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
