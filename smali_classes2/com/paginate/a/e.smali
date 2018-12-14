.class Lcom/paginate/a/e;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final b:Lcom/paginate/a/b;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/paginate/a/b;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/paginate/a/e;->c:Z

    .line 15
    iput-object p1, p0, Lcom/paginate/a/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 16
    iput-object p2, p0, Lcom/paginate/a/e;->b:Lcom/paginate/a/b;

    return-void
.end method

.method private a()I
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/paginate/a/e;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/paginate/a/e;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method a(Z)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/paginate/a/e;->c:Z

    if-eq v0, p1, :cond_0

    .line 68
    iput-boolean p1, p0, Lcom/paginate/a/e;->c:Z

    .line 69
    invoke-virtual {p0}, Lcom/paginate/a/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method a(I)Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/paginate/a/e;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paginate/a/e;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/paginate/a/e;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paginate/a/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/paginate/a/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/paginate/a/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/paginate/a/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lcom/paginate/a/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7fffffcd

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/paginate/a/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 30
    invoke-virtual {p0, p2}, Lcom/paginate/a/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/paginate/a/e;->b:Lcom/paginate/a/b;

    invoke-interface {v0, p1, p2}, Lcom/paginate/a/b;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/paginate/a/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    const v0, 0x7fffffcd

    if-ne p2, v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/paginate/a/e;->b:Lcom/paginate/a/b;

    invoke-interface {v0, p1, p2}, Lcom/paginate/a/b;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/paginate/a/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 55
    iget-object v0, p0, Lcom/paginate/a/e;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method
