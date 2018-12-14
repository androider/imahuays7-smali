.class public Lcom/flyco/dialog/view/TriangleView;
.super Landroid/view/View;
.source "TriangleView.java"


# instance fields
.field private mColor:I

.field private mGravity:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/flyco/dialog/view/TriangleView;->mPaint:Landroid/graphics/Paint;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/flyco/dialog/view/TriangleView;->mPaint:Landroid/graphics/Paint;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/flyco/dialog/view/TriangleView;->mColor:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/flyco/dialog/view/TriangleView;->mGravity:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual {p0}, Lcom/flyco/dialog/view/TriangleView;->getWidth()I

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/flyco/dialog/view/TriangleView;->getHeight()I

    move-result v1

    .line 51
    iget-object v2, p0, Lcom/flyco/dialog/view/TriangleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/flyco/dialog/view/TriangleView;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v2, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 54
    iget v2, p0, Lcom/flyco/dialog/view/TriangleView;->mGravity:I

    const/4 v3, 0x0

    const/16 v4, 0x30

    if-ne v2, v4, :cond_0

    .line 55
    iget-object v2, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 56
    iget-object v2, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    iget-object v2, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget-object v0, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 59
    :cond_0
    iget v2, p0, Lcom/flyco/dialog/view/TriangleView;->mGravity:I

    const/16 v4, 0x50

    if-ne v2, v4, :cond_1

    .line 60
    iget-object v2, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 61
    iget-object v2, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    int-to-float v4, v0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    iget-object v2, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 63
    iget-object v0, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/flyco/dialog/view/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flyco/dialog/view/TriangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/flyco/dialog/view/TriangleView;->mColor:I

    .line 28
    invoke-virtual {p0}, Lcom/flyco/dialog/view/TriangleView;->invalidate()V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/flyco/dialog/view/TriangleView;->mGravity:I

    .line 33
    invoke-virtual {p0}, Lcom/flyco/dialog/view/TriangleView;->invalidate()V

    return-void
.end method
