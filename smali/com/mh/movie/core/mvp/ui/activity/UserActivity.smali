.class public Lcom/mh/movie/core/mvp/ui/activity/UserActivity;
.super Lcom/jess/arms/a/b;
.source "UserActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/mh/movie/core/mvp/a/bg$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/b<",
        "Lcom/mh/movie/core/mvp/presenter/UserPresenter;",
        ">;",
        "Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;",
        "Lcom/mh/movie/core/mvp/a/bg$b;"
    }
.end annotation


# instance fields
.field c:Lcom/tbruyelle/rxpermissions2/RxPermissions;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Lcom/paginate/a;

.field private g:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02bc
    .end annotation
.end field

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/jess/arms/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->g:Z

    return p0
.end method

.method private f()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v0, v1}, Lcom/jess/arms/c/a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->f:Lcom/paginate/a;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/UserActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)V

    .line 187
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Lcom/paginate/a;->a(Landroid/support/v7/widget/RecyclerView;Lcom/paginate/a$a;)Lcom/paginate/a/d$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Lcom/paginate/a/d$a;->a(I)Lcom/paginate/a/d$a;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/paginate/a/d$a;->a()Lcom/paginate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->f:Lcom/paginate/a;

    .line 190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->f:Lcom/paginate/a;

    invoke-virtual {v0, v1}, Lcom/paginate/a;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    sget p1, Lcom/mh/movie/core/R$layout;->activity_user:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-static {}, Lcom/mh/movie/core/a/a/bq;->a()Lcom/mh/movie/core/a/a/bq$a;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bq$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bq$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/fd;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fd;-><init>(Lcom/mh/movie/core/mvp/a/bg$b;)V

    .line 78
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bq$a;->a(Lcom/mh/movie/core/a/b/fd;)Lcom/mh/movie/core/a/a/bq$a;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bq$a;->a()Lcom/mh/movie/core/a/a/do;

    move-result-object p1

    .line 80
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/do;->a(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v0

    const-string v1, "hideLoading"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->f()V

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->e:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 92
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->g()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->g:Z

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->g:Z

    return-void
.end method

.method public e()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public e_()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v0

    const-string v1, "showLoading"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lb/a/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/jess/arms/a/i;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 197
    invoke-super {p0}, Lcom/jess/arms/a/b;->onDestroy()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->c:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 199
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->f:Lcom/paginate/a;

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->a(Z)V

    return-void
.end method
