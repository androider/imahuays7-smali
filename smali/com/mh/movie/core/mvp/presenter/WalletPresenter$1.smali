.class Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "WalletPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e()V
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

    .line 53
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;)V
    .locals 2

    .line 56
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getAccountLogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->a(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;I)I

    .line 59
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->getMoney()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setMoney(I)V

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->a(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bk$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bk$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    const-string v0, "0021"

    .line 72
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

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->c(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/bk$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/bk$b;->c()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->b(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bk$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bk$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/WalletPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bk$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bk$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
