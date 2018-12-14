.class public Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
.super Ljava/lang/Object;
.source "RxErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;


# direct methods
.method private constructor <init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;->TAG:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;->access$000(Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;)Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;->mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    return-void
.end method

.method synthetic constructor <init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;Lme/jessyan/rxerrorhandler/core/RxErrorHandler$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;)V

    return-void
.end method

.method public static builder()Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;
    .locals 2

    .line 39
    new-instance v0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/jessyan/rxerrorhandler/core/RxErrorHandler$Builder;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler$1;)V

    return-object v0
.end method


# virtual methods
.method public getHandlerFactory()Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;
    .locals 1

    .line 43
    iget-object v0, p0, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;->mHandlerFactory:Lme/jessyan/rxerrorhandler/handler/ErrorHandlerFactory;

    return-object v0
.end method
