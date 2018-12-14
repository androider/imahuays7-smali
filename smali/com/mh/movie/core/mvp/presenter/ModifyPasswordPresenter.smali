.class public Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "ModifyPasswordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/aa$a;",
        "Lcom/mh/movie/core/mvp/a/aa$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/aa$a;Lcom/mh/movie/core/mvp/a/aa$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/aa$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/aa$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 64
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$3;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;)V

    .line 65
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/aa$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/aa$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 53
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;)V

    .line 54
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 48
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->f:Landroid/app/Application;

    return-void
.end method
