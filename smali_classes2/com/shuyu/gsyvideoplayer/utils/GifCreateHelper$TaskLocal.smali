.class Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;
.super Ljava/util/TimerTask;
.source "GifCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskLocal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;


# direct methods
.method private constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$600(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$602(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Z)Z

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v0, v2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$700(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method
