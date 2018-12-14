.class public Lcom/mh/movie/core/mvp/presenter/MainPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "MainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/x$a;",
        "Lcom/mh/movie/core/mvp/a/x$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/x$a;Lcom/mh/movie/core/mvp/a/x$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/MainPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/MainPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public e()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/x$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/x$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/MainPresenter$1;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/MainPresenter$2;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/MainPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/MainPresenter;)V

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/MainPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MainPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/MainPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/x$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/x$a;->a(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/MainPresenter$3;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MainPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/MainPresenter$4;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/MainPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/MainPresenter;)V

    .line 64
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/MainPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MainPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/MainPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 63
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
