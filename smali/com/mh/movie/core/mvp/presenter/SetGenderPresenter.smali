.class public Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "SetGenderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ax$a;",
        "Lcom/mh/movie/core/mvp/a/ax$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ax$a;Lcom/mh/movie/core/mvp/a/ax$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 47
    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p2, Lcom/mh/movie/core/mvp/a/ax$a;

    invoke-interface {p2, p1}, Lcom/mh/movie/core/mvp/a/ax$a;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->f:Landroid/app/Application;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;)V

    .line 49
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 41
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 42
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;->f:Landroid/app/Application;

    return-void
.end method
