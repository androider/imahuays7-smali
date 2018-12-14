.class Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "TvplayDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bf$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bf$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V

    return-void
.end method
