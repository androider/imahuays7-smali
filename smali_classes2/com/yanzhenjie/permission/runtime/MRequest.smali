.class Lcom/yanzhenjie/permission/runtime/MRequest;
.super Ljava/lang/Object;
.source "MRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;
.implements Lcom/yanzhenjie/permission/RequestExecutor;
.implements Lcom/yanzhenjie/permission/runtime/PermissionRequest;


# static fields
.field private static final DOUBLE_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

.field private static final EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

.field private static final STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;


# instance fields
.field private mDenied:Lcom/yanzhenjie/permission/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeniedPermissions:[Ljava/lang/String;

.field private mGranted:Lcom/yanzhenjie/permission/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPermissions:[Ljava/lang/String;

.field private mRationale:Lcom/yanzhenjie/permission/Rationale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/yanzhenjie/permission/util/MainExecutor;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/util/MainExecutor;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

    .line 42
    new-instance v0, Lcom/yanzhenjie/permission/checker/StandardChecker;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/StandardChecker;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    .line 43
    new-instance v0, Lcom/yanzhenjie/permission/checker/DoubleChecker;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/DoubleChecker;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->DOUBLE_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    return-void
.end method

.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/yanzhenjie/permission/runtime/MRequest$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/runtime/MRequest$1;-><init>(Lcom/yanzhenjie/permission/runtime/MRequest;)V

    iput-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    .line 60
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/permission/runtime/MRequest;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->dispatchCallback()V

    return-void
.end method

.method private callbackFailed(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    invoke-interface {v0, p1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private callbackSucceed()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    invoke-interface {v1, v0}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AndPermission"

    const-string v3, "Please check the onGranted() method body for bugs."

    .line 141
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    invoke-interface {v1, v0}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchCallback()V
    .locals 3

    .line 124
    sget-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->DOUBLE_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    iget-object v2, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mPermissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yanzhenjie/permission/runtime/MRequest;->getDeniedPermissions(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->callbackSucceed()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/runtime/MRequest;->callbackFailed(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private static varargs getDeniedPermissions(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/checker/PermissionChecker;",
            "Lcom/yanzhenjie/permission/source/Source;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p2, v4

    .line 164
    invoke-virtual {p1}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    aput-object v5, v7, v3

    invoke-interface {p0, v6, v7}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static varargs getRationalePermissions(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/source/Source;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 177
    invoke-virtual {p0, v3}, Lcom/yanzhenjie/permission/source/Source;->isShowRationalePermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->dispatchCallback()V

    return-void
.end method

.method public execute()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDeniedPermissions:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/yanzhenjie/permission/PermissionActivity;->requestPermission(Landroid/content/Context;[Ljava/lang/String;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V

    return-void
.end method

.method public onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/yanzhenjie/permission/runtime/PermissionRequest;"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/yanzhenjie/permission/runtime/PermissionRequest;"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public onRequestCallback()V
    .locals 4

    .line 115
    sget-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

    new-instance v1, Lcom/yanzhenjie/permission/runtime/MRequest$2;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/permission/runtime/MRequest$2;-><init>(Lcom/yanzhenjie/permission/runtime/MRequest;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/yanzhenjie/permission/util/MainExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public varargs permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method public rationale(Lcom/yanzhenjie/permission/Rationale;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/yanzhenjie/permission/runtime/PermissionRequest;"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    return-object p0
.end method

.method public start()V
    .locals 3

    .line 89
    sget-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    iget-object v2, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mPermissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yanzhenjie/permission/runtime/MRequest;->getDeniedPermissions(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDeniedPermissions:[Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDeniedPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDeniedPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yanzhenjie/permission/runtime/MRequest;->getRationalePermissions(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    iget-object v2, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v2}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0, p0}, Lcom/yanzhenjie/permission/Rationale;->showRationale(Landroid/content/Context;Ljava/lang/Object;Lcom/yanzhenjie/permission/RequestExecutor;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->execute()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->dispatchCallback()V

    :goto_0
    return-void
.end method
