.class public Lcom/mh/movie/core/mvp/presenter/WalletPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "WalletPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/bk$a;",
        "Lcom/mh/movie/core/mvp/a/bk$b;",
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

.field private i:I


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/bk$a;Lcom/mh/movie/core/mvp/a/bk$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->i:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->i:I

    return p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->i:I

    return v0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public e()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bk$a;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/bk$a;->a(II)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$2;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)V

    .line 53
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 52
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bk$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->i:I

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/bk$a;->a(II)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/WalletPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$4;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;)V

    .line 88
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/WalletPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/WalletPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 87
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
