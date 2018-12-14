.class public Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "ExChangeActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/n$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/n$b;"
    }
.end annotation


# instance fields
.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field e:I

.field f:J

.field g:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field h:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field linearChanged:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01ad
    .end annotation
.end field

.field linearUnExchange:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c022b
    .end annotation
.end field

.field nsvScroll:Landroid/support/v4/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c027e
    .end annotation
.end field

.field recyclerChanged:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02bf
    .end annotation
.end field

.field recyclerUnchanged:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02c9
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

.field tvExchangeBalance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03d4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    .line 170
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Z)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->g:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 214
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Z)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->h:Lcom/mh/movie/core/mvp/ui/adapter/c;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->nsvScroll:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_redemptioncenter_screening:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_redemptioncenter_barrage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_redemptioncenter_download:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_redemptioncenter_download:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_redemptioncenter_download:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_redemptioncenter_ticket:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_redemptioncenter_vip:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$mipmap;->icon_missioncenter_hd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

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

    .line 86
    sget p1, Lcom/mh/movie/core/R$layout;->activity_ex_change:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-static {}, Lcom/mh/movie/core/a/a/z;->a()Lcom/mh/movie/core/a/a/z$a;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/z$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/z$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ak;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ak;-><init>(Lcom/mh/movie/core/mvp/a/n$b;)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/z$a;->a(Lcom/mh/movie/core/a/b/ak;)Lcom/mh/movie/core/a/a/z$a;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/z$a;->a()Lcom/mh/movie/core/a/a/bx;

    move-result-object p1

    .line 81
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/bx;->a(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 5

    .line 331
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getMoney()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->e:I

    .line 332
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->f:J

    .line 333
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->tvExchangeBalance:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 338
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCommodityInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 339
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    .line 341
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getAuthId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getHasFlag()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 343
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->linearChanged:Landroid/widget/LinearLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-lez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->g:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 355
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->linearUnExchange:Landroid/widget/LinearLayout;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v3, 0x0

    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->h:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
    .locals 0

    .line 385
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeCommodityText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 364
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Z)V

    .line 365
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->e()V

    goto :goto_0

    .line 367
    :cond_0
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    .line 368
    new-instance p2, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$6;

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 379
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->dismiss()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 92
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->e()V

    .line 93
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->f()V

    .line 94
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->g()V

    return-void
.end method

.method public b(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->onBackPressed()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 307
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e_()V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setCancelable(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public f()V
    .locals 3

    .line 151
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 152
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->recyclerChanged:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$2;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 159
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->recyclerChanged:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->g:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 160
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->recyclerUnchanged:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$3;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->recyclerUnchanged:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->h:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Z)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 324
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 326
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Z)V

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 116
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Z)V

    return-void
.end method
