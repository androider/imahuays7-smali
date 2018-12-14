.class public abstract Lcom/mh/movie/core/mvp/ui/adapter/c;
.super Lcom/mh/movie/core/mvp/ui/adapter/r;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/mh/movie/core/mvp/ui/adapter/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/r;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/r;-><init>()V

    .line 38
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/c;)Landroid/view/View;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;I)V"
        }
    .end annotation

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->b:Landroid/view/View;

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemInserted(I)V

    return-void
.end method

.method public abstract b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TV;"
        }
    .end annotation
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->c:Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->c:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->getItemViewType(I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 78
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->a:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 65
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/c$a;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->b:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c$a;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/c;Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 67
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/c$a;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/c;->c:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c$a;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/c;Landroid/view/View;)V

    return-object p1

    .line 69
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
