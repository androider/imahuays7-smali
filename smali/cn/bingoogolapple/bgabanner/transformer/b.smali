.class public Lcn/bingoogolapple/bgabanner/transformer/b;
.super Lcn/bingoogolapple/bgabanner/transformer/c;
.source "AlphaPageTransformer.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/c;-><init>()V

    const v0, 0x3ecccccd    # 0.4f

    .line 12
    iput v0, p0, Lcn/bingoogolapple/bgabanner/transformer/b;->a:F

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
    .locals 3

    .line 28
    iget v0, p0, Lcn/bingoogolapple/bgabanner/transformer/b;->a:F

    iget v1, p0, Lcn/bingoogolapple/bgabanner/transformer/b;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    add-float/2addr p2, v2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 3

    .line 33
    iget v0, p0, Lcn/bingoogolapple/bgabanner/transformer/b;->a:F

    iget v1, p0, Lcn/bingoogolapple/bgabanner/transformer/b;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    sub-float/2addr v2, p2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method
