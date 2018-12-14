.class public Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isFull:Z

.field private isSmall:Z

.field private mContext:Landroid/content/Context;

.field private mFullViewContainer:Landroid/view/ViewGroup;

.field private mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mNormalItemRect:[I

.field private mNormalItemSize:[I

.field private mNormalParams:Landroid/view/ViewGroup$LayoutParams;

.field private mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field private mParent:Landroid/view/ViewGroup;

.field private mPlayPosition:I

.field private mSystemUiVisibility:I

.field private mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

.field private mWindowViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;-><init>(Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NULL"

    .line 43
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mPlayPosition:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 112
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mSystemUiVisibility:I

    return p0
.end method

.method static synthetic access$1300(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)[I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    return-object p0
.end method

.method static synthetic access$1400(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)[I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemSize:[I

    return-object p0
.end method

.method static synthetic access$1500(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveToNormal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveMaterialFullVideoShow(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveChangeFirstLogic(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isFull:Z

    return p1
.end method

.method static synthetic access$600(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->removeWindowContainer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object p0
.end method

.method static synthetic access$800(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalParams:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method static synthetic access$900(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private isCurrentViewPlaying(ILjava/lang/String;)Z
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isPlayView(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isPlayView(ILjava/lang/String;)Z
    .locals 1

    .line 352
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mPlayPosition:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private removeWindowContainer()Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resolveChangeFirstLogic(I)V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isLockLand()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$4;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$4;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)V

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->getIsLand()I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 316
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 323
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 324
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->getVideoAllCallBack()Lcom/shuyu/gsyvideoplayer/c/i;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "onEnterFullscreen"

    .line 325
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->getVideoAllCallBack()Lcom/shuyu/gsyvideoplayer/c/i;

    move-result-object p1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v4}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->getVideoTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    aput-object v3, v2, v1

    invoke-interface {p1, v0, v2}, Lcom/shuyu/gsyvideoplayer/c/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private resolveFullAdd()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isShowFullAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_0
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveChangeFirstLogic(I)V

    .line 171
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private resolveMaterialAnimation()V
    .locals 7

    const/4 v0, 0x2

    .line 182
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    .line 183
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemSize:[I

    .line 184
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isHideActionBar()Z

    move-result v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isHideStatusBar()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->saveLocationStatus(Landroid/content/Context;ZZ)V

    .line 185
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 186
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 188
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemSize:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemSize:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 189
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    aget v3, v3, v4

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    aget v5, v5, v6

    invoke-virtual {v2, v3, v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resolveMaterialFullVideoShow(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 215
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, -0x1

    .line 217
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 218
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 219
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    return-void
.end method

.method private resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isShowFullAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$3;

    invoke-direct {v2, p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$3;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveToNormal()V

    :goto_0
    return-void
.end method

.method private resolveToFull()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mSystemUiVisibility:I

    .line 122
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isHideActionBar()Z

    move-result v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isHideStatusBar()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideSupportActionBar(Landroid/content/Context;ZZ)V

    .line 123
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isHideKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isFull:Z

    .line 127
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 128
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_1

    .line 130
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mParent:Landroid/view/ViewGroup;

    .line 131
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 134
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 138
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isRotateViewAuto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 148
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isShowFullAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveMaterialAnimation()V

    goto :goto_0

    .line 153
    :cond_2
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveFullAdd()V

    goto :goto_0

    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveFullAdd()V

    :goto_0
    return-void
.end method

.method private resolveToNormal()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->isShowFullAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveLocationStatus(Landroid/content/Context;ZZ)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 335
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 336
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 338
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    aget v2, v2, v1

    sub-int/2addr v2, v0

    aput v2, p2, v1

    :cond_0
    if-eqz p3, :cond_1

    .line 341
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemRect:[I

    aget p3, p3, v1

    sub-int/2addr p3, p1

    aput p3, p2, v1

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemSize:[I

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    aput p3, p1, p2

    .line 344
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mNormalItemSize:[I

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    aput p2, p1, v1

    return-void
.end method


# virtual methods
.method public addVideoPlayer(ILandroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 378
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 379
    invoke-direct {p0, p1, p3}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isCurrentViewPlaying(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 380
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isFull:Z

    if-nez p1, :cond_2

    .line 381
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x4

    .line 385
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 388
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 390
    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public backFromFull()Z
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mWindowViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 467
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public doFullBtnLogic()V
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isFull:Z

    if-nez v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveToFull()V

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    :goto_0
    return-void
.end method

.method public getGsyVideoOptionBuilder()Lcom/shuyu/gsyvideoplayer/a/a;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    return-object v0
.end method

.method public getGsyVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 540
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mPlayPosition:I

    return v0
.end method

.method public getPlayTAG()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isFull:Z

    return v0
.end method

.method public isSmall()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isSmall:Z

    return v0
.end method

.method public releaseVideoPlayer()V
    .locals 1

    .line 476
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->removeWindowContainer()Z

    .line 477
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, -0x1

    .line 480
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mPlayPosition:I

    const-string v0, "NULL"

    .line 481
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->TAG:Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    :cond_1
    return-void
.end method

.method public setFullViewContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mFullViewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setGsyVideoOptionBuilder(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    return-void
.end method

.method public setPlayPositionAndTag(ILjava/lang/String;)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mPlayPosition:I

    .line 402
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    const/4 p1, 0x1

    .line 497
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isSmall:Z

    :cond_0
    return-void
.end method

.method public smallVideoToNormal()V
    .locals 1

    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isSmall:Z

    .line 507
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideSmallVideo()V

    return-void
.end method

.method public startPlay()V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->smallVideoToNormal()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->release()V

    .line 417
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    if-nez v0, :cond_1

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mVideoOptionBuilder can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$GSYVideoHelperBuilder;->build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 424
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$5;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$5;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->mGsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void
.end method
