.class public abstract Lcom/mh/movie/core/mvp/ui/widget/a/a;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "HorizontalScrollListener.java"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/a/a;->b:Z

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/a/a;->b:Z

    return-void
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .line 11
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 12
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p1

    const/4 v2, 0x1

    if-nez p2, :cond_0

    add-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    .line 16
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/a/a;->b:Z

    if-nez p1, :cond_0

    .line 17
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/a/a;->b:Z

    .line 18
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/a;->b()V

    :cond_0
    if-nez p2, :cond_1

    if-nez v1, :cond_1

    .line 22
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/a/a;->b:Z

    if-nez p1, :cond_1

    .line 23
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/a/a;->b:Z

    .line 24
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/a;->a()V

    :cond_1
    return-void
.end method
