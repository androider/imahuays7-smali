.class public Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "MyInviteActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ah$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;
.implements Lcom/mh/movie/core/mvp/ui/widget/StateView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ah$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;",
        "Lcom/mh/movie/core/mvp/ui/widget/StateView$a;"
    }
.end annotation


# instance fields
.field private c:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field llContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01cf
    .end annotation
.end field

.field llTitle:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01dd
    .end annotation
.end field

.field recyclerInvite:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02c2
    .end annotation
.end field

.field svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035b
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

    .line 41
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ag;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/ag;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setCallBack(Lcom/mh/movie/core/mvp/ui/widget/StateView$a;)V

    .line 102
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->e()V

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

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

    .line 69
    sget p1, Lcom/mh/movie/core/R$layout;->activity_my_invite:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 97
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    invoke-static {}, Lcom/mh/movie/core/a/a/as;->a()Lcom/mh/movie/core/a/a/as$a;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/as$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/as$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/cg;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/cg;-><init>(Lcom/mh/movie/core/mvp/a/ah$b;)V

    .line 62
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/as$a;->a(Lcom/mh/movie/core/a/b/cg;)Lcom/mh/movie/core/a/a/as$a;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/as$a;->a()Lcom/mh/movie/core/a/a/cq;

    move-result-object p1

    .line 64
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cq;->a(Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->llTitle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->recyclerInvite:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->llTitle:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->recyclerInvite:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    .line 171
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
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

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 75
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->f()V

    .line 76
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->k()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->recyclerInvite:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->recyclerInvite:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->f()V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 109
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->recyclerInvite:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->r:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->recyclerInvite:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->recyclerInvite:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V

    return-void
.end method

.method public g()V
    .locals 3

    .line 203
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 87
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->e()V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 93
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->e()V

    return-void
.end method
