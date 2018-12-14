.class Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;
.super Landroid/view/ViewGroup;
.source "QBadgeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;Landroid/content/Context;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->a:Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;

    .line 841
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 836
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 846
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 847
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 848
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 855
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 856
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 857
    instance-of v4, v3, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 864
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_2

    .line 866
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    if-eqz v2, :cond_3

    .line 868
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 869
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 868
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 871
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView$a;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method
