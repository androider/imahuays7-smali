.class public Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "BindBankPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/f$a;",
        "Lcom/mh/movie/core/mvp/a/f$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/f$a;Lcom/mh/movie/core/mvp/a/f$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;Z)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/f$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/f$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$2;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;)V

    .line 93
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 92
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, " "

    const-string v1, ""

    .line 58
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/f$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/f$a;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 52
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 53
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->f:Landroid/app/Application;

    return-void
.end method
