.class public Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "GetMoneyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/t$a;",
        "Lcom/mh/movie/core/mvp/a/t$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/t$a;Lcom/mh/movie/core/mvp/a/t$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/t$a;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/t$a;->a(J)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;)V

    .line 50
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->f:Landroid/app/Application;

    return-void
.end method
