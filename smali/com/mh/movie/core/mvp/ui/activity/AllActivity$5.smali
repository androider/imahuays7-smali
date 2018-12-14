.class Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Ljava/util/List;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/RecyclerView;

.field final synthetic c:I

.field final synthetic d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;ILandroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->a:I

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->b:Landroid/support/v7/widget/RecyclerView;

    iput p4, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->c:I

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 389
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget-boolean p1, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->i:Z

    if-eqz p1, :cond_3

    .line 390
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->a:I

    if-eqz p1, :cond_3

    .line 391
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->i:Z

    .line 392
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->b:Landroid/support/v7/widget/RecyclerView;

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->a:I

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->b:Landroid/support/v7/widget/RecyclerView;

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->a:I

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 393
    :goto_0
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget p3, p3, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->h:I

    div-int/lit8 p3, p3, 0x2

    if-ge p1, p3, :cond_1

    .line 394
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->b:Landroid/support/v7/widget/RecyclerView;

    neg-int p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 396
    :cond_1
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget p3, p3, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->h:I

    if-le p1, p3, :cond_2

    .line 397
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget p3, p3, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->h:I

    div-int/lit8 p3, p3, 0x2

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->c:I

    sub-int/2addr p3, v0

    neg-int p3, p3

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 399
    :cond_2
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->h:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->d:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->h:I

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;->c:I

    sub-int/2addr v0, p1

    neg-int p1, v0

    invoke-virtual {p3, p1, p2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_3
    :goto_1
    return-void
.end method
