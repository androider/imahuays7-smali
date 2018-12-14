.class public Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;
.super Lcom/jess/arms/mvp/BasePresenter;
.source "HelpAndFeedBackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/mvp/BasePresenter<",
        "Lcom/mh/movie/core/mvp/a/v$a;",
        "Lcom/mh/movie/core/mvp/a/v$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/v$a;Lcom/mh/movie/core/mvp/a/v$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/jess/arms/mvp/BasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/jess/arms/mvp/BasePresenter;->b()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 36
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 37
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 38
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;->f:Landroid/app/Application;

    return-void
.end method
