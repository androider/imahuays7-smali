.class public Lcn/bingoogolapple/bgabanner/transformer/f;
.super Lcn/bingoogolapple/bgabanner/transformer/c;
.source "DepthPageTransformer.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/c;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    .line 12
    iput v0, p0, Lcn/bingoogolapple/bgabanner/transformer/f;->a:F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    const/4 p2, 0x0

    .line 23
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 28
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 30
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 31
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p2

    .line 36
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 38
    iget p2, p0, Lcn/bingoogolapple/bgabanner/transformer/f;->a:F

    iget v2, p0, Lcn/bingoogolapple/bgabanner/transformer/f;->a:F

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    .line 39
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 40
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method
