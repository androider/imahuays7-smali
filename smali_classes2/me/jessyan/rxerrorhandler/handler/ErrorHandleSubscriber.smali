.class public abstract Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriber;
.super Ljava/lang/Object;
.source "ErrorHandleSubscriber.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;


# direct methods
.method public constructor <init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;->getHandlerFactory()Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriber;->mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 55
    iget-object v0, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriber;->mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    invoke-virtual {v0, p1}, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    return-void
.end method
