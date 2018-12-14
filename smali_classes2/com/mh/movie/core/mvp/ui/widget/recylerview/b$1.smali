.class Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "HeaderAndFooterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 31
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 36
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 37
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 42
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 43
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {v1, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 48
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->notifyItemRangeRemoved(II)V

    return-void
.end method
