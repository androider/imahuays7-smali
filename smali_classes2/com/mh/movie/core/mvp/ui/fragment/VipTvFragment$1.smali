.class Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "VipTvFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;",
        "Lcom/mh/movie/core/mvp/ui/holder/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;[I)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;->a:[I

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/ac;
    .locals 4

    .line 105
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/ac;

    sget v1, Lcom/mh/movie/core/R$layout;->view_movie_card_content:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;->a:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    new-instance v3, Lcom/mh/movie/core/mvp/ui/fragment/ak;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/ui/fragment/ak;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/holder/ac;-><init>(Landroid/view/ViewGroup;IILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->c(I)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/ac;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;->a(Lcom/mh/movie/core/mvp/ui/holder/ac;Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/ac;Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;->b:Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    invoke-static {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;Lcom/mh/movie/core/mvp/ui/holder/ac;Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/ac;

    move-result-object p1

    return-object p1
.end method
