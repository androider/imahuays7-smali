.class public Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "RecommendPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ar$a;",
        "Lcom/mh/movie/core/mvp/a/ar$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ar$a;Lcom/mh/movie/core/mvp/a/ar$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x4

    .line 41
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->i:I

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->j:I

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ar$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ar$a;->a(I)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$3;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$4;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)V

    .line 111
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 110
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ar$a;

    invoke-interface {v0, p2, p3, p4}, Lcom/mh/movie/core/mvp/a/ar$a;->b(III)Lio/reactivex/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->f:Landroid/app/Application;

    iget-object p4, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p3, p4, v0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$5;

    iget-object p4, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$6;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)V

    .line 123
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p3, p0, p4, v0, p1}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 122
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 61
    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->j:I

    .line 62
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->l:Z

    goto :goto_0

    .line 63
    :cond_0
    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->l:Z

    if-eqz v2, :cond_1

    .line 64
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/ar$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, p2}, Lcom/mh/movie/core/mvp/a/ar$b;->a(Ljava/util/List;Z)V

    return-void

    .line 68
    :cond_1
    :goto_0
    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->j:I

    if-ne v2, v1, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 70
    :goto_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v1, Lcom/mh/movie/core/mvp/a/ar$a;

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->j:I

    iget v3, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->i:I

    invoke-interface {v1, p1, v2, v3}, Lcom/mh/movie/core/mvp/a/ar$a;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 71
    invoke-virtual {p0, v1, v2, v0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;)V

    .line 73
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v3, v0

    move-object v4, p0

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;ZZ)V

    .line 72
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 55
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 56
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;->f:Landroid/app/Application;

    return-void
.end method
