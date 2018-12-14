.class Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;
.super Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;
.source "AllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/AllActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:[F

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V
    .locals 2

    .line 517
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;-><init>()V

    const/4 p1, 0x1

    .line 518
    new-array p1, p1, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->a:[F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 522
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 523
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    .line 524
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->n:Lcom/mh/movie/core/mvp/ui/adapter/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    .line 527
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Z)V

    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 533
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 534
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->a:[F

    const/4 p2, 0x0

    aget v0, p1, p2

    int-to-float p3, p3

    add-float/2addr v0, p3

    aput v0, p1, p2

    .line 535
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->a:[F

    aget p1, p1, p2

    const/high16 p2, 0x43160000    # 150.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 536
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->tvSelectFilter:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->tvSelectFilter:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->m:Lcom/mh/movie/core/mvp/model/entity/FilterEntity;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/FilterEntity;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;->b:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->tvSelectFilter:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void
.end method
