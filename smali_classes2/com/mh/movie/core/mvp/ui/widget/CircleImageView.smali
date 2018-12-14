.class public Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;
.super Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;
.source "CircleImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/HoverImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .locals 5

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 34
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;->getWidth()I

    move-result v0

    .line 35
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    int-to-float v4, v1

    mul-float v4, v4, v3

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 40
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public b(Landroid/graphics/Path;)V
    .locals 6

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 47
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;->getBorderWidth()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 49
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;->getWidth()I

    move-result v2

    .line 50
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/CircleImageView;->getHeight()I

    move-result v3

    int-to-float v4, v2

    mul-float v4, v4, v1

    int-to-float v5, v3

    mul-float v5, v5, v1

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v2, v0

    .line 55
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v4, v5, v2, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method
