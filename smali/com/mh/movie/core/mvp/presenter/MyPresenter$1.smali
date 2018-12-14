.class Lcom/mh/movie/core/mvp/presenter/MyPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/MyPresenter;->a(Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/MyPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/MyPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MyPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MyPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getMoney()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setMoney(I)V

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/MyPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MyPresenter;->a(Lcom/mh/movie/core/mvp/presenter/MyPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ag$b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getMoney()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ag$b;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/MyPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    return-void
.end method
