.class public Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "MyLevelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ai$a;",
        "Lcom/mh/movie/core/mvp/a/ai$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ai$a;Lcom/mh/movie/core/mvp/a/ai$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ai$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/ai$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 55
    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)V

    .line 56
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 48
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 49
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ai$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/ai$a;->c()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 76
    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$3;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$4;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)V

    .line 77
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ai$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/ai$a;->d()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 97
    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$5;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$6;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;)V

    .line 98
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
