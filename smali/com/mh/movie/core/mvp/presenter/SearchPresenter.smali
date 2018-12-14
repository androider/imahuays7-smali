.class public Lcom/mh/movie/core/mvp/presenter/SearchPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "SearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/au$a;",
        "Lcom/mh/movie/core/mvp/a/au$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/au$a;Lcom/mh/movie/core/mvp/a/au$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/au$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/au$a;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$3;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$4;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)V

    .line 78
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 77
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/au$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/a/au$a;->a(Ljava/lang/String;III)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->f:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 p4, 0x0

    .line 55
    invoke-virtual {p0, p2, p3, p4}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$1;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance p4, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$2;

    invoke-direct {p4, p0}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)V

    .line 58
    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 57
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 48
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 49
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 50
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public e()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/au$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/au$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$5;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SearchPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$6;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;)V

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SearchPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/SearchPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
