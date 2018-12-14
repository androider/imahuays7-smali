.class public Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "QuickLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/c/a$a;",
        "Lcom/mh/movie/core/mvp/a/c/a$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/c/a$a;Lcom/mh/movie/core/mvp/a/c/a$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/c/a$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/c/a$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 93
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$3;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)V

    .line 94
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V
    .locals 2

    .line 67
    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p2, Lcom/mh/movie/core/mvp/a/c/a$a;

    invoke-interface {p2, p1}, Lcom/mh/movie/core/mvp/a/c/a$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->f:Landroid/app/Application;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)V

    .line 69
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 60
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 61
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 62
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/c/a$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/c/a$a;->b(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 137
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$5;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$6;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)V

    .line 138
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->f:Landroid/app/Application;

    invoke-static {v0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 173
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/b/g;->g()Lio/reactivex/Observable;

    move-result-object v0

    .line 174
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$7;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$8;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;)V

    .line 176
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 175
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
