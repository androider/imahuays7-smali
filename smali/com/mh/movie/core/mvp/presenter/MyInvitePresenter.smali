.class public Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "MyInvitePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ah$a;",
        "Lcom/mh/movie/core/mvp/a/ah$b;",
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


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ah$a;Lcom/mh/movie/core/mvp/a/ah$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->i:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public e()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ah$a;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/ah$a;->a(II)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$2;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)V

    .line 52
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 51
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ah$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->i:I

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/ah$a;->a(II)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$3;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$4;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;)V

    .line 80
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/MyInvitePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 79
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
