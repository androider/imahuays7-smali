.class Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;
.super Landroid/os/Handler;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->access$008(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)I

    .line 46
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->access$000(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)I

    move-result p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->access$100(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execFinish()V

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->access$200(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->access$200(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->access$000(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;->execInterval(I)V

    :cond_1
    return-void
.end method
