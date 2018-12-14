.class public Lcom/mh/movie/core/mvp/ui/widget/MyRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MyRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyRelativeLayout;->getDefaultSize(II)I

    move-result p1

    .line 23
    invoke-static {v0, p2}, Lcom/mh/movie/core/mvp/ui/widget/MyRelativeLayout;->getDefaultSize(II)I

    move-result p2

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MyRelativeLayout;->setMeasuredDimension(II)V

    .line 25
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyRelativeLayout;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 27
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 29
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
