.class public Lcom/mh/movie/core/mvp/presenter/MorePresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "MorePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ab$a;",
        "Lcom/mh/movie/core/mvp/a/ab$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ab$a;Lcom/mh/movie/core/mvp/a/ab$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/16 p1, 0xa

    .line 38
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->i:I

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->j:I

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/MorePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->i:I

    return-void
.end method

.method public a(IIZ)V
    .locals 3

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->j:I

    .line 63
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->l:Z

    goto :goto_0

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->l:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/ab$b;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, p3}, Lcom/mh/movie/core/mvp/a/ab$b;->a(Ljava/util/List;Z)V

    return-void

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ab$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->j:I

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->i:I

    invoke-interface {v0, v1, v2, p2}, Lcom/mh/movie/core/mvp/a/ab$a;->a(III)Lio/reactivex/Observable;

    move-result-object p2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->d:Lcom/jess/arms/mvp/c;

    .line 69
    invoke-virtual {p0, v0, v1, p1}, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/MorePresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/MorePresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/MorePresenter;)V

    .line 71
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/MorePresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1, p3}, Lcom/mh/movie/core/mvp/presenter/MorePresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/MorePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Z)V

    .line 70
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 55
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 56
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 57
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->f:Landroid/app/Application;

    return-void
.end method
