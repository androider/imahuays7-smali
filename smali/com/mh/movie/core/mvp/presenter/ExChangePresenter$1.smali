.class Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "ExChangePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCommodityInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getMoney()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setMoney(I)V

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/n$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    const-string v0, "0021"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0022"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0023"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->c(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/n$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/n$b;->c()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->b(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/n$b;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/n$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
