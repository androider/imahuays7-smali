.class public Lcom/mh/movie/core/mvp/presenter/UserPresenter;
.super Lcom/jess/arms/mvp/BasePresenter;
.source "UserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/mvp/BasePresenter<",
        "Lcom/mh/movie/core/mvp/a/bg$a;",
        "Lcom/mh/movie/core/mvp/a/bg$b;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/jess/arms/integration/AppManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/bg$a;Lcom/mh/movie/core/mvp/a/bg$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/jess/arms/mvp/BasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x1

    .line 66
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->j:I

    .line 67
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->l:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->j:I

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/UserPresenter;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->l:I

    return p1
.end method

.method private c(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 92
    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->j:I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 98
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->k:Z

    if-eqz v1, :cond_1

    .line 99
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->k:Z

    goto :goto_0

    :cond_1
    move v0, p1

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v1, Lcom/mh/movie/core/mvp/a/bg$a;

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->j:I

    invoke-interface {v1, v2, v0}, Lcom/mh/movie/core/mvp/a/bg$a;->a(IZ)Lio/reactivex/Observable;

    move-result-object v0

    .line 104
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;-><init>(II)V

    .line 105
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/dn;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/presenter/dn;-><init>(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Z)V

    .line 106
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 111
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 112
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/do;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/presenter/do;-><init>(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Z)V

    .line 113
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 119
    invoke-static {v1}, Lcom/jess/arms/c/h;->a(Lcom/jess/arms/mvp/c;)Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    invoke-direct {v1, p0, v2, p1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Z)V

    .line 120
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->c(Z)V

    return-void
.end method

.method final synthetic a(ZLio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/bg$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/bg$b;->e_()V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/bg$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/bg$b;->c()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/jess/arms/mvp/BasePresenter;->b()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->i:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 140
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->h:Ljava/util/List;

    .line 141
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 142
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->f:Lcom/jess/arms/integration/AppManager;

    .line 143
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->g:Landroid/app/Application;

    return-void
.end method

.method final synthetic b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/bg$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/bg$b;->b()V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast p1, Lcom/mh/movie/core/mvp/a/bg$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/bg$b;->d()V

    :goto_0
    return-void
.end method

.method onCreate()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/k;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->a(Z)V

    return-void
.end method
