.class final Lcom/flurry/sdk/ef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ef$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/flurry/sdk/ef$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ef;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/flurry/sdk/ef;->b()V

    .line 20
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "FlurrySessionTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/ef;->a:Ljava/util/Timer;

    .line 21
    new-instance v0, Lcom/flurry/sdk/ef$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ef$a;-><init>(Lcom/flurry/sdk/ef;)V

    iput-object v0, p0, Lcom/flurry/sdk/ef;->b:Lcom/flurry/sdk/ef$a;

    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/ef;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/flurry/sdk/ef;->b:Lcom/flurry/sdk/ef$a;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    throw p1
.end method

.method public final a()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/flurry/sdk/ef;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ef;->a:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/ef;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 32
    iput-object v1, p0, Lcom/flurry/sdk/ef;->a:Ljava/util/Timer;

    .line 35
    :cond_0
    iput-object v1, p0, Lcom/flurry/sdk/ef;->b:Lcom/flurry/sdk/ef$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    throw v0
.end method
