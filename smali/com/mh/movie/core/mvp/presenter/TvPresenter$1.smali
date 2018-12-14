.class Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "TvPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/TvPresenter;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/mh/movie/core/mvp/presenter/TvPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/TvPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;ZZ)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/TvPresenter;

    iput-boolean p4, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->a:Z

    iput-boolean p5, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->b:Z

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/TvPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TvPresenter;->a(Lcom/mh/movie/core/mvp/presenter/TvPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/be$b;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->a:Z

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/a/be$b;->a(Ljava/util/List;Z)V

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/TvPresenter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/TvPresenter;

    iget v1, v1, Lcom/mh/movie/core/mvp/presenter/TvPresenter;->i:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/mh/movie/core/mvp/presenter/TvPresenter;->l:Z

    .line 71
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/TvPresenter;

    iget v0, p1, Lcom/mh/movie/core/mvp/presenter/TvPresenter;->j:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/mh/movie/core/mvp/presenter/TvPresenter;->j:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/TvPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TvPresenter;->b(Lcom/mh/movie/core/mvp/presenter/TvPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/be$b;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->b:Z

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/be$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->c:Lcom/mh/movie/core/mvp/presenter/TvPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TvPresenter;->c(Lcom/mh/movie/core/mvp/presenter/TvPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/be$b;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/TvPresenter$1;->b:Z

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/be$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
