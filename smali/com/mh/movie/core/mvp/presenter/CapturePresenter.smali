.class public Lcom/mh/movie/core/mvp/presenter/CapturePresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "CapturePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/g$a;",
        "Lcom/mh/movie/core/mvp/a/g$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/g$a;Lcom/mh/movie/core/mvp/a/g$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/CapturePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/g$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/g$a;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/CapturePresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/CapturePresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/CapturePresenter;)V

    .line 60
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/CapturePresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/CapturePresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/CapturePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 59
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 51
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 52
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 53
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->f:Landroid/app/Application;

    return-void
.end method
