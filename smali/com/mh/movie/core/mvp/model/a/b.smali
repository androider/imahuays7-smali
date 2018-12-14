.class public abstract Lcom/mh/movie/core/mvp/model/a/b;
.super Ljava/lang/Object;
.source "ResultStrHandleSubscriber.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/model/a/a;

.field private b:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

.field private c:Ljava/lang/reflect/Type;

.field private d:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;


# direct methods
.method public constructor <init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;->getHandlerFactory()Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/a/b;->b:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    .line 44
    iput-object p2, p0, Lcom/mh/movie/core/mvp/model/a/b;->c:Ljava/lang/reflect/Type;

    .line 45
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a()Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object p1

    const-class p2, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, p2}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/a/a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/a/b;->a:Lcom/mh/movie/core/mvp/model/a/a;

    .line 46
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a()Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/jess/arms/b/a/a;->d()Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/a/b;->d:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/mh/movie/core/mvp/ui/b;->x:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/f;->a()Lcom/google/gson/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/f;->c()Lcom/google/gson/e;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/a/b;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;

    .line 68
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/BaseResponse;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 75
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "0005"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0021"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0022"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0023"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/integration/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/a/b;->a:Lcom/mh/movie/core/mvp/model/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/model/a/a;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 115
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/model/a/b$1;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/a/b;->d:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/model/a/b$2;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/model/a/b$2;-><init>(Lcom/mh/movie/core/mvp/model/a/b;)V

    .line 117
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/a/b$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mh/movie/core/mvp/model/a/b$1;-><init>(Lcom/mh/movie/core/mvp/model/a/b;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-static {}, Lcom/jess/arms/integration/AppManager;->getAppManager()Lcom/jess/arms/integration/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jess/arms/integration/AppManager;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 82
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/a/b;->onComplete()V

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/a/b;->b:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    invoke-virtual {v0, p1}, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;->handleError(Ljava/lang/Throwable;)V

    .line 92
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->x:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 93
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/UrlErrorEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/UrlErrorEvent;-><init>()V

    const-string v0, "failedAPI"

    .line 94
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/UrlErrorEvent;->setType(Ljava/lang/String;)V

    const-string v0, "failedAPI"

    .line 95
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/UrlErrorEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/UrlErrorEvent;->setUrl(Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    const/4 p1, 0x0

    .line 98
    sput-object p1, Lcom/mh/movie/core/mvp/ui/b;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
