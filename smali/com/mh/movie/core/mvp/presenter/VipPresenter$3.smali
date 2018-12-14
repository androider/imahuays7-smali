.class Lcom/mh/movie/core/mvp/presenter/VipPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "VipPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/VipPresenter;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/VipPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter$3;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->d(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->e(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->f(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
