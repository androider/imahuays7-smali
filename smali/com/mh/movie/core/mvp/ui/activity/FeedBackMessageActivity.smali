.class public Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "FeedBackMessageActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/r$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/FeedBackMessagePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/r$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field lmwMessageFeedBack:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0243
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

    .line 48
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->lmwMessageFeedBack:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->r:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->lmwMessageFeedBack:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private h()V
    .locals 5

    .line 118
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->r:Landroid/content/Context;

    const-string v3, "user_message_time_feed_back"

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f:Z

    const/4 v1, 0x1

    .line 122
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->h:Z

    .line 123
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->a(Z)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->a(Z)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/z;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/z;-><init>(Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    sget p1, Lcom/mh/movie/core/R$layout;->activity_feed_back_message:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 128
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-static {}, Lcom/mh/movie/core/a/a/ad;->a()Lcom/mh/movie/core/a/a/ad$a;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ad$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ad$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/at;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/at;-><init>(Lcom/mh/movie/core/mvp/a/r$b;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ad$a;->a(Lcom/mh/movie/core/a/b/at;)Lcom/mh/movie/core/a/a/ad$a;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ad$a;->a()Lcom/mh/movie/core/a/a/cb;

    move-result-object p1

    .line 65
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cb;->a(Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->lmwMessageFeedBack:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->mMvState:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 136
    sget v3, Lcom/mh/movie/core/R$id;->tv_empty:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "\u6682\u65e0\u6d88\u606f"

    .line 137
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->mMvState:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

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

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 76
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->g()V

    .line 77
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->h()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
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

    .line 171
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
