.class public Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "HeaderImgPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/u$a;",
        "Lcom/mh/movie/core/mvp/a/u$b;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/jess/arms/http/imageloader/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/jess/arms/integration/AppManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/u$a;Lcom/mh/movie/core/mvp/a/u$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .line 62
    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p2, Lcom/mh/movie/core/mvp/a/u$a;

    invoke-interface {p2, p1}, Lcom/mh/movie/core/mvp/a/u$a;->a(I)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->f:Landroid/app/Application;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$3;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;)V

    .line 64
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 51
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p1, Lcom/mh/movie/core/mvp/a/u$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/u$a;->b()Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;)V

    .line 53
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;->f:Landroid/app/Application;

    return-void
.end method
