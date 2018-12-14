.class Lcom/mh/movie/core/mvp/presenter/VipPresenter$5;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "VipPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/VipPresenter;->e()V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/VipPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->g(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    .line 106
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getMoney()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setMoney(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter$5;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->h(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->i(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
