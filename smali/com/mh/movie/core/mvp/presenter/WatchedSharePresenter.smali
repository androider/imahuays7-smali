.class public Lcom/mh/movie/core/mvp/presenter/WatchedSharePresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "WatchedSharePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/bl$a;",
        "Lcom/mh/movie/core/mvp/a/bl$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/bl$a;Lcom/mh/movie/core/mvp/a/bl$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WatchedSharePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WatchedSharePresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WatchedSharePresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 41
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/WatchedSharePresenter;->f:Landroid/app/Application;

    return-void
.end method
