.class public Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;
.super Ljava/lang/Object;
.source "RuntimeSetting.java"

# interfaces
.implements Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;
.implements Lcom/yanzhenjie/permission/Setting;


# static fields
.field private static final EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;


# instance fields
.field private mComeback:Lcom/yanzhenjie/permission/Setting$Action;

.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/yanzhenjie/permission/util/MainExecutor;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/util/MainExecutor;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;)Lcom/yanzhenjie/permission/Setting$Action;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->mComeback:Lcom/yanzhenjie/permission/Setting$Action;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public execute()V
    .locals 2

    .line 40
    new-instance v0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;->start(I)V

    return-void
.end method

.method public execute(I)V
    .locals 2

    .line 45
    new-instance v0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSettingPage;->start(I)V

    return-void
.end method

.method public onComeback(Lcom/yanzhenjie/permission/Setting$Action;)Lcom/yanzhenjie/permission/Setting;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->mComeback:Lcom/yanzhenjie/permission/Setting$Action;

    return-object p0
.end method

.method public onRequestCallback()V
    .locals 4

    .line 65
    sget-object v0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->EXECUTOR:Lcom/yanzhenjie/permission/util/MainExecutor;

    new-instance v1, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting$1;

    invoke-direct {v1, p0}, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting$1;-><init>(Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/yanzhenjie/permission/util/MainExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/setting/RuntimeSetting;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yanzhenjie/permission/PermissionActivity;->permissionSetting(Landroid/content/Context;Lcom/yanzhenjie/permission/PermissionActivity$RequestListener;)V

    return-void
.end method
