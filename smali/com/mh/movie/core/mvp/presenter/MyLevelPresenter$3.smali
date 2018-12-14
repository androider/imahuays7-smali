.class Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MyLevelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ai$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ai$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$3;->a(Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->e(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ai$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/ai$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->f(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ai$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/ai$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
