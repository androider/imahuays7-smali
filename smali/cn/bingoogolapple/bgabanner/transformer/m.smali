.class public Lcn/bingoogolapple/bgabanner/transformer/m;
.super Lcn/bingoogolapple/bgabanner/transformer/c;
.source "ZoomPageTransformer.java"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/c;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 12
    iput v0, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->a:F

    const v0, 0x3f266666    # 0.65f

    .line 13
    iput v0, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->b:F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    const/4 p2, 0x0

    .line 25
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 5

    .line 30
    iget v0, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v1, p2

    mul-float v0, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    div-float/2addr v4, v3

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    .line 33
    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 34
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 35
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 36
    iget v0, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->b:F

    iget v2, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->a:F

    sub-float/2addr p2, v2

    iget v2, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->a:F

    sub-float v2, v1, v2

    div-float/2addr p2, v2

    iget v2, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->b:F

    sub-float/2addr v1, v2

    mul-float p2, p2, v1

    add-float/2addr v0, p2

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 5

    .line 41
    iget v0, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v1, p2

    mul-float v0, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    div-float/2addr v4, v3

    neg-float v2, v4

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 44
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 45
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 46
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 47
    iget v0, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->b:F

    iget v2, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->a:F

    sub-float/2addr p2, v2

    iget v2, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->a:F

    sub-float v2, v1, v2

    div-float/2addr p2, v2

    iget v2, p0, Lcn/bingoogolapple/bgabanner/transformer/m;->b:F

    sub-float/2addr v1, v2

    mul-float p2, p2, v1

    add-float/2addr v0, p2

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method
