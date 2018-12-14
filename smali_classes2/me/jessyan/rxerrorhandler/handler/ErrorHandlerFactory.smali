.class public Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;
.super Ljava/lang/Object;
.source "ErrorHandlerFactory.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResponseErrorListener:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;->TAG:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;->mResponseErrorListener:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    .line 36
    iput-object p1, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/Throwable;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;->mResponseErrorListener:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    iget-object v1, p0, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;->handleResponseError(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
