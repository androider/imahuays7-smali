.class public Lcom/mh/movie/core/mvp/ui/widget/l;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MovieCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/holder/m;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:Lcom/mh/movie/core/mvp/ui/widget/l$a;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->a:I

    .line 40
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->b:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->f:Ljava/util/List;

    .line 55
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->c:I

    .line 56
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->a:I

    .line 57
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->b:I

    .line 58
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 59
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->f:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/holder/m;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 65
    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/m;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->view_movie_card_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->c:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->b:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->a:I

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->e:Lcom/mh/movie/core/mvp/ui/widget/l$a;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/mh/movie/core/mvp/ui/holder/m;-><init>(Landroid/view/View;IIILcom/mh/movie/core/mvp/ui/widget/l$a;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/holder/m;I)V
    .locals 2
    .param p1    # Lcom/mh/movie/core/mvp/ui/holder/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    .line 71
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/m;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->c:I

    invoke-static {v1, p2, v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->buildViews(ILcom/mh/movie/core/mvp/model/entity/response/QueryListBean;Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/holder/m;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/l$a;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->e:Lcom/mh/movie/core/mvp/ui/widget/l$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->d:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/m;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/l;->a(Lcom/mh/movie/core/mvp/ui/holder/m;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/l;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/holder/m;

    move-result-object p1

    return-object p1
.end method
