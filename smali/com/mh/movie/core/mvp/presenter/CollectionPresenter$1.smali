.class Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "CollectionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/h$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/h$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->b(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/h$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/h$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->c(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/h$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/h$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
