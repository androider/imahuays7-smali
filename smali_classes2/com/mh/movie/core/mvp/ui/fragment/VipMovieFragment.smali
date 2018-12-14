.class public Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;
.super Lcom/jess/arms/a/e;
.source "VipMovieFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bi$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/e<",
        "Lcom/mh/movie/core/mvp/presenter/VipMoviePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/bi$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Lbutterknife/Unbinder;

.field recyclerVipMovie:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02cd
    .end annotation
.end field


# direct methods
.method private c()V
    .locals 5

    .line 73
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->convertParams(ILandroid/content/Context;)[I

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->recyclerVipMovie:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->recyclerVipMovie:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/s;

    const/16 v4, 0xa

    invoke-direct {v3, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/s;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 76
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->recyclerVipMovie:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;[I)V

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->recyclerVipMovie:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    const-string v2, ""

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->recyclerVipMovie:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

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

    .line 62
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_vip_movie:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->c()V

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->d()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-static {}, Lcom/mh/movie/core/a/a/bs;->a()Lcom/mh/movie/core/a/a/bs$a;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bs$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bs$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/fn;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fn;-><init>(Lcom/mh/movie/core/mvp/a/bi$b;)V

    .line 55
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bs$a;->a(Lcom/mh/movie/core/a/b/fn;)Lcom/mh/movie/core/a/a/bs$a;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bs$a;->a()Lcom/mh/movie/core/a/a/dq;

    move-result-object p1

    .line 57
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dq;->a(Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;)V

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

    .line 153
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/jess/arms/a/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 172
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->c:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/jess/arms/a/e;->onDestroyView()V

    .line 179
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;->c:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method
