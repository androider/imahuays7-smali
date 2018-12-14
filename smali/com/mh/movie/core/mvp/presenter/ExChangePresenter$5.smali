.class Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$5;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "ExChangePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->i(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/n$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$5;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    return-void
.end method
