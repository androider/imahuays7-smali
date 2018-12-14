.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 355
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->o(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->p(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    .line 391
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->startTime()V

    .line 393
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    .line 395
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z

    .line 397
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z

    .line 398
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Landroid/view/View;I)V

    .line 399
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    sget v0, Lcom/mh/movie/core/R$id;->ll_video_record_gif_contains:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    sget v0, Lcom/mh/movie/core/R$id;->tv_video_create_gif_ing:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u6b63\u5728\u622a\u53d6\u89c6\u9891..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->ico_fullplayer_gif_pre:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->g(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    move-result-object p1

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaGifPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->startGif(Ljava/io/File;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 361
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->g(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    move-result-object p1

    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->isGeneraGif:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->h(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I

    move-result p1

    const/4 v1, 0x2

    const/16 v2, 0x3e8

    if-eq p1, v1, :cond_1

    .line 364
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->i(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u622a\u53d6GIF\u529f\u80fd\u6682\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {p1, p2, v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return v0

    .line 368
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 410
    :pswitch_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->g(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    move-result-object p1

    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->isGeneraGif:Z

    if-eqz p1, :cond_2

    return v0

    .line 412
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->j(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const-wide/16 p1, 0x1f4

    cmp-long v1, v4, p1

    if-gez v1, :cond_4

    .line 416
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->m(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u81f3\u5c11\u9700\u8981\u5f55\u5c4f0.5s"

    invoke-static {p1, p2, v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 417
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z

    .line 418
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->b(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z

    .line 419
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    sget p2, Lcom/mh/movie/core/R$id;->tv_video_record_gif_time:I

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "0 s"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    sget p2, Lcom/mh/movie/core/R$mipmap;->ico_fullplayer_gif:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    .line 422
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->cancelTime()V

    .line 423
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->g(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->cancelGifCreate()V

    return v0

    .line 428
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->isExecFinish:Z

    if-nez p1, :cond_7

    .line 429
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execFinish()V

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->j(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    .line 374
    :cond_5
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getDuration()I

    move-result p1

    div-int/2addr p1, v2

    .line 375
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getCurrentPositionWhenPlaying()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr p1, v1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_6

    .line 378
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->k(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u5f71\u7247\u6700\u540e10s\u4e0d\u80fd\u622a\u53d6Gif"

    invoke-static {p1, p2, v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return v0

    .line 382
    :cond_6
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->l(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->EXTERNAL_GROUP:[Ljava/lang/String;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/player/h;

    invoke-direct {v2, p0, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/h;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;Landroid/view/MotionEvent;)V

    invoke-static {p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;[Ljava/lang/String;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;)V

    :cond_7
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
