.class public final Lcom/mh/movie/core/mvp/presenter/di;
.super Ljava/lang/Object;
.source "TaskPresenter_MembersInjector.java"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b<",
        "Lcom/mh/movie/core/mvp/presenter/TaskPresenter;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;Landroid/app/Application;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;Lcom/jess/arms/http/imageloader/c;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;Lcom/jess/arms/integration/AppManager;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->h:Lcom/jess/arms/integration/AppManager;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/presenter/TaskPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/TaskPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    return-void
.end method
