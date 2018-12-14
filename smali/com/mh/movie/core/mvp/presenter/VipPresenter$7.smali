.class Lcom/mh/movie/core/mvp/presenter/VipPresenter$7;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "VipPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/VipPresenter;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/VipPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$7;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$7;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->e()V

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$7;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->j(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/bh$b;

    const-string v0, "success"

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/mh/movie/core/mvp/a/bh$b;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$7;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->k(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 141
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 142
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$7;->a:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->l(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
