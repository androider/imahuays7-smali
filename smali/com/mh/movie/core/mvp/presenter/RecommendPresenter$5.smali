.class Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$5;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "RecommendPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$5;->b:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$5;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$5;->b:Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->e(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ar$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$5;->a:I

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/ar$b;->a(ILcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$5;->a(Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;)V

    return-void
.end method
