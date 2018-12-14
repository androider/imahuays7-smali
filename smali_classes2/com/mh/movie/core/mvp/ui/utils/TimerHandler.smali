.class public Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;
.super Ljava/lang/Object;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;
    }
.end annotation


# instance fields
.field private execAllTimes:I

.field private execTime:I

.field private execTimerListener:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;

.field private intervalTime:J

.field public isExecFinish:Z

.field timeHandler:Landroid/os/Handler;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTime:I

    .line 42
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;-><init>(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timeHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTime:I

    .line 42
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;-><init>(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timeHandler:Landroid/os/Handler;

    .line 38
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execAllTimes:I

    .line 39
    iput-wide p2, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->intervalTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTime:I

    return p0
.end method

.method static synthetic access$008(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)I
    .locals 2

    .line 9
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execAllTimes:I

    return p0
.end method

.method static synthetic access$200(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTimerListener:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;

    return-object p0
.end method


# virtual methods
.method public cancelTime()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 78
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timer:Ljava/util/Timer;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 81
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method public execFinish()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->isExecFinish:Z

    .line 92
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->cancelTime()V

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTimerListener:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTimerListener:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;->autoFinish()V

    :cond_0
    return-void
.end method

.method public setExecTimerListener(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTimerListener:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;

    return-void
.end method

.method public startTime()V
    .locals 7

    .line 56
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->cancelTime()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->isExecFinish:Z

    .line 58
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execTime:I

    .line 60
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$2;-><init>(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timerTask:Ljava/util/TimerTask;

    .line 70
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timer:Ljava/util/Timer;

    .line 71
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timerTask:Ljava/util/TimerTask;

    iget-wide v5, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->intervalTime:J

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
