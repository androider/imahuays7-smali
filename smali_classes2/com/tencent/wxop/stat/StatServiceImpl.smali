.class public Lcom/tencent/wxop/stat/StatServiceImpl;
.super Ljava/lang/Object;


# static fields
.field static volatile a:I = 0x0

.field static volatile b:J = 0x0L

.field static volatile c:J = 0x0L

.field private static d:Lcom/tencent/wxop/stat/common/e; = null

.field private static volatile e:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/wxop/stat/event/c;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:J = 0x0L

.field private static volatile i:J = 0x0L

.field private static volatile j:J = 0x0L

.field private static k:Ljava/lang/String; = ""

.field private static volatile l:I = 0x0

.field private static volatile m:Ljava/lang/String; = ""

.field private static volatile n:Ljava/lang/String; = ""

.field private static o:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Lcom/tencent/wxop/stat/common/StatLogger; = null

.field private static r:Ljava/lang/Thread$UncaughtExceptionHandler; = null

.field private static volatile s:Z = true

.field private static t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->p:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;ZLcom/tencent/wxop/stat/StatSpecifyReportedInfo;)I
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-wide v4, Lcom/tencent/wxop/stat/StatServiceImpl;->i:J

    sub-long v6, v0, v4

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getSessionTimoutMillis()I

    move-result p1

    int-to-long v4, p1

    cmp-long p1, v6, v4

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->i:J

    sget-wide v4, Lcom/tencent/wxop/stat/StatServiceImpl;->j:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->c()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wxop/stat/StatServiceImpl;->j:J

    :cond_1
    sget-wide v4, Lcom/tencent/wxop/stat/StatServiceImpl;->j:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->j:J

    invoke-static {p0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/common/a;->d()I

    move-result p1

    if-eq p1, v2, :cond_2

    invoke-static {p0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/wxop/stat/common/a;->a(I)V

    :cond_2
    invoke-static {v3}, Lcom/tencent/wxop/stat/StatConfig;->b(I)V

    sput v3, Lcom/tencent/wxop/stat/StatServiceImpl;->a:I

    invoke-static {v3}, Lcom/tencent/wxop/stat/common/l;->a(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->k:Ljava/lang/String;

    const/4 p1, 0x1

    :cond_3
    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/wxop/stat/common/l;->a(Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/wxop/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    sget-object v1, Lcom/tencent/wxop/stat/StatServiceImpl;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 p1, 0x1

    :cond_5
    if-eqz p1, :cond_8

    invoke-static {p2}, Lcom/tencent/wxop/stat/common/l;->a(Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->c()I

    move-result p1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxDaySessionNumbers()I

    move-result p2

    if-ge p1, p2, :cond_6

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/l;->v(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p2, "Exceed StatConfig.getMaxDaySessionNumbers()."

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-static {p0, p2}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    :goto_1
    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->p:Ljava/util/Map;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-boolean p1, Lcom/tencent/wxop/stat/StatServiceImpl;->s:Z

    if-eqz p1, :cond_9

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->testSpeed(Landroid/content/Context;)V

    sput-boolean v3, Lcom/tencent/wxop/stat/StatServiceImpl;->s:Z

    :cond_9
    sget p0, Lcom/tencent/wxop/stat/StatServiceImpl;->l:I

    return p0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/wxop/stat/StatServiceImpl;->h:J

    return-wide p0
.end method

.method static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 7

    const-class v0, Lcom/tencent/wxop/stat/StatServiceImpl;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->b(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->t:Landroid/content/Context;

    new-instance v1, Lcom/tencent/wxop/stat/common/e;

    invoke-direct {v1}, Lcom/tencent/wxop/stat/common/e;-><init>()V

    sput-object v1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/wxop/stat/common/l;->a(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/wxop/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/tencent/wxop/stat/StatConfig;->i:J

    const/4 v5, 0x0

    add-long v5, v1, v3

    sput-wide v5, Lcom/tencent/wxop/stat/StatServiceImpl;->h:J

    sget-object v1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v2, Lcom/tencent/wxop/stat/l;

    invoke-direct {v2, p0}, Lcom/tencent/wxop/stat/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/wxop/stat/StatServiceImpl;->b(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 4

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "start new session."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/tencent/wxop/stat/StatServiceImpl;->l:I

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->a()I

    move-result v0

    sput v0, Lcom/tencent/wxop/stat/StatServiceImpl;->l:I

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->a(I)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->b()V

    new-instance v0, Lcom/tencent/wxop/stat/aq;

    new-instance v1, Lcom/tencent/wxop/stat/event/k;

    sget v2, Lcom/tencent/wxop/stat/StatServiceImpl;->l:I

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/tencent/wxop/stat/event/k;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-direct {v0, v1}, Lcom/tencent/wxop/stat/aq;-><init>(Lcom/tencent/wxop/stat/event/e;)V

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/aq;->a()V

    :cond_3
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.reportSdkSelfException() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/q;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/q;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method static a()Z
    .locals 2

    sget v0, Lcom/tencent/wxop/stat/StatServiceImpl;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->b:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->m:Ljava/lang/String;

    return-object p0
.end method

.method static b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v2, v2, Lcom/tencent/wxop/stat/f;->d:I

    if-eqz v2, :cond_0

    const-string v2, "v"

    sget-object v3, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v3, v3, Lcom/tencent/wxop/stat/f;->d:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v2, v2, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget v2, v2, Lcom/tencent/wxop/stat/f;->d:I

    if-eqz v2, :cond_1

    const-string v2, "v"

    sget-object v3, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget v3, v3, Lcom/tencent/wxop/stat/f;->d:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget v2, v2, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/tencent/wxop/stat/event/a;

    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/StatSpecifyReportedInfo;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tencent/wxop/stat/event/a;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    new-instance p1, Lcom/tencent/wxop/stat/aq;

    invoke-direct {p1, v0}, Lcom/tencent/wxop/stat/aq;-><init>(Lcom/tencent/wxop/stat/event/e;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/aq;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method static b(Landroid/content/Context;)Z
    .locals 10

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->c:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "2.0.4"

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->b(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v3

    const/4 v7, 0x0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MTA is disable for current version:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",wakeup version:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-object v3, Lcom/tencent/wxop/stat/StatConfig;->d:Ljava/lang/String;

    invoke-static {p0, v3, v1, v2}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MTA is disable for current time:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",wakeup time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setEnableStatService(Z)V

    return v0
.end method

.method static c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/StatServiceImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v1, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->setEnableStatService(Z)V

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_1
    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->n:Ljava/lang/String;

    return-object p0
.end method

.method static c()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/tencent/wxop/stat/StatServiceImpl;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->b:J

    return-void
.end method

.method public static commitEvents(Landroid/content/Context;I)V
    .locals 3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commitEvents, maxNumber="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.commitEvents() can not be null!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a;->f()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/ad;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/ad;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0."

    goto :goto_0
.end method

.method static d()V
    .locals 2

    sget v0, Lcom/tencent/wxop/stat/StatServiceImpl;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/wxop/stat/StatServiceImpl;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->b:J

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    return-void
.end method

.method static d(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "The Context of StatService.sendNetworkDetector() can not be null!"

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/wxop/stat/event/h;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/event/h;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/i;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/i;

    move-result-object p0

    new-instance v1, Lcom/tencent/wxop/stat/t;

    invoke-direct {v1}, Lcom/tencent/wxop/stat/t;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wxop/stat/i;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->t:Landroid/content/Context;

    return-object v0
.end method

.method static e(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v2

    const v3, 0xea60

    mul-int v2, v2, v3

    int-to-long v2, v2

    add-long v4, v0, v2

    sput-wide v4, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    const-string v0, "last_period_ts"

    sget-wide v1, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/wxop/stat/common/q;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic f()Lcom/tencent/wxop/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    return-object v0
.end method

.method public static flushDataToDB(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/au;->c()V

    return-void
.end method

.method static synthetic g()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getCommonKeyValueForKVEvent(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->t:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->o:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic l()J
    .locals 2

    sget-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->h:J

    return-wide v0
.end method

.method static synthetic m()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static onLowMemory(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/o;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static onPause(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/m;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/m;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static onResume(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/aj;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/aj;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static onStop(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v0, Lcom/tencent/wxop/stat/n;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static reportAccount(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "context is null in reportAccount."

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/al;

    invoke-direct {v1, p1, p0, p2}, Lcom/tencent/wxop/stat/al;-><init>(Lcom/tencent/wxop/stat/StatAccount;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAppMonitor;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.reportAppMonitorStat() can not be null!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wxop/stat/StatAppMonitor;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wxop/stat/StatAppMonitor;->clone()Lcom/tencent/wxop/stat/StatAppMonitor;

    move-result-object p1

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/aa;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/wxop/stat/aa;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;Lcom/tencent/wxop/stat/StatAppMonitor;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.reportError() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/p;

    invoke-direct {v1, p1, p0, p2}, Lcom/tencent/wxop/stat/p;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static reportException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.reportException() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/r;

    invoke-direct {v1, p1, p0, p2}, Lcom/tencent/wxop/stat/r;-><init>(Ljava/lang/Throwable;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static reportGameUser(Landroid/content/Context;Lcom/tencent/wxop/stat/StatGameUser;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.reportGameUser() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/am;

    invoke-direct {v1, p1, p0, p2}, Lcom/tencent/wxop/stat/am;-><init>(Lcom/tencent/wxop/stat/StatGameUser;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static reportQQ(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "context is null in reportQQ()"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/ak;

    invoke-direct {v1, p1, p0, p2}, Lcom/tencent/wxop/stat/ak;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static setCommonKeyValueForKVEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Properties;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "event_id or commonProp for setCommonKeyValueForKVEvent is invalid."

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->t:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static setEnvAttributes(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/common/b;->a(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The map in setEnvAttributes can\'t be null or its size can\'t exceed 512."

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public static startNewSession(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.startNewSession() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/ai;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/ai;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "MTA StatService is disable."

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return v0

    :cond_0
    const-string v1, "2.0.4"

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MTA SDK version, current: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,required: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_1
    if-eqz p0, :cond_8

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tencent/wxop/stat/common/l;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/tencent/wxop/stat/common/l;->b(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "MTA SDK version conflicted, current: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",required: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setEnableStatService(Z)V

    return v0

    :cond_3
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    const-string p2, "-"

    invoke-static {p2}, Lcom/tencent/wxop/stat/StatConfig;->setInstallChannel(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatConfig;->setAppKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance p2, Lcom/tencent/wxop/stat/an;

    invoke-direct {p2, p0, p3}, Lcom/tencent/wxop/stat/an;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_0
    const-string p0, "Context or mtaSdkVersion in StatService.startStatService() is null, please check it!"

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setEnableStatService(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static stopSession()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->i:J

    return-void
.end method

.method public static testSpeed(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v0, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/ae;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/ae;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static testSpeed(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.testSpeed() can not be null!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/af;

    invoke-direct {v1, p0, v0, p2}, Lcom/tencent/wxop/stat/af;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The domainMap of StatService.testSpeed() can not be null or empty!"

    goto :goto_0
.end method

.method public static trackBeginPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/w;

    invoke-direct {v1, v0, p0, p2}, Lcom/tencent/wxop/stat/w;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context or pageName of StatService.trackBeginPage() can not be null or empty!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs trackCustomBeginEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.trackCustomBeginEvent() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p2, Lcom/tencent/wxop/stat/event/c;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Lcom/tencent/wxop/stat/event/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v0, Lcom/tencent/wxop/stat/v;

    invoke-direct {v0, p1, p2, p0}, Lcom/tencent/wxop/stat/v;-><init>(Ljava/lang/String;Lcom/tencent/wxop/stat/event/c;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static trackCustomBeginKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.trackCustomBeginEvent() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p3, Lcom/tencent/wxop/stat/event/c;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, p2}, Lcom/tencent/wxop/stat/event/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v0, Lcom/tencent/wxop/stat/y;

    invoke-direct {v0, p1, p3, p0}, Lcom/tencent/wxop/stat/y;-><init>(Ljava/lang/String;Lcom/tencent/wxop/stat/event/c;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static varargs trackCustomEndEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/tencent/wxop/stat/event/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/tencent/wxop/stat/event/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/x;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/tencent/wxop/stat/x;-><init>(Ljava/lang/String;Lcom/tencent/wxop/stat/event/c;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {p3, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static trackCustomEndKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/tencent/wxop/stat/event/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/tencent/wxop/stat/event/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/z;

    invoke-direct {v1, p1, v0, p0, p3}, Lcom/tencent/wxop/stat/z;-><init>(Ljava/lang/String;Lcom/tencent/wxop/stat/event/c;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {p2, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static varargs trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.trackCustomEvent() can not be null!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/wxop/stat/event/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/tencent/wxop/stat/event/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance p3, Lcom/tencent/wxop/stat/s;

    invoke-direct {p3, p0, p2, v0}, Lcom/tencent/wxop/stat/s;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;Lcom/tencent/wxop/stat/event/c;)V

    invoke-virtual {p1, p3}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public static trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.trackCustomEvent() can not be null!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/wxop/stat/event/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/tencent/wxop/stat/event/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance p2, Lcom/tencent/wxop/stat/u;

    invoke-direct {p2, p0, p3, v0}, Lcom/tencent/wxop/stat/u;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;Lcom/tencent/wxop/stat/event/c;)V

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public static trackCustomKVTimeIntervalEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The event_id of StatService.trackCustomEndEvent() can not be null or empty."

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/wxop/stat/event/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/tencent/wxop/stat/event/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance p2, Lcom/tencent/wxop/stat/ac;

    invoke-direct {p2, p0, p4, v0, p3}, Lcom/tencent/wxop/stat/ac;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;Lcom/tencent/wxop/stat/event/c;I)V

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public static varargs trackCustomTimeIntervalEvent(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-gtz p1, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The intervalSecond of StatService.trackCustomTimeIntervalEvent() can must bigger than 0!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context of StatService.trackCustomTimeIntervalEvent() can not be null!"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance p1, Lcom/tencent/wxop/stat/ab;

    invoke-direct {p1}, Lcom/tencent/wxop/stat/ab;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public static trackEndPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/e;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tencent/wxop/stat/StatServiceImpl;->d:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/ah;

    invoke-direct {v1, p0, v0, p2}, Lcom/tencent/wxop/stat/ah;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/StatServiceImpl;->q:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string p1, "The Context or pageName of StatService.trackEndPage() can not be null or empty!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void
.end method
