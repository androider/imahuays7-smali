.class public Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;
.super Ljava/lang/Object;
.source "OverlaySettingPage.java"


# static fields
.field private static final MARK:Ljava/lang/String;


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->MARK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method private appDetailsApi(I)V
    .locals 4

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 74
    iget-object v2, p0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v2}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1, v0, p1}, Lcom/yanzhenjie/permission/source/Source;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private defaultApi(I)Z
    .locals 4

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 63
    iget-object v2, p0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v2}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1, v0, p1}, Lcom/yanzhenjie/permission/source/Source;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private meiZuApi(I)Z
    .locals 4

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packageName"

    .line 51
    iget-object v2, p0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v2}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.safe.security.AppSecActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1, v0, p1}, Lcom/yanzhenjie/permission/source/Source;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public start(I)V
    .locals 2

    .line 40
    sget-object v0, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->MARK:Ljava/lang/String;

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->meiZuApi(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->defaultApi(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->appDetailsApi(I)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->defaultApi(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/overlay/setting/OverlaySettingPage;->appDetailsApi(I)V

    :cond_1
    :goto_0
    return-void
.end method
