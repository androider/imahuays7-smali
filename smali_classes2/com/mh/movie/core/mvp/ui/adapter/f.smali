.class public Lcom/mh/movie/core/mvp/ui/adapter/f;
.super Lcom/mh/movie/core/mvp/ui/adapter/r;
.source "HeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/f$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/f$b;,
        Lcom/mh/movie/core/mvp/ui/adapter/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mh/movie/core/mvp/ui/adapter/r<",
        "Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Lcom/mh/movie/core/mvp/ui/adapter/f$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/r;-><init>()V

    .line 47
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->a:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/f;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/adapter/f;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->a:I

    return p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/adapter/f;)Lcom/mh/movie/core/mvp/ui/adapter/f$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$a;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->a:I

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 123
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public a(ILcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V
    .locals 5

    .line 137
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->b(I)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getHeadPushSwitch()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    .line 140
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->setCurrentPage(I)V

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->setQueryList(Ljava/util/List;)V

    .line 145
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    .line 148
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->setCurrentPage(I)V

    .line 149
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->setQueryList(Ljava/util/List;)V

    .line 150
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->notifyItemChanged(I)V

    return-void
.end method

.method public a(Landroid/content/Context;II)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;->getVideoInfoId()I

    move-result p2

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->a:I

    .line 249
    invoke-static {p3}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->getWatchFrom(I)I

    move-result p3

    .line 248
    invoke-static {p1, v0, p2, p3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->notifyItemInserted(I)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/ui/adapter/f<",
            "TT;>.b;TT;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/f$c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/ui/adapter/f$c;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public b(I)I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 69
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(I)I

    move-result p1

    return p1

    .line 71
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/f;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/f;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 103
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/f$b;

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Lcom/mh/movie/core/mvp/ui/adapter/f$b;Ljava/lang/Object;)V

    return-void

    .line 108
    :cond_1
    instance-of v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/f;->getItemViewType(I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 109
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/f;->a(Lcom/mh/movie/core/mvp/ui/adapter/f$c;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->b:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/f$c;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f;Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->header_four_type:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/f$b;

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f$b;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f;Landroid/view/View;)V

    return-object p2

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->item_movie:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/f$c;

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/f$c;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/f;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/mh/movie/core/mvp/ui/adapter/f$a;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/f;->c:Lcom/mh/movie/core/mvp/ui/adapter/f$a;

    return-void
.end method
