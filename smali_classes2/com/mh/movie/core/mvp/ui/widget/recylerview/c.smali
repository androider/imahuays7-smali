.class public Lcom/mh/movie/core/mvp/ui/widget/recylerview/c;
.super Ljava/lang/Object;
.source "RecyclerViewUtils.java"


# direct methods
.method public static a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 41
    instance-of v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    check-cast p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    .line 46
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
