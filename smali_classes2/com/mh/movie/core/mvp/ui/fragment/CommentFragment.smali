.class public Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;
.super Lcom/jess/arms/a/e;
.source "CommentFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/i$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/e<",
        "Lcom/mh/movie/core/mvp/presenter/CommentPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/i$b;"
    }
.end annotation


# instance fields
.field c:Lbutterknife/Unbinder;

.field d:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

.field e:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

.field h:Lcom/mh/movie/core/mvp/ui/holder/h$a;

.field i:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

.field noCommendTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0273
    .end annotation
.end field

.field rvPlayerDetailCommend:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c030c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/jess/arms/a/e;-><init>()V

    .line 60
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->d:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 144
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->h:Lcom/mh/movie/core/mvp/ui/holder/h$a;

    .line 169
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->i:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 107
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$1;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;Landroid/content/Context;)V

    .line 113
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->rvPlayerDetailCommend:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->rvPlayerDetailCommend:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->rvPlayerDetailCommend:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 116
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$2;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->rvPlayerDetailCommend:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_comment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(IILjava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 212
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getApproveNum()I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->setApproveNum(I)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->setIsApprove(I)V

    .line 214
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 218
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getApproveNum()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->setApproveNum(I)V

    .line 219
    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->setIsApprove(I)V

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemChanged(I)V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(IILjava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e()V

    .line 96
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->d()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-static {}, Lcom/mh/movie/core/a/a/u;->a()Lcom/mh/movie/core/a/a/u$a;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/u$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/u$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ae;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ae;-><init>(Lcom/mh/movie/core/mvp/a/i$b;)V

    .line 83
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/u$a;->a(Lcom/mh/movie/core/a/b/ae;)Lcom/mh/movie/core/a/a/u$a;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/u$a;->a()Lcom/mh/movie/core/a/a/i;

    move-result-object p1

    .line 85
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/i;->a(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->notifyItemInserted(I)V

    .line 203
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->noCommendTips:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->noCommendTips:Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;I)V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 289
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->f:Ljava/util/List;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->noCommendTips:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->noCommendTips:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;I)V"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->f(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;I)V"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->g(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->g:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->g:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getVideoInfoId()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->g:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->g:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(IIILcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    .line 165
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->i:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;)V

    :cond_0
    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 258
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 276
    invoke-super {p0, p1, p2, p3}, Lcom/jess/arms/a/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 277
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->c:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/jess/arms/a/e;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->f:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 283
    invoke-super {p0}, Lcom/jess/arms/a/e;->onDestroyView()V

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->c:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method
