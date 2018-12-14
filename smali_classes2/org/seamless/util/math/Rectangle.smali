.class public Lorg/seamless/util/math/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field private height:I

.field private position:Lorg/seamless/util/math/Point;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/math/Point;II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    .line 31
    iput p2, p0, Lorg/seamless/util/math/Rectangle;->width:I

    .line 32
    iput p3, p0, Lorg/seamless/util/math/Rectangle;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/seamless/util/math/Rectangle;->height:I

    return v0
.end method

.method public getPosition()Lorg/seamless/util/math/Point;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/seamless/util/math/Rectangle;->width:I

    return v0
.end method

.method public intersection(Lorg/seamless/util/math/Rectangle;)Lorg/seamless/util/math/Rectangle;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 66
    iget-object v2, v0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v2}, Lorg/seamless/util/math/Point;->getX()I

    move-result v2

    .line 67
    iget-object v3, v0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v3}, Lorg/seamless/util/math/Point;->getY()I

    move-result v3

    .line 68
    iget-object v4, v1, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v4}, Lorg/seamless/util/math/Point;->getX()I

    move-result v4

    .line 69
    iget-object v5, v1, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v5}, Lorg/seamless/util/math/Point;->getY()I

    move-result v5

    int-to-long v6, v2

    .line 71
    iget v8, v0, Lorg/seamless/util/math/Rectangle;->width:I

    int-to-long v8, v8

    add-long v10, v6, v8

    int-to-long v6, v3

    .line 73
    iget v8, v0, Lorg/seamless/util/math/Rectangle;->height:I

    int-to-long v8, v8

    add-long v12, v6, v8

    int-to-long v6, v4

    .line 75
    iget v8, v1, Lorg/seamless/util/math/Rectangle;->width:I

    int-to-long v8, v8

    add-long v14, v6, v8

    int-to-long v6, v5

    .line 77
    iget v1, v1, Lorg/seamless/util/math/Rectangle;->height:I

    int-to-long v8, v1

    add-long v16, v6, v8

    if-ge v2, v4, :cond_0

    move v2, v4

    :cond_0
    if-ge v3, v5, :cond_1

    move v3, v5

    :cond_1
    cmp-long v1, v10, v14

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v14, v10

    :goto_0
    cmp-long v1, v12, v16

    if-lez v1, :cond_3

    move-wide/from16 v12, v16

    :cond_3
    int-to-long v4, v2

    sub-long v6, v14, v4

    int-to-long v4, v3

    sub-long v8, v12, v4

    const-wide/32 v4, -0x80000000

    cmp-long v1, v6, v4

    if-gez v1, :cond_4

    move-wide v6, v4

    :cond_4
    cmp-long v1, v8, v4

    if-gez v1, :cond_5

    goto :goto_1

    :cond_5
    move-wide v4, v8

    .line 90
    :goto_1
    new-instance v1, Lorg/seamless/util/math/Rectangle;

    new-instance v8, Lorg/seamless/util/math/Point;

    invoke-direct {v8, v2, v3}, Lorg/seamless/util/math/Point;-><init>(II)V

    long-to-int v2, v6

    long-to-int v3, v4

    invoke-direct {v1, v8, v2, v3}, Lorg/seamless/util/math/Rectangle;-><init>(Lorg/seamless/util/math/Point;II)V

    return-object v1
.end method

.method public isOverlapping(Lorg/seamless/util/math/Rectangle;)Z
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Lorg/seamless/util/math/Rectangle;->intersection(Lorg/seamless/util/math/Rectangle;)Lorg/seamless/util/math/Rectangle;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lorg/seamless/util/math/Rectangle;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/seamless/util/math/Rectangle;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 2

    .line 36
    new-instance v0, Lorg/seamless/util/math/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/seamless/util/math/Point;-><init>(II)V

    iput-object v0, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    .line 37
    iput v1, p0, Lorg/seamless/util/math/Rectangle;->width:I

    .line 38
    iput v1, p0, Lorg/seamless/util/math/Rectangle;->height:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 62
    iput p1, p0, Lorg/seamless/util/math/Rectangle;->height:I

    return-void
.end method

.method public setPosition(Lorg/seamless/util/math/Point;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 54
    iput p1, p0, Lorg/seamless/util/math/Rectangle;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rectangle("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/seamless/util/math/Rectangle;->position:Lorg/seamless/util/math/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/seamless/util/math/Rectangle;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/seamless/util/math/Rectangle;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
