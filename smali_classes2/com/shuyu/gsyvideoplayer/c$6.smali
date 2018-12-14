.class Lcom/shuyu/gsyvideoplayer/c$6;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/c;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
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

    .line 314
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/c$6;->c:Lcom/shuyu/gsyvideoplayer/c;

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/c$6;->a:I

    iput p3, p0, Lcom/shuyu/gsyvideoplayer/c$6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$6;->c:Lcom/shuyu/gsyvideoplayer/c;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/c;->v:Z

    if-eqz v0, :cond_1

    .line 318
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c$6;->a:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$6;->c:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->d()V

    goto :goto_0

    .line 320
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/c$6;->a:I

    const/16 v1, 0x2be

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$6;->c:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->e()V

    .line 324
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$6;->c:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/c$6;->c:Lcom/shuyu/gsyvideoplayer/c;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/c;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/c$6;->a:I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/c$6;->b:I

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/c/a;->onInfo(II)V

    :cond_2
    return-void
.end method
