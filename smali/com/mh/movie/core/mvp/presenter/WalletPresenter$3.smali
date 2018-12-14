.class Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "WalletPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;)V
    .locals 1

    .line 91
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)I

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->f(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bk$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bk$b;->b(Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;->a(Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->g(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bk$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bk$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->h(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bk$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bk$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
