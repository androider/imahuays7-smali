.class public abstract Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriberOfFlowable;
.super Ljava/lang/Object;
.source "ErrorHandleSubscriberOfFlowable.java"

# interfaces
.implements Lorg/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/a/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;


# direct methods
.method public constructor <init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;->getHandlerFactory()Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriberOfFlowable;->mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

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

    .line 51
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 54
    iget-object v0, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriberOfFlowable;->mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    invoke-virtual {v0, p1}, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/a/d;)V
    .locals 0

    return-void
.end method
