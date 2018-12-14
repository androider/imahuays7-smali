.class public Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "ExperienceRecordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/p$a;",
        "Lcom/mh/movie/core/mvp/a/p$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/p$a;Lcom/mh/movie/core/mvp/a/p$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/p$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/p$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 51
    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;)V

    .line 53
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 52
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExperienceRecordPresenter;->f:Landroid/app/Application;

    return-void
.end method
