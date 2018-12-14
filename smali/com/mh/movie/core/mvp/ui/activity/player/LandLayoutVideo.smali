.class public Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;
.super Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;
.source "LandLayoutVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;,
        Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;
    }
.end annotation


# instance fields
.field A:Landroid/widget/ImageView;

.field B:Landroid/widget/SeekBar;

.field C:Landroid/widget/SeekBar;

.field D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

.field E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

.field F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

.field G:Landroid/widget/LinearLayout;

.field H:Landroid/widget/ImageView;

.field I:Landroid/widget/ImageView;

.field protected J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

.field protected K:Landroid/widget/TextView;

.field protected L:Landroid/widget/TextView;

.field protected M:Landroid/view/ViewGroup;

.field protected N:Landroid/view/View;

.field O:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

.field protected P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

.field public Q:Z

.field public R:Z

.field protected S:Z

.field public T:Z

.field U:Landroid/view/View$OnClickListener;

.field V:Landroid/os/Handler;

.field W:Ljava/lang/Runnable;

.field private aa:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

.field private ab:Z

.field private ac:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/RelativeLayout;

.field m:Landroid/view/View;

.field n:Landroid/widget/LinearLayout;

.field o:Landroid/widget/ImageView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/ImageView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/ImageView;

.field v:Landroid/widget/ImageView;

.field w:Landroid/widget/RelativeLayout;

.field x:Landroid/widget/ImageView;

.field y:Landroid/widget/ImageView;

.field z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->Q:Z

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->R:Z

    .line 119
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->S:Z

    .line 123
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ab:Z

    .line 128
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->T:Z

    .line 246
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    .line 858
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->V:Landroid/os/Handler;

    .line 859
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$10;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$10;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->W:Ljava/lang/Runnable;

    .line 132
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->Q:Z

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->R:Z

    .line 119
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->S:Z

    .line 123
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ab:Z

    .line 128
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->T:Z

    .line 246
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    .line 858
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->V:Landroid/os/Handler;

    .line 859
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$10;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$10;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->W:Ljava/lang/Runnable;

    .line 137
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->g()V

    return-void
.end method

.method private A()V
    .locals 5

    .line 1227
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->e:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 1229
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;-><init>()V

    .line 1230
    sget v2, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->e:I

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(I)Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;

    move-result-object v0

    .line 1231
    iget v2, v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;->a:F

    iget v3, v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;->b:F

    iget-object v4, v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(FFLjava/lang/String;)V

    .line 1234
    sget v2, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->e:I

    if-eq v2, v1, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;->e:Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-static {v1, v0, v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    return p0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 4

    .line 972
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 975
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 979
    sget v3, Lcom/mh/movie/core/R$mipmap;->video_switch_close:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 980
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 982
    :cond_1
    sget v3, Lcom/mh/movie/core/R$mipmap;->video_switch_open:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 983
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 985
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    sget v3, Lcom/mh/movie/core/R$id;->iv_video_land_continuous_play:I

    if-ne p1, v3, :cond_3

    .line 986
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setContinuousPlay(Z)V

    goto :goto_2

    .line 988
    :cond_3
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setSkipHeadAndEnd(Z)V

    .line 990
    :goto_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Landroid/view/View;I)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Landroid/widget/ImageView;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ab:Z

    return p1
.end method

.method private b(Landroid/widget/ImageView;)V
    .locals 3

    .line 996
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 999
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1003
    sget v0, Lcom/mh/movie/core/R$mipmap;->video_collect:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1004
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_video_collect_txt:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "\u6536\u85cf"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1007
    :cond_1
    sget v0, Lcom/mh/movie/core/R$mipmap;->video_collect_true:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1008
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_video_collect_txt:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5df2\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1009
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->startDismissControlViewTimer()V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockCurScreen:Z

    return p1
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    return p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockCurScreen:Z

    return p1
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockCurScreen:Z

    return p1
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->z()V

    return-void
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ac:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    return p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ab:Z

    return p0
.end method

.method static synthetic k(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->aa:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    return-object p0
.end method

.method static synthetic o(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    return p0
.end method

.method static synthetic p(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->startButtonLogic()V

    return-void
.end method

.method static synthetic q(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->t()V

    return-void
.end method

.method static synthetic r(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    return p0
.end method

.method static synthetic t(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/media/AudioManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private t()V
    .locals 4

    .line 470
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getMahuaGifPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Video_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".gif"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ac:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->stopGif(Ljava/io/File;)V

    .line 476
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_create_gif_ing:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u751f\u6210gif ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic u(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private u()V
    .locals 2

    .line 481
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;-><init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;Lcom/shuyu/gsyvideoplayer/c/c;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ac:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    return-void
.end method

.method static synthetic v(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private v()V
    .locals 4

    .line 579
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->g:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 582
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 585
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 586
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 587
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 588
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, -0x3e000000    # -32.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 590
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 591
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 592
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private w()V
    .locals 3

    .line 1015
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 1016
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x64

    .line 1018
    div-int/2addr v2, v0

    .line 1020
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->B:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1024
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->C:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1031
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 1038
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->B:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1039
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->B:Landroid/widget/SeekBar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1060
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->C:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1061
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->C:Landroid/widget/SeekBar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private z()V
    .locals 3

    .line 1195
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    .line 1197
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;-><init>(Landroid/content/Context;)V

    .line 1198
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(Lcom/mh/movie/core/mvp/ui/activity/player/view/d;)V

    .line 1207
    sget v1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(IZ)V

    .line 1209
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->O:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a(Lcom/mh/movie/core/mvp/ui/activity/player/view/a;)V

    .line 1210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->O:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->setCanceledOnTouchOutside(Z)V

    .line 1211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->O:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1100
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a()V

    .line 1102
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->s:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(FFLjava/lang/String;)V
    .locals 0

    .line 1160
    invoke-super {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(FF)V

    .line 1161
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->t:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 6

    .line 1344
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    move-object v4, v3

    check-cast v4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    move-object v5, v3

    check-cast v5, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mh/movie/core/c/b;->a(Landroid/content/Context;Landroid/app/Activity;ZLcom/mh/movie/core/c/a;Lcom/tencent/tauth/IUiListener;)V

    if-eqz p1, :cond_0

    .line 1347
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/c/b;->a(Landroid/graphics/Bitmap;)V

    .line 1348
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1349
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mh/movie/core/c/b;->a(Ljava/lang/String;)V

    .line 1351
    :cond_1
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;-><init>()V

    const/4 v1, 0x0

    .line 1352
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoInfoId(I)V

    .line 1353
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoId(I)V

    .line 1354
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoType(I)V

    if-eqz p3, :cond_2

    const-string p3, "imageUrl"

    .line 1357
    invoke-virtual {v0, p3}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p3, "emoji"

    .line 1359
    invoke-virtual {v0, p3}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setType(Ljava/lang/String;)V

    :goto_0
    const-string p3, "\u6807\u9898"

    .line 1362
    invoke-virtual {v0, p3}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setTitle(Ljava/lang/String;)V

    const-string p3, "\u6587\u5b57\u63cf\u8ff0"

    .line 1363
    invoke-virtual {v0, p3}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setDescription(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 1365
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1368
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1369
    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setImagePath(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x1

    .line 1372
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->T:Z

    .line 1373
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onVideoPause()V

    .line 1374
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    .line 1376
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/c/b;->c()Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/ui/activity/player/g;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/g;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/q$a;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    const-class p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    return-void

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->y:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->b(Landroid/widget/ImageView;)V

    .line 158
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->y:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->a(Z)V

    :cond_1
    return-void
.end method

.method final synthetic a(Ljava/util/List;I)V
    .locals 3

    .line 942
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getResolution()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 943
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getResolution()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getCurrentPositionWhenPlaying()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->a(ILjava/lang/Integer;)V

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getResolution()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->a(ILjava/lang/Integer;)V

    .line 947
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c(Ljava/lang/String;)V

    .line 948
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getResolution()I

    move-result p1

    .line 949
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setHdChoice(I)V

    .line 950
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    const-string v0, "\u5df2\u6210\u529f\u5207\u6362\u5230%s\u6e05\u6670\u5ea6"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;II)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 908
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setPagerData(Ljava/util/List;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 911
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-virtual {p1, p3, p2, p4}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->a(ILjava/util/List;I)V

    .line 913
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$12;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$12;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setChoiceCallback(Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView$a;)V

    .line 924
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setVisibility(I)V

    .line 925
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/activity/player/c;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/c;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_player_bulletscreen_light:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_player_bulletscreen_dark:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->v()V

    goto :goto_1

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->j()V

    :goto_1
    return-void
.end method

.method final synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1181
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->w:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return p2
.end method

.method public b()V
    .locals 2

    .line 1113
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->b()V

    .line 1114
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->y:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->y:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget v1, Lcom/mh/movie/core/R$mipmap;->video_collect_true:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mh/movie/core/R$mipmap;->video_collect:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1174
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_video_collect_txt:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string p1, "\u5df2\u6536\u85cf"

    goto :goto_1

    :cond_1
    const-string p1, "\u6536\u85cf"

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->w:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/f;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/f;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1186
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->o()V

    .line 1188
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->x()V

    .line 1189
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->w()V

    return-void
.end method

.method final synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 954
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setVisibility(I)V

    :goto_0
    return p2
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .line 822
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 825
    :cond_0
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentPosition:J

    .line 826
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onVideoReset()V

    .line 827
    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCache:Z

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCachePath:Ljava/io/File;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    .line 828
    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setSeekOnStart(J)V

    .line 829
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->startPlayLogic()V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;",
            ">;)V"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1289
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->q:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->ico_player_next:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1291
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->q:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->ico_player_next_dis:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1336
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->c()Z

    .line 1337
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic c(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 926
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setVisibility(I)V

    :goto_0
    return p2
.end method

.method protected changeUiToClear()V
    .locals 2

    .line 730
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->changeUiToClear()V

    .line 731
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 732
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 733
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToCompleteClear()V
    .locals 2

    .line 738
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->changeUiToCompleteClear()V

    .line 739
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->H:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 740
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 4

    .line 673
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->changeUiToPlayingBufferingShow()V

    .line 675
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ab:Z

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$9;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$9;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 0

    .line 667
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->changeUiToPlayingShow()V

    .line 668
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->k()V

    return-void
.end method

.method protected d()V
    .locals 3

    .line 522
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->d()V

    .line 525
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->j:Z

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Z)V

    .line 527
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 529
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->j:Z

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->l:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 531
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->l:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 534
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "1"

    .line 1245
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1246
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->q:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1247
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1250
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->q:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1251
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;",
            ">;)V"
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/d;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/d;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setOnChoiceCallback(Lcom/mh/movie/core/mvp/ui/widget/ClarityView$a;)V

    .line 953
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/e;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/e;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 961
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->a(Ljava/util/List;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 143
    sget v0, Lcom/mh/movie/core/R$id;->rl_video_land_setting:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->w:Landroid/widget/RelativeLayout;

    .line 144
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_land_setting_close:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->x:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->x:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_land_collect:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->y:Landroid/widget/ImageView;

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->y:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    .line 148
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/b;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    .line 149
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 163
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_land_skip_head_and_tail:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->z:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->z:Landroid/widget/ImageView;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isSkipHeadAndEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/mh/movie/core/R$mipmap;->video_switch_open:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mh/movie/core/R$mipmap;->video_switch_close:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_land_continuous_play:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->A:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->A:Landroid/widget/ImageView;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isContinuousPlay()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/mh/movie/core/R$mipmap;->video_switch_open:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/mh/movie/core/R$mipmap;->video_switch_close:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    sget v0, Lcom/mh/movie/core/R$id;->sb_video_land_volume:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->B:Landroid/widget/SeekBar;

    .line 170
    sget v0, Lcom/mh/movie/core/R$id;->sb_video_land_light:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->C:Landroid/widget/SeekBar;

    .line 172
    sget v0, Lcom/mh/movie/core/R$id;->tplv_tv_part:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    .line 173
    sget v0, Lcom/mh/movie/core/R$id;->cv_clarity:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    .line 175
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_video_danma:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->l:Landroid/widget/RelativeLayout;

    .line 176
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_danma_toggle:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->k:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_share:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->u:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_setting:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->v:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->v:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_land_screen_lock:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n:Landroid/widget/LinearLayout;

    .line 186
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_land_screen_lock:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->o:Landroid/widget/ImageView;

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_land_screen_lock:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->p:Landroid/widget/TextView;

    .line 190
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_next:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->q:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v0, Lcom/mh/movie/core/R$id;->btn_video_hd_choice:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->s:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget v0, Lcom/mh/movie/core/R$id;->btn_video_tv_part_choice:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->r:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget v0, Lcom/mh/movie/core/R$id;->btn_video_speed_bit_choice:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->t:Landroid/widget/TextView;

    .line 198
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_shot:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->H:Landroid/widget/ImageView;

    .line 199
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_record_git:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    .line 201
    sget v0, Lcom/mh/movie/core/R$id;->layout_land_bottom:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    .line 202
    sget v0, Lcom/mh/movie/core/R$id;->progress_land:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    .line 203
    sget v0, Lcom/mh/movie/core/R$id;->current_land:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->K:Landroid/widget/TextView;

    .line 204
    sget v0, Lcom/mh/movie/core/R$id;->total_land:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->L:Landroid/widget/TextView;

    .line 205
    sget v0, Lcom/mh/movie/core/R$id;->start_land:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->N:Landroid/view/View;

    .line 207
    sget v0, Lcom/mh/movie/core/R$id;->view_video_control_bg:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->m:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->createDrawableSelector(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mProgressBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->createDrawableSelector(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 212
    sget v0, Lcom/mh/movie/core/R$id;->fdfl_video_dialog_full:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->O:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    .line 214
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->H:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_pause:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->G:Landroid/widget/LinearLayout;

    .line 222
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->N:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->N:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    :cond_3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->y()V

    .line 235
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->i()V

    return-void
.end method

.method public getHdQuityBtn()Landroid/widget/TextView;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 329
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$5;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->taskShotPic(Lcom/shuyu/gsyvideoplayer/c/e;Z)V

    return-void
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 696
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->ab:Z

    if-eqz v0, :cond_0

    return-void

    .line 698
    :cond_0
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->hideAllWidget()V

    .line 699
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 700
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 701
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 702
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 703
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 704
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_record_gif_contains:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected hideMenuTab()V
    .locals 2

    .line 807
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->hideMenuTab()V

    .line 809
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideSupportActionBar(Landroid/content/Context;ZZ)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    .line 353
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;-><init>(IJ)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->aa:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    .line 355
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    .line 437
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 439
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->aa:Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->setExecTimerListener(Lcom/mh/movie/core/mvp/ui/utils/TimerHandler$ExecTimerListener;)V

    .line 463
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->u()V

    return-void
.end method

.method protected j()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->g:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 557
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 562
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 563
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 564
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 566
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 567
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 568
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public k()V
    .locals 3

    .line 708
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 710
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 711
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 712
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->I:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 715
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method protected l()V
    .locals 4

    .line 870
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->T:Z

    if-eqz v0, :cond_0

    return-void

    .line 872
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$11;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$11;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->R:Z

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->o:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->detailspage_rotating_lock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 882
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->p:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u89e3\u9501"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->o:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->detailspage_rotating_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 885
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->p:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u9501\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 889
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->W:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected lockTouchLogic()V
    .locals 2

    .line 1123
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->lockTouchLogic()V

    .line 1125
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockScreen:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_player_lock_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockScreen:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_player_lock_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected loopSetProgressAndTime()V
    .locals 2

    .line 655
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->loopSetProgressAndTime()V

    .line 657
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    .line 658
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setSecondaryProgress(I)V

    .line 660
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->K:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected m()V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public n()V
    .locals 3

    .line 965
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 966
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0, v1}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->r:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected o()V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mTopContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 1089
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 1090
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 1091
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLoadingProgressBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 1092
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 1093
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    .line 1094
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 721
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onClick(Landroid/view/View;)V

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mh/movie/core/R$id;->start_land:I

    if-ne p1, v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->clickStartIcon()V

    :cond_0
    return-void
.end method

.method protected onClickUiToggle()V
    .locals 2

    .line 745
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onClickUiToggle()V

    .line 754
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 756
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    goto/16 :goto_4

    .line 764
    :cond_1
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 766
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 771
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->showAllWidget()V

    goto :goto_4

    .line 768
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    goto :goto_4

    .line 774
    :cond_4
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 776
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 781
    :cond_5
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->showAllWidget()V

    goto :goto_4

    .line 778
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    goto :goto_4

    .line 784
    :cond_7
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 786
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 789
    :cond_8
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToCompleteShow()V

    goto :goto_4

    .line 787
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToCompleteClear()V

    goto :goto_4

    .line 792
    :cond_a
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 794
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->M:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    .line 798
    :cond_b
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->showAllWidget()V

    goto :goto_4

    .line 796
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    :cond_d
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1145
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onPrepared()V
    .locals 0

    .line 1217
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onPrepared()V

    .line 1221
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->A()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 242
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x0

    .line 1136
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockCurScreen:Z

    .line 1137
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mLockScreen:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->ico_player_lock_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1165
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->D:Lcom/mh/movie/core/mvp/ui/widget/ClarityView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/ClarityView;->setVisibility(I)V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1257
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected resetData()V
    .locals 2

    .line 600
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->resetData()V

    .line 601
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    return-void
.end method

.method protected resetProgressAndTime()V
    .locals 3

    .line 644
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->resetProgressAndTime()V

    .line 645
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    .line 646
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setSecondaryProgress(I)V

    .line 648
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->K:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->L:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 1

    .line 1151
    move-object v0, p3

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    .line 1152
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->dismissProgressDialog()V

    .line 1153
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->dismissVolumeDialog()V

    .line 1154
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->dismissBrightnessDialog()V

    .line 1155
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method final synthetic s()V
    .locals 2

    .line 1377
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;->a(Z)V

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->onVideoResume()V

    .line 1381
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->T:Z

    return-void
.end method

.method public setHdChoice(I)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->s:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setProgressAndTime(IIII)V
    .locals 0

    .line 617
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->setProgressAndTime(IIII)V

    .line 618
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mTouchingProgressBar:Z

    if-nez p2, :cond_0

    if-lez p3, :cond_0

    .line 623
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    .line 626
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->L:Landroid/widget/TextView;

    invoke-static {p4}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p3, :cond_1

    .line 629
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->K:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setScreenLock(Z)V
    .locals 0

    .line 893
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->R:Z

    return-void
.end method

.method protected setSecondaryProgress(I)V
    .locals 1

    .line 636
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->setSecondaryProgress(I)V

    if-eqz p1, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method protected setStateAndUi(I)V
    .locals 1

    .line 606
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->setStateAndUi(I)V

    .line 607
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->mCurrentState:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->J:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;->setProgress(I)V

    .line 610
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->K:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTvPartResolution(I)V
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->E:Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/TvPartLandView;->setResolution(I)V

    :cond_0
    return-void
.end method

.method public setiLandLock(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    return-void
.end method

.method public setiLandVideoOnClick(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    return-void
.end method

.method protected showAllWidget()V
    .locals 0

    .line 689
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->showAllWidget()V

    .line 690
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->k()V

    return-void
.end method
