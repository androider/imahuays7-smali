.class public Lcom/tencent/wxop/stat/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/tencent/wxop/stat/d;


# instance fields
.field private a:Ljava/util/Timer;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/d;->a:Ljava/util/Timer;

    iput-object v0, p0, Lcom/tencent/wxop/stat/d;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/d;->c:Landroid/content/Context;

    new-instance p1, Ljava/util/Timer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/wxop/stat/d;->a:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/wxop/stat/d;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/wxop/stat/d;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/d;->b:Lcom/tencent/wxop/stat/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/d;->b:Lcom/tencent/wxop/stat/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/d;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/wxop/stat/d;->b:Lcom/tencent/wxop/stat/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/d;->b:Lcom/tencent/wxop/stat/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getStatSendStrategy()Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/StatReportStrategy;->PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setupPeriodTimer delay:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Lcom/tencent/wxop/stat/e;

    invoke-direct {v2, p0}, Lcom/tencent/wxop/stat/e;-><init>(Lcom/tencent/wxop/stat/d;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/wxop/stat/d;->a(Ljava/util/TimerTask;J)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/TimerTask;J)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/d;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupPeriodTimer schedule delay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/d;->a:Ljava/util/Timer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object p1

    const-string p2, "setupPeriodTimer schedule timer == null"

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
