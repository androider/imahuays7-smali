.class public Lcom/flurry/sdk/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "ee"

.field private static c:Lcom/flurry/sdk/ee;


# instance fields
.field public a:J

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/ec;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/ef;

.field private final f:Ljava/lang/Object;

.field private g:Lcom/flurry/sdk/ec;

.field private h:Z

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Lcom/flurry/sdk/cw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cw<",
            "Lcom/flurry/sdk/eg;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/flurry/sdk/cw;
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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ee;->d:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/flurry/sdk/ef;

    invoke-direct {v0}, Lcom/flurry/sdk/ef;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ee;->e:Lcom/flurry/sdk/ef;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ee;->f:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/ee;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Lcom/flurry/sdk/ee$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ee$1;-><init>(Lcom/flurry/sdk/ee;)V

    iput-object v0, p0, Lcom/flurry/sdk/ee;->j:Lcom/flurry/sdk/cw;

    .line 44
    new-instance v0, Lcom/flurry/sdk/ee$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ee$2;-><init>(Lcom/flurry/sdk/ee;)V

    iput-object v0, p0, Lcom/flurry/sdk/ee;->k:Lcom/flurry/sdk/cw;

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/flurry/sdk/ee;->a:J

    .line 88
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.ActivityLifecycleEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ee;->k:Lcom/flurry/sdk/cw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 90
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionTimerEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ee;->j:Lcom/flurry/sdk/cw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ee;
    .locals 2

    const-class v0, Lcom/flurry/sdk/ee;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ee;->c:Lcom/flurry/sdk/ee;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/flurry/sdk/ee;

    invoke-direct {v1}, Lcom/flurry/sdk/ee;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ee;->c:Lcom/flurry/sdk/ee;

    .line 99
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ee;->c:Lcom/flurry/sdk/ee;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 94
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)V
    .locals 5

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 164
    iget-object v0, p0, Lcom/flurry/sdk/ee;->e:Lcom/flurry/sdk/ef;

    invoke-virtual {v0}, Lcom/flurry/sdk/ef;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget-object p1, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    const-string p2, "A background session has already started. Not storing in context map because we use application context only."

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    const-string v2, "Returning from a paused background session."

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->a()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 174
    sget-object p1, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    const-string p2, "A Flurry background session can\'t be started while a foreground session is running."

    invoke-static {p1, p2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    monitor-exit p0

    return-void

    .line 180
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 181
    sget-object p2, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    const-string v0, "New session started while background session is running.  Ending background session, then will create foreground session."

    invoke-static {p2, v0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/flurry/sdk/ee;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p2

    .line 1103
    iget-object p2, p2, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 188
    invoke-direct {p0, p2, v2}, Lcom/flurry/sdk/ee;->b(Landroid/content/Context;Z)V

    .line 191
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p2

    new-instance v0, Lcom/flurry/sdk/ee$3;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ee$3;-><init>(Lcom/flurry/sdk/ee;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    monitor-exit p0

    return-void

    .line 202
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/ee;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ec;

    if-eqz v0, :cond_5

    .line 204
    invoke-static {}, Lcom/flurry/sdk/cp;->a()Lcom/flurry/sdk/cp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/flurry/sdk/cp;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 205
    sget-object p2, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Session already started with context:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    .line 207
    :cond_4
    :try_start_4
    sget-object p2, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session already started with context:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    monitor-exit p0

    return-void

    .line 213
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/flurry/sdk/ee;->e:Lcom/flurry/sdk/ef;

    invoke-virtual {v0}, Lcom/flurry/sdk/ef;->b()V

    .line 216
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    if-eqz p2, :cond_6

    .line 224
    new-instance p2, Lcom/flurry/sdk/eb;

    invoke-direct {p2}, Lcom/flurry/sdk/eb;-><init>()V

    :goto_0
    move-object v0, p2

    goto :goto_1

    .line 226
    :cond_6
    new-instance p2, Lcom/flurry/sdk/ec;

    invoke-direct {p2}, Lcom/flurry/sdk/ec;-><init>()V

    goto :goto_0

    .line 230
    :goto_1
    sget p2, Lcom/flurry/sdk/ec$a;->b:I

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ec;->a(I)V

    .line 232
    sget-object p2, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Flurry session started for context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance p2, Lcom/flurry/sdk/ed;

    invoke-direct {p2}, Lcom/flurry/sdk/ed;-><init>()V

    .line 235
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p2, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    .line 236
    iput-object v0, p2, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    .line 237
    sget v3, Lcom/flurry/sdk/ed$a;->a:I

    iput v3, p2, Lcom/flurry/sdk/ed;->d:I

    .line 238
    invoke-virtual {p2}, Lcom/flurry/sdk/ed;->b()V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 241
    :goto_2
    iget-object p2, p0, Lcom/flurry/sdk/ee;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    iget-object p2, p0, Lcom/flurry/sdk/ee;->f:Ljava/lang/Object;

    monitor-enter p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1504
    :try_start_6
    iput-object v0, p0, Lcom/flurry/sdk/ee;->g:Lcom/flurry/sdk/ec;

    .line 1505
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    :try_start_7
    iget-object p2, p0, Lcom/flurry/sdk/ee;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    sget-object p2, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session resumed for context:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance p2, Lcom/flurry/sdk/ed;

    invoke-direct {p2}, Lcom/flurry/sdk/ed;-><init>()V

    .line 250
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p2, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    .line 251
    iput-object v0, p2, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    .line 252
    sget v1, Lcom/flurry/sdk/ed$a;->b:I

    iput v1, p2, Lcom/flurry/sdk/ed;->d:I

    .line 253
    invoke-virtual {p2}, Lcom/flurry/sdk/ed;->b()V

    if-eqz v2, :cond_8

    .line 260
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p2

    new-instance v1, Lcom/flurry/sdk/ee$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/flurry/sdk/ee$4;-><init>(Lcom/flurry/sdk/ee;Lcom/flurry/sdk/ec;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    :cond_8
    const-wide/16 p1, 0x0

    .line 279
    iput-wide p1, p0, Lcom/flurry/sdk/ee;->a:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1505
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    .line 162
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ee;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/flurry/sdk/ee;->h()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ee;Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ee;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ee;Lcom/flurry/sdk/ec;)V
    .locals 3

    .line 2432
    iget-object v0, p0, Lcom/flurry/sdk/ee;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2433
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/ee;->g:Lcom/flurry/sdk/ec;

    if-ne v1, p1, :cond_0

    .line 2434
    iget-object p1, p0, Lcom/flurry/sdk/ee;->g:Lcom/flurry/sdk/ec;

    .line 3099
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v1

    const-string v2, "ContinueSessionMillis"

    .line 3100
    invoke-virtual {v1, v2, p1}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    .line 3102
    sget v1, Lcom/flurry/sdk/ec$a;->a:I

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/ec;->a(I)V

    const/4 p1, 0x0

    .line 2435
    iput-object p1, p0, Lcom/flurry/sdk/ee;->g:Lcom/flurry/sdk/ec;

    .line 2437
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Lcom/flurry/sdk/ee;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ee;->c:Lcom/flurry/sdk/ee;

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/ee;->c:Lcom/flurry/sdk/ee;

    iget-object v2, v2, Lcom/flurry/sdk/ee;->j:Lcom/flurry/sdk/cw;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cw;)V

    .line 106
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/ee;->c:Lcom/flurry/sdk/ee;

    iget-object v2, v2, Lcom/flurry/sdk/ee;->k:Lcom/flurry/sdk/cw;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cx;->a(Lcom/flurry/sdk/cw;)V

    :cond_0
    const/4 v1, 0x0

    .line 109
    sput-object v1, Lcom/flurry/sdk/ee;->c:Lcom/flurry/sdk/ee;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized b(Landroid/content/Context;Z)V
    .locals 4

    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ee;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ec;

    if-eqz p2, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/ec;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/ee;->e:Lcom/flurry/sdk/ef;

    invoke-virtual {v1}, Lcom/flurry/sdk/ef;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/flurry/sdk/ee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    :cond_0
    if-nez v0, :cond_2

    .line 353
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/cp;->a()Lcom/flurry/sdk/cp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/flurry/sdk/cp;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 354
    sget-object v0, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session cannot be ended, session not found for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 357
    :cond_1
    :try_start_2
    sget-object p2, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session cannot be ended, session not found for context:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 363
    :cond_2
    :try_start_3
    sget-object v1, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session paused for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v1, Lcom/flurry/sdk/ed;

    invoke-direct {v1}, Lcom/flurry/sdk/ed;-><init>()V

    .line 366
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    .line 367
    iput-object v0, v1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    .line 368
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/ed;->e:J

    .line 369
    sget p1, Lcom/flurry/sdk/ed$a;->c:I

    iput p1, v1, Lcom/flurry/sdk/ed;->d:I

    .line 370
    invoke-virtual {v1}, Lcom/flurry/sdk/ed;->b()V

    .line 374
    invoke-direct {p0}, Lcom/flurry/sdk/ee;->i()I

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    .line 376
    invoke-direct {p0}, Lcom/flurry/sdk/ee;->h()V

    goto :goto_0

    .line 378
    :cond_3
    iget-object p1, p0, Lcom/flurry/sdk/ee;->e:Lcom/flurry/sdk/ef;

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/ef;->a(J)V

    .line 380
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/flurry/sdk/ee;->a:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const-wide/16 p1, 0x0

    .line 382
    :try_start_4
    iput-wide p1, p0, Lcom/flurry/sdk/ee;->a:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 341
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ee;)Z
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/flurry/sdk/ee;->h:Z

    return v0
.end method

.method private declared-synchronized e(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 156
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ee;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit p0

    throw p1
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 5

    monitor-enter p0

    .line 391
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/ee;->i()I

    move-result v0

    const/4 v1, 0x5

    if-lez v0, :cond_0

    .line 393
    sget-object v2, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Session cannot be finalized, sessionContextCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    if-nez v0, :cond_1

    .line 401
    sget-object v0, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    const-string v2, "Session cannot be finalized, current session not found"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 405
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "background"

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " session ended"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v1, Lcom/flurry/sdk/ed;

    invoke-direct {v1}, Lcom/flurry/sdk/ed;-><init>()V

    .line 408
    iput-object v0, v1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    .line 409
    sget v2, Lcom/flurry/sdk/ed$a;->d:I

    iput v2, v1, Lcom/flurry/sdk/ed;->d:I

    .line 410
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/ed;->e:J

    .line 411
    invoke-virtual {v1}, Lcom/flurry/sdk/ed;->b()V

    .line 415
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ee$6;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/ee$6;-><init>(Lcom/flurry/sdk/ee;Lcom/flurry/sdk/ec;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 390
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()I
    .locals 1

    monitor-enter p0

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ee;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 118
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 119
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/cp;->a()Lcom/flurry/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/cp;->c()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 124
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 128
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bootstrap for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ee;->e(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 117
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 288
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/ee;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    .line 290
    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/ee;->b(Landroid/content/Context;Z)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ee$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/ee$5;-><init>(Lcom/flurry/sdk/ee;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 287
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;ZZ)V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cp;->a()Lcom/flurry/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/cp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 142
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 148
    :try_start_1
    iput-boolean p3, p0, Lcom/flurry/sdk/ee;->h:Z

    :cond_1
    const/4 p3, 0x3

    .line 151
    sget-object v0, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Manual onStartSession for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ee;->a(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 139
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lcom/flurry/sdk/ee;->a(Landroid/content/Context;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;ZZ)V
    .locals 2

    monitor-enter p0

    .line 316
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cp;->a()Lcom/flurry/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/cp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 318
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 323
    sget-object p1, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    const-string p2, "No background session running, can\'t end session."

    invoke-static {p1, p2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 327
    :try_start_2
    iget-boolean p2, p0, Lcom/flurry/sdk/ee;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 329
    monitor-exit p0

    return-void

    :cond_2
    const/4 p2, 0x3

    .line 332
    :try_start_3
    sget-object p3, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manual onEndSession for context:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ee;->d(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 315
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ee;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 444
    new-instance v2, Lcom/flurry/sdk/ed;

    invoke-direct {v2}, Lcom/flurry/sdk/ed;-><init>()V

    .line 445
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    .line 446
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ec;

    iput-object v1, v2, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    .line 447
    sget v1, Lcom/flurry/sdk/ed$a;->c:I

    iput v1, v2, Lcom/flurry/sdk/ed;->d:I

    .line 448
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    invoke-static {}, Lcom/flurry/sdk/br;->d()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/flurry/sdk/ed;->e:J

    .line 449
    invoke-virtual {v2}, Lcom/flurry/sdk/ed;->b()V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ee;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 454
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ee$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ee$7;-><init>(Lcom/flurry/sdk/ee;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 441
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 310
    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lcom/flurry/sdk/ee;->b(Landroid/content/Context;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 309
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized d(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 337
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ee;->b(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 336
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()Z
    .locals 3

    monitor-enter p0

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 470
    sget-object v1, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    const-string v2, "Session not found. No active session"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 471
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 473
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 467
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 3

    monitor-enter p0

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ee;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    sget v0, Lcom/flurry/sdk/ec$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 486
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ee;->f()Lcom/flurry/sdk/ec;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 489
    sget-object v1, Lcom/flurry/sdk/ee;->b:Ljava/lang/String;

    const-string v2, "Session not found. No active session"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 490
    sget v0, Lcom/flurry/sdk/ec$a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 493
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->c()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 480
    monitor-exit p0

    throw v0
.end method

.method public final f()Lcom/flurry/sdk/ec;
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/flurry/sdk/ee;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/ee;->g:Lcom/flurry/sdk/ec;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 499
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
