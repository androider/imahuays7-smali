.class public Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "CommentMessageActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/k$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/CommentMessagePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/k$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field lmwMessageComment:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0242
    .end annotation
.end field

.field mMvState:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c026e
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->lmwMessageComment:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->r:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->lmwMessageComment:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private h()V
    .locals 5

    .line 95
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->r:Landroid/content/Context;

    const-string v3, "user_message_time_comment"

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f:Z

    const/4 v1, 0x1

    .line 99
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->h:Z

    .line 100
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->a(Z)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->a(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    sget p1, Lcom/mh/movie/core/R$layout;->activity_comment_message:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Lcom/mh/movie/core/a/a/w;->a()Lcom/mh/movie/core/a/a/w$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/w$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/w$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ab;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ab;-><init>(Lcom/mh/movie/core/mvp/a/k$b;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/w$a;->a(Lcom/mh/movie/core/a/b/ab;)Lcom/mh/movie/core/a/a/w$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/w$a;->a()Lcom/mh/movie/core/a/a/k;

    move-result-object p1

    .line 56
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/k;->a(Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->lmwMessageComment:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->mMvState:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 67
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->g()V

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->h()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
