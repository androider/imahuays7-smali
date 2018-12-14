.class Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;
.super Ljava/lang/Object;
.source "SampleVideo.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 330
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->p(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/z;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/z;->b()Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->q(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->r(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    .line 333
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->s(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->p(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/ui/activity/player/z;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/z;->a()Ljava/lang/String;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->onVideoPause()V

    .line 336
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->t(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)J

    move-result-wide v2

    .line 337
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseMediaPlayer()V

    .line 338
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->u(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    .line 339
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->v(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    .line 340
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;Ljava/lang/String;J)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->B(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->c(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I

    goto :goto_0

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u7ecf\u662f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
