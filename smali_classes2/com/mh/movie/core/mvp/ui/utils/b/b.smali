.class public final Lcom/mh/movie/core/mvp/ui/utils/b/b;
.super Ljava/lang/Object;
.source "MobclickDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/model/a/a;

.field private b:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a()Lcom/jess/arms/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b;->a:Lcom/mh/movie/core/mvp/model/a/a;

    .line 38
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a()Lcom/jess/arms/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->d()Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b;->b:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b;->a:Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/mvp/model/a/a;->b(II)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/ui/utils/b/b$3;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b;->b:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/utils/b/b$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/utils/b/b$4;-><init>(Lcom/mh/movie/core/mvp/ui/utils/b/b;)V

    .line 79
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/b/b$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/b/b$3;-><init>(Lcom/mh/movie/core/mvp/ui/utils/b/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 78
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/mh/movie/core/mvp/ui/utils/b/b$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mh/movie/core/mvp/ui/utils/b/b$a;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->set2Json(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b;->a:Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v1, v0}, Lcom/mh/movie/core/mvp/model/a/a;->i(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 45
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v7, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/utils/b/b;->b:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/utils/b/b$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/utils/b/b$2;-><init>(Lcom/mh/movie/core/mvp/ui/utils/b/b;)V

    .line 48
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/b/b$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/utils/b/b$1;-><init>(Lcom/mh/movie/core/mvp/ui/utils/b/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Lcom/mh/movie/core/mvp/ui/utils/b/b$a;Ljava/util/Map;)V

    .line 47
    invoke-virtual {v0, v7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
