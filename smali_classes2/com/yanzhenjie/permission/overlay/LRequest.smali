.class Lcom/yanzhenjie/permission/overlay/LRequest;
.super Lcom/yanzhenjie/permission/overlay/BaseRequest;
.source "LRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;
.implements Lcom/yanzhenjie/permission/RequestExecutor;


# static fields
.field private static final EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/yanzhenjie/permission/util/MainExecutor;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/util/MainExecutor;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/overlay/LRequest;->EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

    return-void
.end method

.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/overlay/BaseRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    .line 34
    iput-object p1, p0, Lcom/yanzhenjie/permission/overlay/LRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/permission/overlay/LRequest;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/yanzhenjie/permission/overlay/LRequest;->dispatchCallback()V

    return-void
.end method

.method private dispatchCallback()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/LRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/overlay/LRequest;->tryDisplayDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/overlay/LRequest;->callbackSucceed()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/overlay/LRequest;->callbackFailed()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/overlay/LRequest;->callbackFailed()V

    return-void
.end method

.method public execute()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/LRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yanzhenjie/permission/PermissionActivity;->requestAlertWindow(Landroid/content/Context;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V

    return-void
.end method

.method public onRequestCallback()V
    .locals 4

    .line 58
    sget-object v0, Lcom/yanzhenjie/permission/overlay/LRequest;->EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

    new-instance v1, Lcom/yanzhenjie/permission/overlay/LRequest$1;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/permission/overlay/LRequest$1;-><init>(Lcom/yanzhenjie/permission/overlay/LRequest;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/yanzhenjie/permission/util/MainExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/LRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/overlay/LRequest;->tryDisplayDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/overlay/LRequest;->callbackSucceed()V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, p0}, Lcom/yanzhenjie/permission/overlay/LRequest;->showRationale(Lcom/yanzhenjie/permission/RequestExecutor;)V

    :goto_0
    return-void
.end method
