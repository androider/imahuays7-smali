.class public Lcn/bingoogolapple/bgabanner/a;
.super Landroid/widget/Scroller;
.source "BGABannerScroller.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3e8

    .line 12
    iput p1, p0, Lcn/bingoogolapple/bgabanner/a;->a:I

    .line 16
    iput p2, p0, Lcn/bingoogolapple/bgabanner/a;->a:I

    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 6

    .line 21
    iget v5, p0, Lcn/bingoogolapple/bgabanner/a;->a:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 26
    iget v5, p0, Lcn/bingoogolapple/bgabanner/a;->a:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
