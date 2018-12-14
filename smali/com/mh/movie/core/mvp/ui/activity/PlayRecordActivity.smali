.class public Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/s;
.source "PlayRecordActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/am$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/s<",
        "Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;",
        "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/am$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field private i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

.field lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0245
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper<",
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

    .line 42
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

    .line 72
    sget p1, Lcom/mh/movie/core/R$layout;->activity_play_record:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-static {}, Lcom/mh/movie/core/a/a/ax;->a()Lcom/mh/movie/core/a/a/ax$a;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ax$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ax$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/cy;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/cy;-><init>(Lcom/mh/movie/core/mvp/a/am$b;)V

    .line 65
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ax$a;->a(Lcom/mh/movie/core/a/b/cy;)Lcom/mh/movie/core/a/a/ax$a;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ax$a;->a()Lcom/mh/movie/core/a/a/cv;

    move-result-object p1

    .line 67
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cv;->a(Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;)V

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

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/Set;)V
    .locals 5
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

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;->a(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

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

    .line 78
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->a(I)V

    .line 80
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->a(Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const-string v1, "playRecord"

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setTipsType(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 83
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setNoDataShow(Z)V

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;->a(Z)V

    .line 87
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result p1

    if-gez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->b()V

    .line 132
    invoke-static {}, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->getPlayRecordStore()Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->deletePlayRecordList(Ljava/util/List;)V

    .line 133
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->c()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;->a(Z)V

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 157
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 158
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;->a(Z)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 152
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 163
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 164
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/PlayRecordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;->a(Z)V

    return-void
.end method
