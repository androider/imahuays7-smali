.class public Lcom/taobao/accs/init/Launcher_InitAccs;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/init/Launcher_InitAccs$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static defaultAppkey:Ljava/lang/String; = "21646297"

.field public static mAppReceiver:Lcom/taobao/accs/e; = null

.field public static mAppkey:Ljava/lang/String; = null

.field public static mContext:Landroid/content/Context; = null

.field public static mForceBindUser:Z = false

.field public static mIsInited:Z = false

.field public static mSid:Ljava/lang/String;

.field public static mTtid:Ljava/lang/String;

.field public static mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 144
    new-instance v0, Lcom/taobao/accs/init/d;

    invoke-direct {v0}, Lcom/taobao/accs/init/d;-><init>()V

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/e;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    .line 231
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "im"

    const-string v2, "com.taobao.tao.amp.remote.AccsReceiverCallback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "powermsg"

    const-string v2, "com.taobao.appfrmbundle.mkt.AccsReceiverService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "pmmonitor"

    const-string v2, "com.taobao.appfrmbundle.mkt.AccsReceiverService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "motu-remote"

    const-string v2, "com.taobao.tao.log.collect.AccsTlogService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "cloudsync"

    const-string v2, "com.taobao.datasync.network.accs.AccsCloudSyncService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "acds"

    const-string v2, "com.taobao.acds.compact.AccsACDSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "agooSend"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "agooAck"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "agooTokenReport"

    const-string v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "AliLive"

    const-string v2, "com.taobao.playbudyy.gameplugin.danmu.DanmuCallbackService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "orange"

    const-string v2, "com.taobao.orange.accssupport.OrangeAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "tsla"

    const-string v2, "com.taobao.android.festival.accs.HomepageAccsMassService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "taobaoWaimaiAccsService"

    const-string v2, "com.taobao.takeout.order.detail.service.TakeoutOrderDetailACCSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "login"

    const-string v2, "com.taobao.android.sso.v2.service.LoginAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "ranger_abtest"

    const-string v2, "com.taobao.ranger3.RangerACCSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "accs_poplayer"

    const-string v2, "com.taobao.tbpoplayer.AccsPopLayerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->a:Ljava/util/Map;

    const-string v1, "dm_abtest"

    const-string v2, "com.tmall.wireless.ant.accs.AntAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Launcher_InitAccs"

    const-string v1, "init"

    const/4 v2, 0x0

    .line 42
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    :try_start_1
    const-string v4, "envIndex"

    .line 48
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "onlineAppKey"

    .line 49
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    if-ne v4, v3, :cond_0

    const-string v4, "preAppKey"

    .line 51
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    if-ne v4, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-ne v4, v0, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v4, v5

    if-eqz v4, :cond_3

    const-string v4, "dailyAppkey"

    .line 54
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    :try_start_2
    const-string v5, "process"

    .line 58
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string p1, "ttid"

    .line 59
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mTtid:Ljava/lang/String;

    const-string p1, "userId"

    .line 60
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mUserId:Ljava/lang/String;

    const-string p1, "sid"

    .line 61
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mSid:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v5, p1

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v5, p1

    const/4 v4, 0x0

    :goto_3
    :try_start_4
    const-string p1, "Launcher_InitAccs"

    const-string v6, "init get param error"

    .line 63
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p1, v6, p2, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 66
    :goto_4
    sget-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Launcher_InitAccs"

    const-string p2, "init get appkey null\uff01\uff01"

    .line 67
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    sget-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->defaultAppkey:Ljava/lang/String;

    sput-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    .line 71
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Launcher_InitAccs"

    const-string p2, "init get process null\uff01\uff01"

    .line 72
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p1, p2}, Lcom/taobao/accs/utl/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    :cond_5
    const-string p1, "Launcher_InitAccs"

    const-string p2, "init"

    const/4 v6, 0x6

    .line 78
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "appkey"

    aput-object v7, v6, v2

    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    aput-object v7, v6, v3

    const-string v3, "mode"

    aput-object v3, v6, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const-string v1, "process"

    aput-object v1, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {p1, p2, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    invoke-static {p1, p2, v4}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 81
    sget-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;I)V

    .line 82
    sget-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/taobao/accs/init/Launcher_InitAccs$a;

    invoke-direct {p2}, Lcom/taobao/accs/init/Launcher_InitAccs$a;-><init>()V

    invoke-static {p1, p2}, Lcom/taobao/accs/ACCSManager;->a(Landroid/content/Context;Lcom/taobao/accs/g;)V

    .line 86
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 87
    sget-object p1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mTtid:Ljava/lang/String;

    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/e;

    invoke-static {p1, p2, v0, v1}, Lcom/taobao/accs/ACCSManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/e;)V

    .line 93
    :cond_6
    new-instance p1, Lcom/taobao/accs/init/c;

    invoke-direct {p1, p0}, Lcom/taobao/accs/init/c;-><init>(Lcom/taobao/accs/init/Launcher_InitAccs;)V

    const-wide/16 v0, 0xa

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, p2}, Lcom/taobao/accs/common/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    const-string p2, "Launcher_InitAccs"

    const-string v0, "init"

    .line 102
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_5
    return-void
.end method
