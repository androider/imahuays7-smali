.class public Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;
.super Ljava/lang/Object;
.source "AlertWindowSettingPage.java"


# static fields
.field private static final MARK:Ljava/lang/String;


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->MARK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method private static defaultApi(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static hasActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    .line 131
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private huaweiApi(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.systemmanager"

    const-string v3, "com.huawei.permissionmanager.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    invoke-static {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->hasActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 81
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.systemmanager"

    const-string v3, "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    invoke-static {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->hasActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 83
    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.huawei.systemmanager"

    const-string v2, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private meizuApi(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packageName"

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.safe.security.AppSecActivity"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private oppoApi(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "packageName"

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.color.safecenter"

    const-string v2, "com.color.safecenter.permission.floatwindow.FloatWindowListActivity"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-static {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->hasActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.coloros.safecenter"

    const-string v2, "com.coloros.safecenter.sysfloatwindow.FloatWindowListActivity"

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-static {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->hasActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "com.oppo.safe"

    const-string v1, "com.oppo.safe.permission.PermissionAppListActivity"

    .line 108
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private vivoApi(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iqoo.secure"

    const-string v2, "com.iqoo.secure.ui.phoneoptimize.FloatWindowManager"

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packagename"

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-static {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->hasActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 118
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.iqoo.secure"

    const-string v2, "com.iqoo.secure.safeguard.SoftPermissionDetailActivity"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private xiaomiApi(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_pkgname"

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-static {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->hasActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.miui.securitycenter"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-static {p1, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->hasActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "com.miui.securitycenter"

    const-string v1, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 95
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public start(I)V
    .locals 2

    .line 49
    sget-object v0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->MARK:Ljava/lang/String;

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->huaweiApi(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->MARK:Ljava/lang/String;

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->xiaomiApi(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->MARK:Ljava/lang/String;

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->oppoApi(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->MARK:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->vivoApi(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_3
    sget-object v0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->MARK:Ljava/lang/String;

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->meizuApi(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->defaultApi(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1, v0, p1}, Lcom/yanzhenjie/permission/source/Source;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 66
    :catch_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->defaultApi(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/yanzhenjie/permission/overlay/setting/AlertWindowSettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1, v0, p1}, Lcom/yanzhenjie/permission/source/Source;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method
