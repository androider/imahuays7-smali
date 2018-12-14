.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoFinish()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->T:Z

    .line 454
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;->a(Z)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->q(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    .line 458
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onVideoPause()V

    return-void
.end method

.method public execInterval(I)V
    .locals 4

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 p1, 0x64

    :cond_0
    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    .line 445
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/FormatDigitalUtil;->formatDecimal4(D)Ljava/lang/String;

    move-result-object p1

    .line 446
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_record_gif_time:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
