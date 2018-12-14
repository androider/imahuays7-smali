.class public Lcom/facebook/fresco/animation/a/c;
.super Lcom/facebook/fresco/animation/a/b;
.source "AnimationBackendDelegateWithInactivityCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/fresco/animation/a/a;",
        ">",
        "Lcom/facebook/fresco/animation/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/time/b;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/fresco/animation/a/c$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/facebook/fresco/animation/a/a;Lcom/facebook/fresco/animation/a/c$a;Lcom/facebook/common/time/b;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/a/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/a/c$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/fresco/animation/a/c$a;",
            "Lcom/facebook/common/time/b;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/a/b;-><init>(Lcom/facebook/fresco/animation/a/a;)V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/a/c;->c:Z

    const-wide/16 v0, 0x7d0

    .line 70
    iput-wide v0, p0, Lcom/facebook/fresco/animation/a/c;->e:J

    const-wide/16 v0, 0x3e8

    .line 71
    iput-wide v0, p0, Lcom/facebook/fresco/animation/a/c;->f:J

    .line 79
    new-instance p1, Lcom/facebook/fresco/animation/a/c$1;

    invoke-direct {p1, p0}, Lcom/facebook/fresco/animation/a/c$1;-><init>(Lcom/facebook/fresco/animation/a/c;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/a/c;->h:Ljava/lang/Runnable;

    .line 101
    iput-object p2, p0, Lcom/facebook/fresco/animation/a/c;->g:Lcom/facebook/fresco/animation/a/c$a;

    .line 102
    iput-object p3, p0, Lcom/facebook/fresco/animation/a/c;->a:Lcom/facebook/common/time/b;

    .line 103
    iput-object p4, p0, Lcom/facebook/fresco/animation/a/c;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a(Lcom/facebook/fresco/animation/a/a;Lcom/facebook/common/time/b;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/fresco/animation/a/a;",
            ":",
            "Lcom/facebook/fresco/animation/a/c$a;",
            ">(TT;",
            "Lcom/facebook/common/time/b;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/facebook/fresco/animation/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/animation/a/c$a;

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/fresco/animation/a/c;->a(Lcom/facebook/fresco/animation/a/a;Lcom/facebook/fresco/animation/a/c$a;Lcom/facebook/common/time/b;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/a/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/facebook/fresco/animation/a/a;Lcom/facebook/fresco/animation/a/c$a;Lcom/facebook/common/time/b;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/fresco/animation/a/a;",
            ">(TT;",
            "Lcom/facebook/fresco/animation/a/c$a;",
            "Lcom/facebook/common/time/b;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/facebook/fresco/animation/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/facebook/fresco/animation/a/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/fresco/animation/a/c;-><init>(Lcom/facebook/fresco/animation/a/a;Lcom/facebook/fresco/animation/a/c$a;Lcom/facebook/common/time/b;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/a/c;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/facebook/fresco/animation/a/c;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/a/c;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/a/c;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/fresco/animation/a/c;)Lcom/facebook/fresco/animation/a/c$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/facebook/fresco/animation/a/c;->g:Lcom/facebook/fresco/animation/a/c$a;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/fresco/animation/a/c;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/facebook/fresco/animation/a/c;->g()V

    return-void
.end method

.method private f()Z
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/c;->a:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/fresco/animation/a/c;->d:J

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/facebook/fresco/animation/a/c;->e:J

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized g()V
    .locals 5

    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/a/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/a/c;->c:Z

    .line 141
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/c;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/fresco/animation/a/c;->h:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/facebook/fresco/animation/a/c;->f:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/c;->a:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fresco/animation/a/c;->d:J

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/fresco/animation/a/b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    .line 110
    invoke-direct {p0}, Lcom/facebook/fresco/animation/a/c;->g()V

    return p1
.end method
