.class final Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;
.super Lcom/tencent/mm/opensdk/openapi/BaseWXApiImplV10;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;
    }
.end annotation


# static fields
.field private static activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/opensdk/openapi/BaseWXApiImplV10;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;
    .locals 1

    sget-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    return-object v0
.end method

.method private initMta(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AWXOP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/wxop/stat/StatConfig;->setAppKey(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setEnableSmartReporting(Z)V

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/wxop/stat/StatReportStrategy;)V

    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setSendPeriodMinutes(I)V

    const-string v0, "Wechat_Sdk"

    invoke-static {p1, v0}, Lcom/tencent/wxop/stat/StatConfig;->setInstallChannel(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "2.0.4"

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/StatService;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/tencent/wxop/stat/MtaSDkException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initMta exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/MtaSDkException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 2

    sget-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Service;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-virtual {v0}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;->detach()V

    :cond_2
    invoke-super {p0}, Lcom/tencent/mm/opensdk/openapi/BaseWXApiImplV10;->detach()V

    return-void
.end method

.method public final registerApp(Ljava/lang/String;J)Z
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "registerApp fail, WXMsgImpl has been detached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    iget-boolean v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "MicroMsg.SDK.WXApiImplV10"

    const-string p2, "register app failed for wechat app signature check failed"

    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerApp, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->initMta(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;-><init>(Landroid/content/Context;Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$1;)V

    sput-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Service;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->initMta(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    iget-object v2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;-><init>(Landroid/content/Context;Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$1;)V

    sput-object v0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/opensdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "context is not instanceof Activity or Service, disable WXStat"

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerApp, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    iput-object p1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    :cond_6
    const-string p1, "MicroMsg.SDK.WXApiImplV10"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "register app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/mm/opensdk/channel/a/a$a;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/channel/a/a$a;-><init>()V

    const-string v0, "com.tencent.mm"

    iput-object v0, p1, Lcom/tencent/mm/opensdk/channel/a/a$a;->W:Ljava/lang/String;

    const-string v0, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    iput-object v0, p1, Lcom/tencent/mm/opensdk/channel/a/a$a;->action:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "weixin://registerapp?appid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/opensdk/channel/a/a$a;->content:Ljava/lang/String;

    iput-wide p2, p1, Lcom/tencent/mm/opensdk/channel/a/a$a;->X:J

    iget-object p2, p0, Lcom/tencent/mm/opensdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/tencent/mm/opensdk/channel/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/opensdk/channel/a/a$a;)Z

    move-result p1

    return p1
.end method
