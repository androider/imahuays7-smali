.class Lcom/shuyu/gsyvideoplayer/c$3;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/c;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/shuyu/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/c;I)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$3;->b:Lcom/shuyu/gsyvideoplayer/c;

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/c$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$3;->b:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c$3;->a:I

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c$3;->b:Lcom/shuyu/gsyvideoplayer/c;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/c;->r:I

    if-le v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$3;->b:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/c$3;->a:I

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/c/a;->onBufferingUpdate(I)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$3;->b:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/c$3;->b:Lcom/shuyu/gsyvideoplayer/c;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/c;->r:I

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/c/a;->onBufferingUpdate(I)V

    :cond_1
    :goto_0
    return-void
.end method
