.class public Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "CornerImageView.java"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Path;

.field c:Landroid/graphics/RectF;

.field d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 22
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->d:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 22
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->d:F

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 22
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->d:F

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->b:Landroid/graphics/Path;

    .line 43
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a:Landroid/graphics/Paint;

    const/16 p2, -0x100

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->c:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 56
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->c:Landroid/graphics/RectF;

    .line 57
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    int-to-float p4, p4

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 58
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 59
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->b:Landroid/graphics/Path;

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->d:F

    iget p4, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->d:F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CornerImageView;->d:F

    return-void
.end method
