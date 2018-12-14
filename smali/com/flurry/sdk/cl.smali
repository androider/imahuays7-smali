.class public Lcom/flurry/sdk/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "cl"

.field private static d:Lcom/flurry/sdk/cl; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static i:Z = false


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Lcom/flurry/sdk/df;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flurry/sdk/cl;->e:Landroid/os/Handler;

    .line 39
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FlurryAgent"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flurry/sdk/cl;->g:Landroid/os/HandlerThread;

    .line 40
    iget-object p1, p0, Lcom/flurry/sdk/cl;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/flurry/sdk/cl;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flurry/sdk/cl;->f:Landroid/os/Handler;

    .line 43
    iput-object p2, p0, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 45
    new-instance p1, Lcom/flurry/sdk/df;

    invoke-direct {p1}, Lcom/flurry/sdk/df;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/cl;->h:Lcom/flurry/sdk/df;

    return-void
.end method

.method public static a()Lcom/flurry/sdk/cl;
    .locals 1

    .line 49
    sget-object v0, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cl;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/flurry/sdk/cl;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cl;

    if-eqz v1, :cond_1

    .line 54
    sget-object p0, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cl;

    .line 1075
    iget-object p0, p0, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only one API key per application is supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_0
    sget-object p0, Lcom/flurry/sdk/cl;->c:Ljava/lang/String;

    const-string p1, "Flurry is already initialized"

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    return-void

    :cond_1
    if-nez p0, :cond_2

    .line 63
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API key must be specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_3
    new-instance v1, Lcom/flurry/sdk/cl;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/cl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    sput-object v1, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cl;

    .line 1079
    iget-object p1, v1, Lcom/flurry/sdk/cl;->h:Lcom/flurry/sdk/df;

    invoke-virtual {p1, p0}, Lcom/flurry/sdk/df;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .locals 1

    const-class v0, Lcom/flurry/sdk/cl;

    monitor-enter v0

    .line 179
    :try_start_0
    sput-boolean p0, Lcom/flurry/sdk/cl;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 178
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Lcom/flurry/sdk/cl;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 84
    monitor-exit v0

    return-void

    .line 87
    :cond_0
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cl;

    .line 1092
    invoke-static {}, Lcom/flurry/sdk/fe;->b()V

    .line 1099
    iget-object v2, v1, Lcom/flurry/sdk/cl;->h:Lcom/flurry/sdk/df;

    invoke-virtual {v2}, Lcom/flurry/sdk/df;->b()V

    .line 1095
    iget-object v1, v1, Lcom/flurry/sdk/cl;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 88
    sput-object v1, Lcom/flurry/sdk/cl;->d:Lcom/flurry/sdk/cl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()Z
    .locals 2

    const-class v0, Lcom/flurry/sdk/cl;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-boolean v1, Lcom/flurry/sdk/cl;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/flurry/sdk/dg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/flurry/sdk/dg;",
            ">;)",
            "Lcom/flurry/sdk/dg;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/cl;->h:Lcom/flurry/sdk/df;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/df;->b(Ljava/lang/Class;)Lcom/flurry/sdk/dg;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/cl;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/cl;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/cl;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/cl;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
