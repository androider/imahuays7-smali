.class public Lcom/mh/movie/core/mvp/presenter/SettingPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "SettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/az$a;",
        "Lcom/mh/movie/core/mvp/a/az$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/az$a;Lcom/mh/movie/core/mvp/a/az$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/az$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/az$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 61
    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)V

    .line 62
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 55
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 56
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/az$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/az$a;->c()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 84
    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$3;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$4;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)V

    .line 85
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->f:Landroid/app/Application;

    invoke-static {v0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 98
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/b/g;->g()Lio/reactivex/Observable;

    move-result-object v0

    .line 99
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$5;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$6;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)V

    .line 101
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 100
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/az$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/az$a;->d()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$7;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$8;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)V

    .line 114
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 113
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
