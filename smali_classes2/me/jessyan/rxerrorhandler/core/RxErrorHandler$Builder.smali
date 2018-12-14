.class public final Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;
.super Ljava/lang/Object;
.source "RxErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private errorHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

.field private mResponseErrorListener:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler$1;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;)Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;
    .locals 0

    .line 46
    iget-object p0, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->errorHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    return-object p0
.end method


# virtual methods
.method public build()Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .locals 3

    .line 65
    iget-object v0, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->mResponseErrorListener:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ResponseErrorListener is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    iget-object v1, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->mResponseErrorListener:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    invoke-direct {v0, v1, v2}, Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;-><init>(Landroid/content/Context;Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;)V

    iput-object v0, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->errorHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    .line 73
    new-instance v0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;Lme/jessyan/rxerrorhandler/core/RxErrorHandler$1;)V

    return-object v0
.end method

.method public responseErrorListener(Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;)Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;
    .locals 0

    .line 60
    iput-object p1, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->mResponseErrorListener:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    return-object p0
.end method

.method public with(Landroid/content/Context;)Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;
    .locals 0

    .line 55
    iput-object p1, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->context:Landroid/content/Context;

    return-object p0
.end method
