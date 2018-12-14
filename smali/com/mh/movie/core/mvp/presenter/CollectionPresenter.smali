.class public Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "CollectionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/h$a;",
        "Lcom/mh/movie/core/mvp/a/h$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/h$a;Lcom/mh/movie/core/mvp/a/h$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 74
    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p2, Lcom/mh/movie/core/mvp/a/h$a;

    invoke-interface {p2, p1}, Lcom/mh/movie/core/mvp/a/h$a;->a(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->f:Landroid/app/Application;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$3;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)V

    .line 76
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 50
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p1, Lcom/mh/movie/core/mvp/a/h$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/h$a;->b()Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)V

    .line 52
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->f:Landroid/app/Application;

    return-void
.end method
