.class Lcom/shuyu/gsyvideoplayer/c$5;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/c;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/shuyu/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/c;II)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$5;->c:Lcom/shuyu/gsyvideoplayer/c;

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/c$5;->a:I

    iput p3, p0, Lcom/shuyu/gsyvideoplayer/c$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$5;->c:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->e()V

    .line 304
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$5;->c:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$5;->c:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/c$5;->a:I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/c$5;->b:I

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/c/a;->onError(II)V

    :cond_0
    return-void
.end method
