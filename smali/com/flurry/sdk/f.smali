.class public Lcom/flurry/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "f"


# instance fields
.field public final b:Landroid/content/SharedPreferences;

.field c:I

.field d:J

.field private e:Ljava/util/Timer;

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/flurry/sdk/f;->c:I

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/f;->f:Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 1103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    .line 37
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/sdk/cc;

    invoke-static {v1}, Lcom/flurry/sdk/cc;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/f;->c:I

    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const-wide/32 v1, 0x240c8400

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const-string v3, "refreshFetch"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 40
    :cond_0
    iput-wide v1, p0, Lcom/flurry/sdk/f;->d:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const-string v2, "appVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public final a(J)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastFetch"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/util/TimerTask;J)V
    .locals 4

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/f;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Record retry after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " msecs."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/util/Timer;

    const-string v2, "retry-scheduler"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/f;->e:Ljava/util/Timer;

    .line 68
    iget-object v1, p0, Lcom/flurry/sdk/f;->e:Ljava/util/Timer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 69
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 63
    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/f;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/f;->e:Ljava/util/Timer;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 75
    sget-object v2, Lcom/flurry/sdk/f;->a:Ljava/lang/String;

    const-string v3, "Clear retry."

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/flurry/sdk/f;->e:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 78
    iget-object v1, p0, Lcom/flurry/sdk/f;->e:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/flurry/sdk/f;->e:Ljava/util/Timer;

    .line 81
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/f;->b:Landroid/content/SharedPreferences;

    const-string v2, "lastKeyId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method
