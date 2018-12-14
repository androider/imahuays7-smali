.class public Lcom/umeng/message/view/UCloseView;
.super Landroid/widget/Button;
.source "UCloseView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/umeng/message/view/UCloseView;->setBackgroundColor(I)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    invoke-static {p1, v0}, Lcom/umeng/message/b/f;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->g:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 30
    invoke-static {p1, v0}, Lcom/umeng/message/b/f;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/umeng/message/view/UCloseView;->f:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 35
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p0}, Lcom/umeng/message/view/UCloseView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->b:F

    .line 37
    invoke-virtual {p0}, Lcom/umeng/message/view/UCloseView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->c:F

    .line 39
    invoke-virtual {p0}, Lcom/umeng/message/view/UCloseView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/umeng/message/view/UCloseView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->g:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->d:F

    .line 40
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->d:F

    const v1, 0x3fb50481    # 1.4142f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/umeng/message/view/UCloseView;->e:F

    .line 41
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->b:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->c:F

    iget v2, p0, Lcom/umeng/message/view/UCloseView;->d:F

    iget-object v3, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->b:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->c:F

    iget v2, p0, Lcom/umeng/message/view/UCloseView;->d:F

    iget-object v3, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 49
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->b:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->e:F

    sub-float v3, v0, v1

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->c:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->e:F

    sub-float v4, v0, v1

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->b:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->e:F

    add-float v5, v0, v1

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->c:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->e:F

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    iget v0, p0, Lcom/umeng/message/view/UCloseView;->b:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->e:F

    add-float v3, v0, v1

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->c:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->e:F

    sub-float v4, v0, v1

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->b:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->e:F

    sub-float v5, v0, v1

    iget v0, p0, Lcom/umeng/message/view/UCloseView;->c:F

    iget v1, p0, Lcom/umeng/message/view/UCloseView;->e:F

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/umeng/message/view/UCloseView;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
