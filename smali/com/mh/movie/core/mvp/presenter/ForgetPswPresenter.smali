.class public Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "ForgetPswPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/s$a;",
        "Lcom/mh/movie/core/mvp/a/s$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/s$a;Lcom/mh/movie/core/mvp/a/s$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/s$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/s$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 83
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;)V

    .line 85
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 84
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V
    .locals 2

    .line 57
    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p2, Lcom/mh/movie/core/mvp/a/s$a;

    invoke-interface {p2, p1}, Lcom/mh/movie/core/mvp/a/s$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->f:Landroid/app/Application;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;)V

    .line 60
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 59
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 51
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 52
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 53
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->f:Landroid/app/Application;

    return-void
.end method
