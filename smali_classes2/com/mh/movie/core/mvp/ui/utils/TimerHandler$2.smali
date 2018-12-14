.class Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$2;
.super Ljava/util/TimerTask;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->startTime()V
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

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$2;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 65
    iput v1, v0, Landroid/os/Message;->what:I

    .line 66
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$2;->this$0:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
