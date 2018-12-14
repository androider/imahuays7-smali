.class Lcom/mh/movie/core/mvp/presenter/SearchPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->a(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SearchPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SearchPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SearchPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->a(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/au$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/au$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SearchPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->b(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/au$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/au$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SearchPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->c(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/au$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/au$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
