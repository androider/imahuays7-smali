.class public Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "SetInvitationBindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ay$a;",
        "Lcom/mh/movie/core/mvp/a/ay$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ay$a;Lcom/mh/movie/core/mvp/a/ay$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ay$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ay$a;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 48
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;)V

    .line 49
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 41
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 42
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 43
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->f:Landroid/app/Application;

    return-void
.end method
