.class public Lcom/mh/movie/core/mvp/presenter/MessagePresenter;
.super Lcom/jess/arms/mvp/BasePresenter;
.source "MessagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/mvp/BasePresenter<",
        "Lcom/mh/movie/core/mvp/a/z$a;",
        "Lcom/mh/movie/core/mvp/a/z$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/z$a;Lcom/mh/movie/core/mvp/a/z$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/jess/arms/mvp/BasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/jess/arms/mvp/BasePresenter;->b()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MessagePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 37
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MessagePresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 38
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MessagePresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MessagePresenter;->f:Landroid/app/Application;

    return-void
.end method
