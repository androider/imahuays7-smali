.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a(ZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;ZLjava/io/File;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->a:Z

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 488
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "TTT"

    .line 489
    invoke-static {v0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lb/a/a$a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->r(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u8f6cgif\u5931\u8d25"

    const/16 v3, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 495
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onVideoResume()V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z

    .line 499
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->d(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z

    .line 501
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_record_gif_time:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0 s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_fullplayer_gif:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    return-void
.end method
