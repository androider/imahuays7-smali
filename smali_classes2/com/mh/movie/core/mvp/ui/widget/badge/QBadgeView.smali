.class public Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;
.super Landroid/view/View;
.source "QBadgeView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/badge/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;
    }
.end annotation


# instance fields
.field protected A:Landroid/graphics/PointF;

.field protected B:Landroid/graphics/PointF;

.field protected C:Landroid/graphics/PointF;

.field protected D:Landroid/graphics/PointF;

.field protected E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field protected F:Landroid/view/View;

.field protected G:I

.field protected H:I

.field protected I:Landroid/text/TextPaint;

.field protected J:Landroid/graphics/Paint;

.field protected K:Landroid/graphics/Paint;

.field protected L:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

.field protected M:Lcom/mh/movie/core/mvp/ui/widget/badge/a$a;

.field protected N:Landroid/view/ViewGroup;

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Landroid/graphics/drawable/Drawable;

.field protected e:Landroid/graphics/Bitmap;

.field protected f:Z

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:I

.field protected k:Ljava/lang/String;

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:I

.field protected q:F

.field protected r:F

.field protected s:F

.field protected t:F

.field protected u:I

.field protected v:Z

.field protected w:Landroid/graphics/RectF;

.field protected x:Landroid/graphics/RectF;

.field protected y:Landroid/graphics/Path;

.field protected z:Landroid/graphics/Paint$FontMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    .line 434
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 435
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    .line 436
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    .line 437
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    .line 438
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    .line 439
    iget-boolean v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->f:Z

    if-eqz v4, :cond_0

    .line 440
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 441
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    const/4 v9, 0x0

    const/16 v10, 0x1f

    move-object v4, p1

    .line 442
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 444
    :cond_0
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 445
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 446
    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->f:Z

    if-eqz v2, :cond_3

    .line 447
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 448
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 450
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 451
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    .line 456
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    .line 455
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 452
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    .line 453
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    .line 452
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 9

    .line 338
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    .line 339
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 340
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    div-double/2addr v3, v0

    .line 344
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-static {v0, p3, v1, v5}, Lcom/mh/movie/core/mvp/ui/widget/badge/d;->a(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 345
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-static {p3, p2, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/d;->a(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-static {v0, p3, v1, v5}, Lcom/mh/movie/core/mvp/ui/widget/badge/d;->a(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 348
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-static {p3, p2, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/d;->a(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 350
    :goto_0
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 351
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    :goto_2
    invoke-virtual {p3, v0, v1, p2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 353
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/PointF;->x:F

    .line 354
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    div-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 355
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 356
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1, v3, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 357
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 358
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1, v3, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 359
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 360
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 361
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 364
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b:I

    if-eqz p3, :cond_7

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->g:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_7

    .line 365
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 366
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 367
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 368
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 369
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 372
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    if-eq p3, v4, :cond_4

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    if-ne p3, v5, :cond_3

    goto :goto_3

    .line 376
    :cond_3
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    .line 377
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    goto :goto_4

    .line 373
    :cond_4
    :goto_3
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    .line 374
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    :goto_4
    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, p3

    float-to-double v2, v0

    .line 379
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    sub-int/2addr p3, v4

    if-nez p3, :cond_5

    const/4 p3, 0x4

    goto :goto_5

    :cond_5
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    sub-int/2addr p3, v4

    :goto_5
    invoke-static {v2, v3, p3}, Lcom/mh/movie/core/mvp/ui/widget/badge/d;->a(DI)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/d;->a(D)D

    move-result-wide v2

    double-to-float p3, v2

    sub-float v7, v1, p3

    .line 381
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_6

    .line 382
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float v3, p3, p2

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float v4, p3, p2

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    add-float v5, p3, p2

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    add-float v6, p3, p2

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addArc(FFFFFF)V

    goto :goto_6

    .line 386
    :cond_6
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v7, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 389
    :goto_6
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V
    .locals 6

    .line 394
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 412
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 413
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 414
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 415
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v2

    .line 416
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 417
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p3, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 420
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 421
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 398
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/PointF;->x:F

    float-to-int v4, p3

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 399
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 400
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 401
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 402
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 403
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 405
    :cond_4
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 406
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 407
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 425
    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 426
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->z:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->z:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->N:Landroid/view/ViewGroup;

    .line 184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->N:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 7

    .line 268
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v0

    .line 269
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    .line 270
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    const/high16 v5, -0x40400000    # -1.5f

    const/high16 v6, -0x40800000    # -1.0f

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v0

    .line 285
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v0

    .line 281
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    .line 276
    :pswitch_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v0

    .line 277
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v0

    .line 273
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    int-to-float v0, v0

    int-to-float v2, v2

    const/high16 v3, 0x33000000

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 104
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    .line 105
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    .line 106
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->y:Landroid/graphics/Path;

    .line 107
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    .line 108
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    .line 109
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    .line 110
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->D:Landroid/graphics/PointF;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->E:Ljava/util/List;

    .line 112
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    .line 113
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 114
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 115
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 116
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    .line 118
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    .line 121
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x17b1c0

    .line 123
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a:I

    const/4 v1, -0x1

    .line 124
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c:I

    .line 125
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->h:F

    .line 126
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    const v2, 0x800035

    .line 128
    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->p:I

    .line 129
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->q:F

    .line 130
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->r:F

    .line 131
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->t:F

    .line 132
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->o:Z

    .line 133
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->f:Z

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 135
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->setTranslationZ(F)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->M:Lcom/mh/movie/core/mvp/ui/widget/badge/a$a;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->M:Lcom/mh/movie/core/mvp/ui/widget/badge/a$a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->F:Landroid/view/View;

    invoke-interface {v0, p1, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/a$a;->a(ILcom/mh/movie/core/mvp/ui/widget/badge/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c(Landroid/view/View;)V

    goto :goto_0

    .line 192
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 193
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->N:Landroid/view/ViewGroup;

    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->v:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/graphics/PointF;)V

    const/4 v0, 0x5

    .line 240
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c(I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b()V

    const/4 v0, 0x4

    .line 243
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c(I)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 329
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->o:Z

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b(Z)V

    .line 330
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 333
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 334
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private f()V
    .locals 11

    .line 465
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->f:Z

    if-nez v0, :cond_1

    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 474
    :cond_2
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getBadgeCircleRadius()F

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    goto :goto_0

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    .line 483
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 482
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    .line 484
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 485
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 486
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v0, v2

    .line 487
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v2

    iget-object v10, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    .line 486
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 489
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 490
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    .line 489
    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    :goto_0
    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 476
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    .line 478
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 479
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->J:Landroid/graphics/Paint;

    .line 479
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private g()V
    .locals 6

    .line 508
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    .line 509
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 510
    :goto_0
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->p:I

    const/high16 v2, 0x40000000    # 2.0f

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 524
    :sswitch_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->G:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->q:F

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v4, v5

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 525
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->H:I

    int-to-float v1, v1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->r:F

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 516
    :sswitch_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->q:F

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v3, v4

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 517
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->H:I

    int-to-float v1, v1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->r:F

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 520
    :sswitch_2
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->G:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->q:F

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v4, v5

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 521
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->r:F

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 512
    :sswitch_3
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->q:F

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v3, v4

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 513
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->r:F

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 544
    :sswitch_4
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->G:I

    int-to-float v3, v3

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->q:F

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v4, v5

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 545
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->H:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 540
    :sswitch_5
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->q:F

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v3, v4

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 541
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->H:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 536
    :sswitch_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->G:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 537
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->H:I

    int-to-float v1, v1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->r:F

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 532
    :sswitch_7
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->G:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 533
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->r:F

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 528
    :sswitch_8
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->G:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 529
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->H:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 548
    :goto_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_8
        0x31 -> :sswitch_7
        0x51 -> :sswitch_6
        0x800013 -> :sswitch_5
        0x800015 -> :sswitch_4
        0x800033 -> :sswitch_3
        0x800035 -> :sswitch_2
        0x800053 -> :sswitch_1
        0x800055 -> :sswitch_0
    .end sparse-switch
.end method

.method private getBadgeCircleRadius()F
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    return v0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    .line 500
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    .line 501
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    :goto_0
    return v0

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    return v0
.end method

.method private h()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 553
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 554
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 556
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->h:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 559
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 560
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->I:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->z:Landroid/graphics/Paint$FontMetrics;

    .line 561
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->z:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->z:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 563
    :goto_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->f()V

    return-void
.end method

.method private i()V
    .locals 4

    const/4 v0, 0x2

    .line 567
    new-array v0, v0, [I

    .line 568
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getLocationOnScreen([I)V

    .line 569
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 570
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method


# virtual methods
.method protected a()Landroid/graphics/Bitmap;
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    .line 249
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 248
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getBadgeCircleRadius()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    return-object v0
.end method

.method public a(FZ)Lcom/mh/movie/core/mvp/ui/widget/badge/a;
    .locals 0

    if-eqz p2, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    :cond_0
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->h:F

    .line 728
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->h()V

    .line 729
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;
    .locals 1

    .line 609
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    .line 610
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    if-gez p1, :cond_0

    const-string p1, ""

    .line 611
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    goto :goto_1

    .line 612
    :cond_0
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    const/16 v0, 0x63

    if-le p1, v0, :cond_2

    .line 613
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->n:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "99+"

    :goto_0
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    goto :goto_1

    .line 614
    :cond_2
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    if-lez p1, :cond_3

    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    if-gt p1, v0, :cond_3

    .line 615
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    goto :goto_1

    .line 616
    :cond_3
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 617
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    .line 619
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->h()V

    .line 620
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/mh/movie/core/mvp/ui/widget/badge/a;
    .locals 5

    if-nez p1, :cond_0

    .line 142
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetView can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 148
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 149
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->F:Landroid/view/View;

    .line 150
    instance-of v1, v0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;

    if-eqz v1, :cond_2

    .line 151
    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 153
    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 156
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 157
    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;Landroid/content/Context;)V

    .line 158
    instance-of v4, v0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_3

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->setId(I)V

    .line 161
    :cond_3
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v3, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v3, p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->addView(Landroid/view/View;)V

    :goto_0
    return-object p0

    .line 166
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetView must have a parent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->L:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->L:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 578
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Z)V

    .line 579
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->L:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    .line 580
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->L:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->start()V

    const/4 p1, 0x0

    .line 581
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    :cond_2
    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->N:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->F:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/view/View;)Lcom/mh/movie/core/mvp/ui/widget/badge/a;

    :goto_0
    return-void
.end method

.method public b(I)Lcom/mh/movie/core/mvp/ui/widget/badge/a;
    .locals 1

    const v0, 0x800033

    if-eq p1, v0, :cond_1

    const v0, 0x800035

    if-eq p1, v0, :cond_1

    const v0, 0x800053

    if-eq p1, v0, :cond_1

    const v0, 0x800055

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x31

    if-eq p1, v0, :cond_1

    const/16 v0, 0x51

    if-eq p1, v0, :cond_1

    const v0, 0x800013

    if-eq p1, v0, :cond_1

    const v0, 0x800015

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "only support Gravity.START | Gravity.TOP , Gravity.END | Gravity.TOP , Gravity.START | Gravity.BOTTOM , Gravity.END | Gravity.BOTTOM , Gravity.CENTER , Gravity.CENTER | Gravity.TOP , Gravity.CENTER | Gravity.BOTTOM ,Gravity.CENTER | Gravity.START , Gravity.CENTER | Gravity.END"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 773
    :cond_1
    :goto_0
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->p:I

    .line 774
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    const/high16 v1, -0x3b860000    # -1000.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 587
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x4

    .line 588
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Z)V

    .line 590
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 591
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->invalidate()V

    return-void
.end method

.method public getBadgeBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .line 691
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a:I

    return v0
.end method

.method public getBadgeGravity()I
    .locals 1

    .line 786
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->p:I

    return v0
.end method

.method public getBadgeNumber()I
    .locals 1

    .line 626
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->j:I

    return v0
.end method

.method public getBadgeText()Ljava/lang/String;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c:I

    return v0
.end method

.method public getDragCenter()Landroid/graphics/PointF;
    .locals 1

    .line 827
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->F:Landroid/view/View;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 179
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->N:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->F:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->L:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->L:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->L:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->a(Landroid/graphics/Canvas;)V

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 306
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->e()V

    .line 307
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getBadgeCircleRadius()F

    move-result v0

    .line 308
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->s:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    .line 309
    invoke-static {v3, v4}, Lcom/mh/movie/core/mvp/ui/widget/badge/d;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->t:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    .line 310
    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->l:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->m:Z

    if-eqz v2, :cond_3

    .line 311
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->C:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/d;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v2

    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->u:I

    .line 312
    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->o:Z

    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->v:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    .line 314
    invoke-direct {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c(I)V

    .line 315
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    .line 317
    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c(I)V

    .line 318
    invoke-direct {p0, p1, v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/graphics/Canvas;FF)V

    .line 319
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    goto :goto_1

    .line 322
    :cond_3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->g()V

    .line 323
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->A:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 295
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->G:I

    .line 296
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->H:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 219
    :pswitch_1
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->m:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 221
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 222
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->invalidate()V

    goto/16 :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->m:Z

    if-eqz v0, :cond_0

    .line 229
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->m:Z

    .line 230
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->d()V

    goto :goto_0

    .line 202
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 204
    iget-boolean v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->l:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->x:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->i()V

    .line 209
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->m:Z

    .line 210
    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->c(I)V

    .line 211
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v0, v3}, Lcom/mh/movie/core/mvp/ui/widget/badge/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->s:F

    .line 212
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->a(Z)V

    .line 214
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->B:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 234
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->m:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
