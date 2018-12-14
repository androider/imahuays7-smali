.class public abstract Lcom/yanzhenjie/permission/source/Source;
.super Ljava/lang/Object;
.source "Source.java"


# static fields
.field private static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field private static final OP_REQUEST_INSTALL_PACKAGES:I = 0x42


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mTargetSdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/Source;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getTargetSdkVersion()I
    .locals 2

    .line 48
    iget v0, p0, Lcom/yanzhenjie/permission/source/Source;->mTargetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/yanzhenjie/permission/source/Source;->mTargetSdkVersion:I

    .line 51
    :cond_0
    iget v0, p0, Lcom/yanzhenjie/permission/source/Source;->mTargetSdkVersion:I

    return v0
.end method


# virtual methods
.method public final canDrawOverlays()Z
    .locals 5

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    const-string v3, "android:system_alert_window"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public final canRequestPackageInstalls()Z
    .locals 8

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    .line 74
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 75
    const-class v0, Landroid/app/AppOpsManager;

    :try_start_0
    const-string v2, "checkOpNoThrow"

    const/4 v3, 0x3

    .line 77
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x42

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    return v1

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isShowRationalePermission(Ljava/lang/String;)Z
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method
