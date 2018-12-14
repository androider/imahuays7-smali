.class public Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "VipTvPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/bj$a;",
        "Lcom/mh/movie/core/mvp/a/bj$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/bj$a;Lcom/mh/movie/core/mvp/a/bj$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x1

    .line 35
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->i:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bj$a;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/mh/movie/core/mvp/a/bj$a;->a(IIII)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)V

    .line 54
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 53
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 48
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bj$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->i:I

    const/16 v2, 0xa

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/mh/movie/core/mvp/a/bj$a;->a(IIII)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$3;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$4;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)V

    .line 72
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 71
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bj$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bj$a;->a(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$5;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$6;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)V

    .line 90
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 89
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public d(I)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bj$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bj$a;->b(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$7;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$8;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)V

    .line 100
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 99
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
