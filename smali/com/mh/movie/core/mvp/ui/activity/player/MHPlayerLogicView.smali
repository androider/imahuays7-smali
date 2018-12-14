.class public Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;
.super Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;
.source "MHPlayerLogicView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/view/c;


# instance fields
.field private ab:Z

.field private ac:I

.field private ad:I

.field private ae:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

.field private af:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->af:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->af:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private b(I)I
    .locals 4

    .line 179
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 195
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ac:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v9, p0

    const-string v0, ""

    packed-switch p2, :pswitch_data_0

    :goto_0
    move v2, p1

    goto :goto_1

    :pswitch_0
    const-string v0, "\u90e8\u7efc\u827a"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u90e8\u52a8\u6f2b"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u90e8\u7535\u89c6\u5267"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u90e8\u7535\u5f71"

    goto :goto_0

    .line 340
    :goto_1
    invoke-virtual {v9, v2, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->a(ILjava/lang/String;)V

    .line 342
    iget-object v10, v9, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    new-instance v11, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;

    move-object v0, v11

    move-object v1, v9

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->setCallback(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-class p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    return-void

    .line 290
    :cond_0
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 295
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->c(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 298
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ab:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 300
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ab:Z

    :goto_0
    return-void
.end method

.method protected changeUiToNormal()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->changeUiToNormal()V

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->d()V

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->d()V

    return-void
.end method

.method protected hideAllWidget()V
    .locals 1

    .line 278
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->hideAllWidget()V

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->d()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->k()V

    .line 271
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->w()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->onPrepared()V

    .line 70
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->t()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->release()V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ae:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ae:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected resetData()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->resetData()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->af:Z

    return-void
.end method

.method public setVideoEndTime(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ac:I

    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ad:I

    return-void
.end method

.method public t()V
    .locals 4

    .line 95
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    const v1, 0x7fffffff

    const-wide/16 v2, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;-><init>(IJ)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ae:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ae:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->setExecTimerListener(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;)V

    .line 108
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ae:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->startTime()V

    return-void
.end method

.method public u()V
    .locals 3

    .line 144
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ad:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ab:Z

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ab:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->af:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->localPlayer:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mh/movie/core/mvp/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    const/16 v2, 0xa

    if-gt v0, v2, :cond_2

    return-void

    .line 154
    :cond_2
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ad:I

    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->b(I)I

    move-result v2

    mul-int/lit8 v0, v0, 0x3c

    if-ge v0, v2, :cond_3

    return-void

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPositionWhenPlaying()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    if-lt v0, v2, :cond_4

    .line 163
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->c()V

    .line 164
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->af:Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public v()Z
    .locals 8

    .line 231
    invoke-static {}, Lcom/mh/movie/core/mvp/b/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPositionWhenPlaying()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    const/16 v2, 0xf

    if-ge v0, v2, :cond_2

    return v1

    .line 237
    :cond_2
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->j:Z

    if-nez v0, :cond_3

    return v1

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->mContext:Landroid/content/Context;

    const-string v2, "show_danmu_guide_last_time"

    invoke-static {v0, v2}, Lcom/jess/arms/c/d;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    return v1

    .line 242
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v6, v2

    if-gez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public w()V
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->w()V

    .line 256
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->setCallback(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;)V

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->mContext:Landroid/content/Context;

    const-string v1, "show_danmu_guide_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 307
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->x()V

    .line 310
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->d()V

    return-void
.end method
