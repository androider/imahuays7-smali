.class public Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "QuestionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ao$a;",
        "Lcom/mh/movie/core/mvp/a/ao$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ao$a;Lcom/mh/movie/core/mvp/a/ao$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ao$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ao$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;)V

    .line 50
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 49
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QuestionPresenter;->f:Landroid/app/Application;

    return-void
.end method
