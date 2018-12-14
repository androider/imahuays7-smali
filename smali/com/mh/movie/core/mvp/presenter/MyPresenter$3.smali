.class Lcom/mh/movie/core/mvp/presenter/MyPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/MyPresenter;->b(Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/MyPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/MyPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MyPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 94
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setProMark(Z)V

    .line 96
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MyPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/MyPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/MyPresenter;->b(Lcom/mh/movie/core/mvp/presenter/MyPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/ag$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/ag$b;->c()V

    return-void
.end method
