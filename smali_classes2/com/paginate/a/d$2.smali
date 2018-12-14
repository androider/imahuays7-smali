.class Lcom/paginate/a/d$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerPaginate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paginate/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/paginate/a/d;


# direct methods
.method constructor <init>(Lcom/paginate/a/d;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {v0}, Lcom/paginate/a/d;->a(Lcom/paginate/a/d;)Lcom/paginate/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paginate/a/e;->notifyDataSetChanged()V

    .line 120
    iget-object v0, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {v0}, Lcom/paginate/a/d;->b(Lcom/paginate/a/d;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {v0}, Lcom/paginate/a/d;->a(Lcom/paginate/a/d;)Lcom/paginate/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/paginate/a/e;->notifyItemRangeChanged(II)V

    .line 132
    iget-object p1, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {p1}, Lcom/paginate/a/d;->b(Lcom/paginate/a/d;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {v0}, Lcom/paginate/a/d;->a(Lcom/paginate/a/d;)Lcom/paginate/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/paginate/a/e;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {p1}, Lcom/paginate/a/d;->b(Lcom/paginate/a/d;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {v0}, Lcom/paginate/a/d;->a(Lcom/paginate/a/d;)Lcom/paginate/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/paginate/a/e;->notifyItemRangeInserted(II)V

    .line 126
    iget-object p1, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {p1}, Lcom/paginate/a/d;->b(Lcom/paginate/a/d;)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 149
    iget-object p3, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {p3}, Lcom/paginate/a/d;->a(Lcom/paginate/a/d;)Lcom/paginate/a/e;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/paginate/a/e;->notifyItemMoved(II)V

    .line 150
    iget-object p1, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {p1}, Lcom/paginate/a/d;->b(Lcom/paginate/a/d;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {v0}, Lcom/paginate/a/d;->a(Lcom/paginate/a/d;)Lcom/paginate/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/paginate/a/e;->notifyItemRangeRemoved(II)V

    .line 144
    iget-object p1, p0, Lcom/paginate/a/d$2;->a:Lcom/paginate/a/d;

    invoke-static {p1}, Lcom/paginate/a/d;->b(Lcom/paginate/a/d;)V

    return-void
.end method
