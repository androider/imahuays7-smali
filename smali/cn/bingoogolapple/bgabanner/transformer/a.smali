.class public Lcn/bingoogolapple/bgabanner/transformer/a;
.super Lcn/bingoogolapple/bgabanner/transformer/c;
.source "AccordionPageTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    .line 20
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    .line 26
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 27
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method
