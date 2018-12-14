.class public Lcn/bingoogolapple/bgabanner/transformer/d;
.super Lcn/bingoogolapple/bgabanner/transformer/c;
.source "CubePageTransformer.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/c;-><init>()V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 12
    iput v0, p0, Lcn/bingoogolapple/bgabanner/transformer/d;->a:F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    const/4 p2, 0x0

    .line 25
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setRotationY(Landroid/view/View;F)V

    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 32
    iget v0, p0, Lcn/bingoogolapple/bgabanner/transformer/d;->a:F

    mul-float v0, v0, p2

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotationY(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 2

    const/4 v0, 0x0

    .line 37
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 39
    iget v0, p0, Lcn/bingoogolapple/bgabanner/transformer/d;->a:F

    mul-float v0, v0, p2

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotationY(Landroid/view/View;F)V

    return-void
.end method
