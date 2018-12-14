.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$46;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1335
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$46;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 3

    .line 1338
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCommodityInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$46;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    .line 1341
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getMoney()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setMoney(I)V

    .line 1342
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCommodityInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1343
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1344
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    .line 1345
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getAuthId()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1346
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$46;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->V(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V

    return-void

    .line 1351
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$46;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->W(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1335
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$46;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    return-void
.end method
