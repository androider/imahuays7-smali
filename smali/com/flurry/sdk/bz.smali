.class public Lcom/flurry/sdk/bz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bz$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bz"

.field private static d:Lcom/flurry/sdk/bz;


# instance fields
.field b:Z

.field public c:Z

.field private e:Z

.field private final f:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/co;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/flurry/sdk/bz;->e:Z

    .line 40
    new-instance v1, Lcom/flurry/sdk/bz$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/bz$1;-><init>(Lcom/flurry/sdk/bz;)V

    iput-object v1, p0, Lcom/flurry/sdk/bz;->f:Lcom/flurry/sdk/cw;

    .line 62
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 1103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flurry/sdk/bz;->e:Z

    .line 65
    invoke-direct {p0, v1}, Lcom/flurry/sdk/bz;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bz;->c:Z

    .line 67
    iget-boolean v0, p0, Lcom/flurry/sdk/bz;->e:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/bz;->d()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/bz;
    .locals 2

    const-class v0, Lcom/flurry/sdk/bz;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/bz;->d:Lcom/flurry/sdk/bz;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/flurry/sdk/bz;

    invoke-direct {v1}, Lcom/flurry/sdk/bz;-><init>()V

    sput-object v1, Lcom/flurry/sdk/bz;->d:Lcom/flurry/sdk/bz;

    .line 111
    :cond_0
    sget-object v1, Lcom/flurry/sdk/bz;->d:Lcom/flurry/sdk/bz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 106
    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/flurry/sdk/bz;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/bz;->e()Landroid/net/ConnectivityManager;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/flurry/sdk/bz;Landroid/content/Context;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/flurry/sdk/bz;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/bz;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/bz;->d:Lcom/flurry/sdk/bz;

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lcom/flurry/sdk/bz;->d:Lcom/flurry/sdk/bz;

    invoke-direct {v1}, Lcom/flurry/sdk/bz;->f()V

    :cond_0
    const/4 v1, 0x0

    .line 119
    sput-object v1, Lcom/flurry/sdk/bz;->d:Lcom/flurry/sdk/bz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 114
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/bz;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 87
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 2103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 91
    invoke-direct {p0, v0}, Lcom/flurry/sdk/bz;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/bz;->c:Z

    .line 92
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.ActivityLifecycleEvent"

    iget-object v2, p0, Lcom/flurry/sdk/bz;->f:Lcom/flurry/sdk/cw;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/flurry/sdk/bz;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 85
    monitor-exit p0

    throw v0
.end method

.method private static e()Landroid/net/ConnectivityManager;
    .locals 2

    .line 102
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 3103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/bz;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 4103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 128
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/bz;->f:Lcom/flurry/sdk/cw;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cw;)V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/flurry/sdk/bz;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 122
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final c()I
    .locals 3

    .line 156
    iget-boolean v0, p0, Lcom/flurry/sdk/bz;->e:Z

    if-nez v0, :cond_0

    .line 160
    sget v0, Lcom/flurry/sdk/bz$a;->a:I

    return v0

    .line 163
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/bz;->e()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    .line 185
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    sget v0, Lcom/flurry/sdk/bz$a;->b:I

    return v0

    .line 188
    :cond_2
    sget v0, Lcom/flurry/sdk/bz$a;->a:I

    return v0

    .line 172
    :pswitch_0
    sget v0, Lcom/flurry/sdk/bz$a;->c:I

    return v0

    .line 179
    :pswitch_1
    sget v0, Lcom/flurry/sdk/bz$a;->d:I

    return v0

    .line 182
    :cond_3
    sget v0, Lcom/flurry/sdk/bz$a;->a:I

    return v0

    .line 167
    :cond_4
    :goto_0
    sget v0, Lcom/flurry/sdk/bz$a;->a:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/flurry/sdk/bz;->a(Landroid/content/Context;)Z

    move-result p1

    .line 144
    iget-boolean p2, p0, Lcom/flurry/sdk/bz;->c:Z

    if-eq p2, p1, :cond_0

    .line 145
    iput-boolean p1, p0, Lcom/flurry/sdk/bz;->c:Z

    .line 147
    new-instance p2, Lcom/flurry/sdk/by;

    invoke-direct {p2}, Lcom/flurry/sdk/by;-><init>()V

    .line 148
    iput-boolean p1, p2, Lcom/flurry/sdk/by;->a:Z

    .line 149
    invoke-virtual {p0}, Lcom/flurry/sdk/bz;->c()I

    move-result p1

    iput p1, p2, Lcom/flurry/sdk/by;->b:I

    .line 5023
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cv;)V

    :cond_0
    return-void
.end method
