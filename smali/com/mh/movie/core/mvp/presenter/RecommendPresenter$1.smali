.class Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "RecommendPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;ZZ)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    iput-boolean p4, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->a:Z

    iput-boolean p5, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->b:Z

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    iget v2, v2, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->i:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->l:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    .line 96
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->getQueryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->c(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/ar$b;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->b:Z

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/a/ar$b;->a(Ljava/util/List;Z)V

    .line 101
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    iget v0, p1, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->j:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->j:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ar$b;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->a:Z

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/ar$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->b(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ar$b;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;->a:Z

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/ar$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
