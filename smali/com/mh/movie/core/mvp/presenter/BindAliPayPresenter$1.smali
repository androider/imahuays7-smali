.class Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "BindAliPayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;->a(Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/e$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/e$b;->c()V

    return-void
.end method
