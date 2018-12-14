.class public Lanet/channel/monitor/c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/monitor/c$a;
    }
.end annotation


# static fields
.field static a:I = 0x0

.field static b:J = 0x0L

.field static c:J = 0x0L

.field static d:J = 0x0L

.field static e:J = 0x0L

.field static f:J = 0x0L

.field static g:D = 0.0

.field static h:D = 0.0

.field static i:D = 0.0

.field static j:D = 40.0

.field private static volatile k:Z = false


# instance fields
.field private l:I

.field private m:I

.field private n:Lanet/channel/monitor/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 29
    iput v0, p0, Lanet/channel/monitor/c;->l:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lanet/channel/monitor/c;->m:I

    .line 32
    new-instance v0, Lanet/channel/monitor/e;

    invoke-direct {v0}, Lanet/channel/monitor/e;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/c;->n:Lanet/channel/monitor/e;

    .line 43
    new-instance v0, Lanet/channel/monitor/d;

    invoke-direct {v0, p0}, Lanet/channel/monitor/d;-><init>(Lanet/channel/monitor/c;)V

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/monitor/d;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lanet/channel/monitor/c;-><init>()V

    return-void
.end method

.method public static a()Lanet/channel/monitor/c;
    .locals 1

    .line 39
    sget-object v0, Lanet/channel/monitor/c$a;->a:Lanet/channel/monitor/c;

    return-object v0
.end method

.method static synthetic a(Lanet/channel/monitor/c;)Lanet/channel/monitor/e;
    .locals 0

    .line 10
    iget-object p0, p0, Lanet/channel/monitor/c;->n:Lanet/channel/monitor/e;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 54
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    iget v0, p0, Lanet/channel/monitor/c;->l:I

    return v0
.end method

.method public declared-synchronized c()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "awcn.BandWidthSampler"

    const-string v3, "[startNetworkMeter]"

    const/4 v4, 0x2

    .line 69
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "NetworkStatus"

    aput-object v5, v4, v1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v0, v4}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v2

    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v2, v3, :cond_0

    .line 71
    sput-boolean v1, Lanet/channel/monitor/c;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    sput-boolean v6, Lanet/channel/monitor/c;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "awcn.BandWidthSampler"

    const-string v4, "startNetworkMeter fail."

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v2, v1}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :goto_1
    monitor-exit p0

    throw v0
.end method
