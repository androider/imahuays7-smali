.class Lcom/shuyu/gsyvideoplayer/c$1;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/c;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shuyu/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/c;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$1;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$1;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->e()V

    .line 249
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$1;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$1;->a:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/c/a;->onPrepared()V

    :cond_0
    return-void
.end method
