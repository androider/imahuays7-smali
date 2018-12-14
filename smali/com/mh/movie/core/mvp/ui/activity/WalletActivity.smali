.class public Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "WalletActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bk$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/WalletPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/bk$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field d:I

.field llContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01cf
    .end annotation
.end field

.field recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02c4
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

.field tvMakeMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03f8
    .end annotation
.end field

.field tvMoneyBalance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0405
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const-string v1, "no_record"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setTipsType(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 104
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9ebb\u82b1\u5e01\u660e\u7ec6"

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->r:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$color;->text_23:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->r:Landroid/content/Context;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e()V

    .line 155
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->tvMakeMoney:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/bd;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/bd;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

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

    .line 75
    sget p1, Lcom/mh/movie/core/R$layout;->activity_wallet:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 156
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string v0, "msg"

    const-string v1, "make_money"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->finish()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    invoke-static {}, Lcom/mh/movie/core/a/a/bu;->a()Lcom/mh/movie/core/a/a/bu$a;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bu$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bu$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ft;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ft;-><init>(Lcom/mh/movie/core/mvp/a/bk$b;)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bu$a;->a(Lcom/mh/movie/core/a/b/ft;)Lcom/mh/movie/core/a/a/bu$a;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bu$a;->a()Lcom/mh/movie/core/a/a/ds;

    move-result-object p1

    .line 70
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/ds;->a(Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;)V
    .locals 3

    .line 212
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getMoney()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->d:I

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->tvMoneyBalance:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

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

    .line 80
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 81
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->g()V

    .line 82
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->h()V

    return-void
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;)V
    .locals 2

    .line 223
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 148
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setMoney(I)V

    .line 149
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->onBackPressed()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 187
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->f()V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e()V

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e()V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 128
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e()V

    return-void
.end method
