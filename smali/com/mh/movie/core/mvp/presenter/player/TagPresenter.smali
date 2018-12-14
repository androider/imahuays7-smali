.class public Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "TagPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/b/d$a;",
        "Lcom/mh/movie/core/mvp/a/b/d$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/b/d$a;Lcom/mh/movie/core/mvp/a/b/d$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;III)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/d$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/a/b/d$a;->a(Ljava/lang/String;III)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->f:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 p4, 0x0

    .line 51
    invoke-virtual {p0, p2, p3, p4}, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter$1;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance p4, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter$2;

    invoke-direct {p4, p0}, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;)V

    .line 53
    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4}, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 52
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->f:Landroid/app/Application;

    return-void
.end method
