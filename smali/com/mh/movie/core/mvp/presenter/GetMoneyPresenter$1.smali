.class Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "GetMoneyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->a(Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/t$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/t$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;)V

    return-void
.end method
