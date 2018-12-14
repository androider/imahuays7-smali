.class public Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/s;
.source "CollectionActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/h$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/s<",
        "Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;",
        "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/h$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;"
    }
.end annotation


# instance fields
.field private i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

.field lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0241
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation
.end field

.field rlContent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02dd
    .end annotation
.end field

.field svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    sget p1, Lcom/mh/movie/core/R$layout;->activity_collection:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-static {}, Lcom/mh/movie/core/a/a/t;->a()Lcom/mh/movie/core/a/a/t$a;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/t$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/t$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/v;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/v;-><init>(Lcom/mh/movie/core/mvp/a/h$b;)V

    .line 59
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/t$a;->a(Lcom/mh/movie/core/a/b/v;)Lcom/mh/movie/core/a/a/t$a;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/t$a;->a()Lcom/mh/movie/core/a/a/h;

    move-result-object p1

    .line 61
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/h;->a(Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->a(I)V

    .line 73
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->a(Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    const-string v0, "collection"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setTipsType(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setNoDataShow(Z)V

    .line 77
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V

    .line 80
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Z)V

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->b()V

    .line 154
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    return-void
.end method

.method public handleNetWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 143
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Z)V

    return-void
.end method

.method public handleWifiNetWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 148
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Z)V

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 107
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Z)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 51
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Z)V

    return-void
.end method
