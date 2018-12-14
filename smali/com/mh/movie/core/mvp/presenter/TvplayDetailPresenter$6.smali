.class Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$6;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "TvplayDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$6;->a:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V
    .locals 3

    .line 105
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->getCacheNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setRestCacheNum(I)V

    .line 106
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, ""

    const-string v2, "updateUserInfo"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$6;->a:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->c(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bf$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bf$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$6;->a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V

    return-void
.end method
