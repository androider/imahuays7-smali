.class Lcom/yanzhenjie/permission/install/ORequest;
.super Lcom/yanzhenjie/permission/install/BaseRequest;
.source "ORequest.java"

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

    sput-object v0, Lcom/yanzhenjie/permission/install/ORequest;->EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

    return-void
.end method

.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/install/BaseRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    .line 34
    iput-object p1, p0, Lcom/yanzhenjie/permission/install/ORequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/permission/install/ORequest;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/yanzhenjie/permission/install/ORequest;->dispatchCallback()V

    return-void
.end method

.method private dispatchCallback()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yanzhenjie/permission/install/ORequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->canRequestPackageInstalls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/install/ORequest;->callbackSucceed()V

    .line 70
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/install/ORequest;->install()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/install/ORequest;->callbackFailed()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/install/ORequest;->callbackFailed()V

    return-void
.end method

.method public execute()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/yanzhenjie/permission/install/ORequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yanzhenjie/permission/PermissionActivity;->requestInstall(Landroid/content/Context;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V

    return-void
.end method

.method public onRequestCallback()V
    .locals 4

    .line 59
    sget-object v0, Lcom/yanzhenjie/permission/install/ORequest;->EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

    new-instance v1, Lcom/yanzhenjie/permission/install/ORequest$1;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/permission/install/ORequest$1;-><init>(Lcom/yanzhenjie/permission/install/ORequest;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/yanzhenjie/permission/util/MainExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yanzhenjie/permission/install/ORequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->canRequestPackageInstalls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/install/ORequest;->callbackSucceed()V

    .line 41
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/install/ORequest;->install()V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, p0}, Lcom/yanzhenjie/permission/install/ORequest;->showRationale(Lcom/yanzhenjie/permission/RequestExecutor;)V

    :goto_0
    return-void
.end method
