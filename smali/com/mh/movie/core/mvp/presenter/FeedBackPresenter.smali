.class public Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "FeedBackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/q$a;",
        "Lcom/mh/movie/core/mvp/a/q$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/q$a;Lcom/mh/movie/core/mvp/a/q$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;Z)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->checkNoNet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/q$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/q$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 49
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;)V

    .line 50
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 41
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->f:Landroid/app/Application;

    return-void
.end method
