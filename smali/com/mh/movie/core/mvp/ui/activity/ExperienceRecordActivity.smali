.class public Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "ExperienceRecordActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/p$b;"
    }
.end annotation


# instance fields
.field private c:Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;

.field llOperator:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01f5
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

.field wrapper:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04d3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    sget p1, Lcom/mh/movie/core/R$layout;->activity_experience_record:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Lcom/mh/movie/core/a/a/ab;->a()Lcom/mh/movie/core/a/a/ab$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ab$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ab$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/aq;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/aq;-><init>(Lcom/mh/movie/core/mvp/a/p$b;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ab$a;->a(Lcom/mh/movie/core/a/b/aq;)Lcom/mh/movie/core/a/a/ab$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ab$a;->a()Lcom/mh/movie/core/a/a/bz;

    move-result-object p1

    .line 56
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/bz;->a(Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

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

    .line 72
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;

    .line 73
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->r:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->wrapper:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->wrapper:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->a(Z)V

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->llOperator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result p1

    if-gez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 92
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->a(Z)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 97
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExperienceRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->a(Z)V

    return-void
.end method
