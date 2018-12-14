.class public Lcom/mh/movie/core/mvp/presenter/TaskPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "TaskPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/bd$a;",
        "Lcom/mh/movie/core/mvp/a/bd$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/bd$a;Lcom/mh/movie/core/mvp/a/bd$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bd$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/bd$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)V

    .line 50
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 49
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 42
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bd$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/bd$a;->c()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$3;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$4;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;)V

    .line 81
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/TaskPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 80
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
