.class public Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "ExchangeRecordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/o$a;",
        "Lcom/mh/movie/core/mvp/a/o$b;",
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


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/o$a;Lcom/mh/movie/core/mvp/a/o$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/16 p1, 0xa

    .line 35
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->i:I

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->j:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 47
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 48
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 49
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public e()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/o$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->i:I

    const-string v2, "druid6"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/mh/movie/core/mvp/a/o$a;->a(IILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$1;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$2;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;)V

    .line 56
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 55
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/o$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->i:I

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->j:I

    const-string v3, "druid6"

    invoke-interface {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/a/o$a;->a(IILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$3;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$4;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;)V

    .line 70
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 69
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
