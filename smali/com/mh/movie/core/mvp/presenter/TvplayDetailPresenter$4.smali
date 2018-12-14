.class Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$4;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "TvplayDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(IIJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$4;->b:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$4;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$4;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$4;->b:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->b(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bf$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$4;->a:I

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/a/bf$b;->a(Ljava/util/List;I)V

    return-void
.end method
