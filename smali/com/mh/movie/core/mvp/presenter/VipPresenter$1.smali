.class Lcom/mh/movie/core/mvp/presenter/VipPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "VipPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/VipPresenter;->a(I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/VipPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/VipPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$1;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->a(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/bh$b;

    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$1;->a:I

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/bh$b;->a(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->b(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$1;->a:I

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->c(Lcom/mh/movie/core/mvp/presenter/VipPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bh$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bh$b;->a(ZLjava/lang/Throwable;)V

    return-void
.end method
