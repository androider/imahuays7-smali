.class public Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/h;
.source "LeaderBoardFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/w$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/h<",
        "Lcom/mh/movie/core/mvp/presenter/LeaderBoardPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/w$b;"
    }
.end annotation


# instance fields
.field c:Lbutterknife/Unbinder;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;",
            ">;"
        }
    .end annotation
.end field

.field loadMore:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0245
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;",
            ">;)",
            "Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;-><init>()V

    .line 52
    iput-object p0, v0, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->d:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->a(Ljava/lang/String;Z)V

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

    .line 68
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_leader_board:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->loadMore:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/s;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/s;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->loadMore:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 77
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/g;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/g;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/s;->a(Lcom/mh/movie/core/mvp/ui/adapter/s$a;)V

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/s;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-static {}, Lcom/mh/movie/core/a/a/ai;->a()Lcom/mh/movie/core/a/a/ai$a;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ai$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ai$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/bi;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/bi;-><init>(Lcom/mh/movie/core/mvp/a/w$b;)V

    .line 61
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ai$a;->a(Lcom/mh/movie/core/a/b/bi;)Lcom/mh/movie/core/a/a/ai$a;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ai$a;->a()Lcom/mh/movie/core/a/a/cg;

    move-result-object p1

    .line 63
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cg;->a(Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;)V

    return-void
.end method

.method final synthetic a(Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 121
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->c:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onDestroyView()V

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->c:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method
