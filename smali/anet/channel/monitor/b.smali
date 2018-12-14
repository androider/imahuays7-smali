.class public Lanet/channel/monitor/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile b:Lanet/channel/monitor/b;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/monitor/a;",
            "Lanet/channel/monitor/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lanet/channel/monitor/f;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/b;->a:Ljava/util/Map;

    .line 16
    new-instance v0, Lanet/channel/monitor/f;

    invoke-direct {v0}, Lanet/channel/monitor/f;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/b;->c:Lanet/channel/monitor/f;

    return-void
.end method

.method public static a()Lanet/channel/monitor/b;
    .locals 2

    .line 22
    sget-object v0, Lanet/channel/monitor/b;->b:Lanet/channel/monitor/b;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lanet/channel/monitor/b;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lanet/channel/monitor/b;->b:Lanet/channel/monitor/b;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lanet/channel/monitor/b;

    invoke-direct {v1}, Lanet/channel/monitor/b;-><init>()V

    sput-object v1, Lanet/channel/monitor/b;->b:Lanet/channel/monitor/b;

    .line 27
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lanet/channel/monitor/b;->b:Lanet/channel/monitor/b;

    return-object v0
.end method


# virtual methods
.method public a(Lanet/channel/monitor/a;Lanet/channel/monitor/f;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "BandWidthListenerHelp"

    const-string p2, "listener is null"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 38
    iget-object p2, p0, Lanet/channel/monitor/b;->c:Lanet/channel/monitor/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lanet/channel/monitor/f;->b:J

    .line 39
    iget-object p2, p0, Lanet/channel/monitor/b;->a:Ljava/util/Map;

    iget-object v0, p0, Lanet/channel/monitor/b;->c:Lanet/channel/monitor/f;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lanet/channel/monitor/f;->b:J

    .line 42
    iget-object v0, p0, Lanet/channel/monitor/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
