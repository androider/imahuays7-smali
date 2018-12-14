.class public Lcom/mh/movie/core/mvp/presenter/MoviePresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "MoviePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ac$a;",
        "Lcom/mh/movie/core/mvp/a/ac$b;",
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

.field i:I

.field j:I

.field l:Z


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ac$a;Lcom/mh/movie/core/mvp/a/ac$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x4

    .line 35
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->i:I

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->j:I

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/MoviePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/MoviePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/MoviePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/MoviePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ac$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ac$a;->a(I)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$3;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$4;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/MoviePresenter;)V

    .line 92
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/MoviePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 91
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 54
    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->j:I

    .line 55
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->l:Z

    goto :goto_0

    .line 56
    :cond_0
    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->l:Z

    if-eqz v2, :cond_1

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/ac$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, p2}, Lcom/mh/movie/core/mvp/a/ac$b;->a(Ljava/util/List;Z)V

    return-void

    .line 61
    :cond_1
    :goto_0
    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->j:I

    if-ne v2, v1, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v1, Lcom/mh/movie/core/mvp/a/ac$a;

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->j:I

    iget v3, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->i:I

    invoke-interface {v1, v2, v3, p1}, Lcom/mh/movie/core/mvp/a/ac$a;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->d:Lcom/jess/arms/mvp/c;

    .line 64
    invoke-virtual {p0, v1, v2, v0}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$1;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/MoviePresenter;)V

    .line 66
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v3, v0

    move-object v4, p0

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/mh/movie/core/mvp/presenter/MoviePresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/MoviePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;ZZ)V

    .line 65
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 48
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 49
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MoviePresenter;->f:Landroid/app/Application;

    return-void
.end method
