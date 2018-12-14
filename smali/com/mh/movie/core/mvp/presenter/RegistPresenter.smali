.class public Lcom/mh/movie/core/mvp/presenter/RegistPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "RegistPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/as$a;",
        "Lcom/mh/movie/core/mvp/a/as$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/as$a;Lcom/mh/movie/core/mvp/a/as$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/as$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/as$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 85
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)V

    .line 87
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 86
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/as$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/as$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 62
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)V

    .line 64
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 63
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/as$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/as$a;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 119
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$5;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$6;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)V

    .line 121
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 120
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 55
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 56
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 57
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    return-void
.end method
