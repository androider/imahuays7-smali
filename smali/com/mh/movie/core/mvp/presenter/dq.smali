.class public final Lcom/mh/movie/core/mvp/presenter/dq;
.super Ljava/lang/Object;
.source "UserPresenter_MembersInjector.java"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b<",
        "Lcom/mh/movie/core/mvp/presenter/UserPresenter;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Landroid/app/Application;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->g:Landroid/app/Application;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->i:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Lcom/jess/arms/integration/AppManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->f:Lcom/jess/arms/integration/AppManager;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/presenter/UserPresenter;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->h:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    return-void
.end method
