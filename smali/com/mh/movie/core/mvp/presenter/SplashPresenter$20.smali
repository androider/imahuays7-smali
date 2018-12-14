.class Lcom/mh/movie/core/mvp/presenter/SplashPresenter$20;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SplashPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->j()V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$20;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 1

    .line 227
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCommodityInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$20;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 224
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$20;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    return-void
.end method
