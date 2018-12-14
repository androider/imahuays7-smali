.class public abstract Lcom/taobao/accs/f/h;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field protected static volatile b:Lcom/taobao/accs/f/h;

.field private static final c:[I


# instance fields
.field protected a:Landroid/content/Context;

.field private d:I

.field private e:J

.field private f:Z

.field private g:[I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/accs/f/h;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10e
        0x168
        0x1e0
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/taobao/accs/f/h;->f:Z

    const/4 v1, 0x3

    .line 31
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/taobao/accs/f/h;->g:[I

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/taobao/accs/f/h;->h:Z

    .line 41
    :try_start_0
    iput-object p1, p0, Lcom/taobao/accs/f/h;->a:Landroid/content/Context;

    .line 42
    iput v0, p0, Lcom/taobao/accs/f/h;->d:I

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/accs/f/h;->e:J

    .line 44
    invoke-static {}, Lcom/taobao/accs/utl/j;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/accs/f/h;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "HeartbeatManager"

    const-string v2, "HeartbeatManager"

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/accs/f/h;
    .locals 4

    .line 52
    sget-object v0, Lcom/taobao/accs/f/h;->b:Lcom/taobao/accs/f/h;

    if-nez v0, :cond_2

    .line 53
    const-class v0, Lcom/taobao/accs/f/h;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/taobao/accs/f/h;->b:Lcom/taobao/accs/f/h;

    if-nez v1, :cond_1

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lcom/taobao/accs/f/h;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HeartbeatManager"

    const-string v2, "hb use job"

    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v1, Lcom/taobao/accs/f/p;

    invoke-direct {v1, p0}, Lcom/taobao/accs/f/p;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/accs/f/h;->b:Lcom/taobao/accs/f/h;

    goto :goto_0

    :cond_0
    const-string v1, "HeartbeatManager"

    const-string v2, "hb use alarm"

    .line 59
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v1, Lcom/taobao/accs/f/b;

    invoke-direct {v1, p0}, Lcom/taobao/accs/f/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/accs/f/h;->b:Lcom/taobao/accs/f/h;

    .line 63
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 65
    :cond_2
    :goto_1
    sget-object p0, Lcom/taobao/accs/f/h;->b:Lcom/taobao/accs/f/h;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v3, Lcom/taobao/accs/internal/AccsJobService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "HeartbeatManager"

    const-string v2, "isJobServiceExist"

    .line 73
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 80
    :try_start_0
    iget-wide v1, p0, Lcom/taobao/accs/f/h;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/accs/f/h;->e:J

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/f/h;->b()I

    move-result v1

    .line 85
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "HeartbeatManager"

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_1
    invoke-virtual {p0, v1}, Lcom/taobao/accs/f/h;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "HeartbeatManager"

    const-string v3, "set"

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected abstract a(I)V
.end method

.method public b()I
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/taobao/accs/f/h;->h:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/taobao/accs/f/h;->c:[I

    iget v1, p0, Lcom/taobao/accs/f/h;->d:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    .line 106
    :goto_0
    invoke-static {}, Lcom/taobao/accs/utl/j;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/accs/f/h;->h:Z

    return v0
.end method

.method public c()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 112
    iput-wide v0, p0, Lcom/taobao/accs/f/h;->e:J

    .line 113
    iget-boolean v0, p0, Lcom/taobao/accs/f/h;->f:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/taobao/accs/f/h;->g:[I

    iget v1, p0, Lcom/taobao/accs/f/h;->d:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 116
    :cond_0
    iget v0, p0, Lcom/taobao/accs/f/h;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/taobao/accs/f/h;->d:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/taobao/accs/f/h;->d:I

    const-string v0, "HeartbeatManager"

    const-string v2, "onNetworkTimeout"

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 121
    iput-wide v0, p0, Lcom/taobao/accs/f/h;->e:J

    const-string v0, "HeartbeatManager"

    const-string v1, "onNetworkFail"

    const/4 v2, 0x0

    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/taobao/accs/f/h;->d:I

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/accs/f/h;->e:J

    const-string v1, "HeartbeatManager"

    const-string v2, "resetLevel"

    .line 143
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
