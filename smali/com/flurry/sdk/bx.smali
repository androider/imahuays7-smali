.class public Lcom/flurry/sdk/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bx$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "bx"

.field private static b:I = -0x1

.field private static c:I = -0x1

.field private static d:I = -0x1

.field private static e:Lcom/flurry/sdk/bx;


# instance fields
.field private f:Z

.field private g:Landroid/location/Location;

.field private h:J

.field private i:Landroid/location/LocationManager;

.field private j:Lcom/flurry/sdk/bx$a;

.field private k:Landroid/location/Location;

.field private l:Z

.field private m:I

.field private n:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/flurry/sdk/bx;->h:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/flurry/sdk/bx;->l:Z

    .line 53
    iput v0, p0, Lcom/flurry/sdk/bx;->m:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    .line 57
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 1103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "location"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/sdk/bx;->i:Landroid/location/LocationManager;

    .line 59
    new-instance v0, Lcom/flurry/sdk/bx$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bx$a;-><init>(Lcom/flurry/sdk/bx;)V

    iput-object v0, p0, Lcom/flurry/sdk/bx;->j:Lcom/flurry/sdk/bx$a;

    .line 61
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "ReportLocation"

    .line 63
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/bx;->f:Z

    const-string v1, "ReportLocation"

    .line 64
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 65
    sget-object v1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ReportLocation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/bx;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExplicitLocation"

    .line 68
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iput-object v1, p0, Lcom/flurry/sdk/bx;->g:Landroid/location/Location;

    const-string v1, "ExplicitLocation"

    .line 69
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 70
    sget-object v0, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, ExplicitLocation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/bx;->g:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/bx;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/flurry/sdk/bx;->h:J

    return-wide v0
.end method

.method static synthetic a(Lcom/flurry/sdk/bx;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/flurry/sdk/bx;->k:Landroid/location/Location;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/flurry/sdk/bx;->i:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/bx;
    .locals 2

    const-class v0, Lcom/flurry/sdk/bx;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/bx;->e:Lcom/flurry/sdk/bx;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/flurry/sdk/bx;

    invoke-direct {v1}, Lcom/flurry/sdk/bx;-><init>()V

    sput-object v1, Lcom/flurry/sdk/bx;->e:Lcom/flurry/sdk/bx;

    .line 77
    :cond_0
    sget-object v1, Lcom/flurry/sdk/bx;->e:Lcom/flurry/sdk/bx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 73
    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()V
    .locals 3

    .line 81
    sget-object v0, Lcom/flurry/sdk/bx;->e:Lcom/flurry/sdk/bx;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "ReportLocation"

    sget-object v2, Lcom/flurry/sdk/bx;->e:Lcom/flurry/sdk/bx;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 84
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "ExplicitLocation"

    sget-object v2, Lcom/flurry/sdk/bx;->e:Lcom/flurry/sdk/bx;

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/eh;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    :cond_0
    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/flurry/sdk/bx;->e:Lcom/flurry/sdk/bx;

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/bx;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/flurry/sdk/bx;->i()V

    return-void
.end method

.method public static c()I
    .locals 1

    .line 92
    sget v0, Lcom/flurry/sdk/bx;->b:I

    return v0
.end method

.method static synthetic c(Lcom/flurry/sdk/bx;)I
    .locals 1

    .line 26
    iget v0, p0, Lcom/flurry/sdk/bx;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/bx;->m:I

    return v0
.end method

.method public static d()I
    .locals 1

    .line 108
    sget v0, Lcom/flurry/sdk/bx;->d:I

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 4

    .line 222
    iget-boolean v0, p0, Lcom/flurry/sdk/bx;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/bx;->i:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/sdk/bx;->j:Lcom/flurry/sdk/bx$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 227
    iput v0, p0, Lcom/flurry/sdk/bx;->m:I

    const-wide/16 v1, 0x0

    .line 230
    iput-wide v1, p0, Lcom/flurry/sdk/bx;->h:J

    .line 2238
    sget-object v1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v2, "Unregister location timer"

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object v1, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 2242
    iget-object v1, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 2243
    iput-object v1, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    .line 233
    :cond_1
    iput-boolean v0, p0, Lcom/flurry/sdk/bx;->l:Z

    .line 234
    sget-object v0, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v1, "LocationProvider stopped"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x33814ed7    # -6.6765988E7f

    if-eq v0, v1, :cond_1

    const v1, -0x11ecc5d7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ExplicitLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ReportLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 304
    sget-object p2, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v0, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key."

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 300
    :pswitch_0
    check-cast p2, Landroid/location/Location;

    iput-object p2, p0, Lcom/flurry/sdk/bx;->g:Landroid/location/Location;

    .line 301
    sget-object p1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, ExplicitLocation = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/bx;->g:Landroid/location/Location;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/bx;->f:Z

    .line 297
    sget-object p1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, ReportLocation = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/bx;->f:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized e()V
    .locals 10

    monitor-enter p0

    .line 116
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v1, "Location update requested"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/flurry/sdk/bx;->m:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 1123
    iget-boolean v0, p0, Lcom/flurry/sdk/bx;->l:Z

    if-nez v0, :cond_4

    .line 1127
    iget-boolean v0, p0, Lcom/flurry/sdk/bx;->f:Z

    if-eqz v0, :cond_4

    .line 1131
    iget-object v0, p0, Lcom/flurry/sdk/bx;->g:Landroid/location/Location;

    if-nez v0, :cond_4

    .line 1135
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 2103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 1136
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1138
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    .line 1143
    iput v1, p0, Lcom/flurry/sdk/bx;->m:I

    .line 1148
    invoke-static {v0}, Lcom/flurry/sdk/bx;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "passive"

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2178
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2179
    iget-object v3, p0, Lcom/flurry/sdk/bx;->i:Landroid/location/LocationManager;

    const-wide/16 v5, 0x2710

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/flurry/sdk/bx;->j:Lcom/flurry/sdk/bx$a;

    .line 2180
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v4, v0

    .line 2179
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1153
    :cond_2
    invoke-direct {p0, v0}, Lcom/flurry/sdk/bx;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bx;->k:Landroid/location/Location;

    .line 1156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x15f90

    add-long v7, v3, v5

    iput-wide v7, p0, Lcom/flurry/sdk/bx;->h:J

    .line 2194
    iget-object v0, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 2195
    iget-object v0, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2196
    iput-object v1, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    .line 2199
    :cond_3
    sget-object v0, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v1, "Register location timer"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2200
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    .line 2201
    iget-object v0, p0, Lcom/flurry/sdk/bx;->n:Ljava/util/Timer;

    new-instance v1, Lcom/flurry/sdk/bx$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/bx$1;-><init>(Lcom/flurry/sdk/bx;)V

    invoke-virtual {v0, v1, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v0, 0x1

    .line 1159
    iput-boolean v0, p0, Lcom/flurry/sdk/bx;->l:Z

    .line 1160
    sget-object v0, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v1, "LocationProvider started"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 115
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 216
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    const-string v2, "Stop update location requested"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/flurry/sdk/bx;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 215
    monitor-exit p0

    throw v0
.end method

.method public final g()Landroid/location/Location;
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/bx;->g:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/flurry/sdk/bx;->g:Landroid/location/Location;

    return-object v0

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/bx;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 257
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 3103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 258
    invoke-static {v0}, Lcom/flurry/sdk/bx;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3173
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    return-object v1

    .line 265
    :cond_2
    invoke-static {v0}, Lcom/flurry/sdk/bx;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "passive"

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 270
    invoke-direct {p0, v0}, Lcom/flurry/sdk/bx;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 273
    iput-object v0, p0, Lcom/flurry/sdk/bx;->k:Landroid/location/Location;

    .line 276
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/bx;->k:Landroid/location/Location;

    :cond_5
    const/4 v0, 0x4

    .line 280
    sget-object v2, Lcom/flurry/sdk/bx;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocation() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
