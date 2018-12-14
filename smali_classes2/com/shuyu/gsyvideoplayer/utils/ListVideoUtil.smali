.class public Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;
.super Ljava/lang/Object;
.source "ListVideoUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private autoRotation:Z

.field private cachePath:Ljava/io/File;

.field private context:Landroid/content/Context;

.field private fullLandFrist:Z

.field private fullViewContainer:Landroid/view/ViewGroup;

.field private gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private handler:Landroid/os/Handler;

.field private hideActionBar:Z

.field private hideKey:Z

.field private hideStatusBar:Z

.field private isFull:Z

.field private isLoop:Z

.field private isSmall:Z

.field private listItemRect:[I

.field private listItemSize:[I

.field private listParams:Landroid/view/ViewGroup$LayoutParams;

.field private listParent:Landroid/view/ViewGroup;

.field private mTitle:Ljava/lang/String;

.field private mapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needLockFull:Z

.field protected needShowWifiTip:Z

.field private orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field private playPosition:I

.field private showFullAnimation:Z

.field private speed:I

.field private systemUiVisibility:I

.field private url:Ljava/lang/String;

.field private videoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NULL"

    .line 41
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->speed:I

    .line 64
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    .line 65
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needLockFull:Z

    .line 66
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needShowWifiTip:Z

    .line 73
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullLandFrist:Z

    .line 74
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->autoRotation:Z

    .line 75
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 82
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->systemUiVisibility:I

    return p0
.end method

.method static synthetic access$1400(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)[I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    return-object p0
.end method

.method static synthetic access$1700(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)[I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    return-object p0
.end method

.method static synthetic access$1800(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveToNormal()V

    return-void
.end method

.method static synthetic access$1900(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialFullVideoShow(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveChangeFirstLogic(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    return p1
.end method

.method static synthetic access$500(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object p0
.end method

.method static synthetic access$600(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParams:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method static synthetic access$700(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Landroid/view/ViewGroup;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Lcom/shuyu/gsyvideoplayer/c/i;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->videoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    return-object p0
.end method

.method static synthetic access$900(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->url:Ljava/lang/String;

    return-object p0
.end method

.method private isCurrentViewPlaying(ILjava/lang/String;)Z
    .locals 0

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isPlayView(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isPlayView(ILjava/lang/String;)Z
    .locals 1

    .line 379
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

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

.method private resolveChangeFirstLogic(I)V
    .locals 5

    .line 340
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFullLandFrist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$5;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$5;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 351
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->videoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz p1, :cond_1

    const-string p1, "onEnterFullscreen"

    .line 352
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->videoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->url:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    aput-object v3, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/shuyu/gsyvideoplayer/c/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private resolveFullAdd()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 229
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x32

    .line 230
    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveChangeFirstLogic(I)V

    return-void
.end method

.method private resolveMaterialAnimation()V
    .locals 7

    const/4 v0, 0x2

    .line 237
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    .line 238
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    .line 239
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->saveLocationStatus(Landroid/content/Context;ZZ)V

    .line 240
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 241
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 243
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 244
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    aget v3, v3, v4

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    aget v5, v5, v6

    invoke-virtual {v2, v3, v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$2;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resolveMaterialFullVideoShow(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 262
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 263
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, -0x1

    .line 264
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 265
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x11

    .line 266
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 267
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 268
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    return-void
.end method

.method private resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 5

    .line 309
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;

    invoke-direct {v2, p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$4;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveToNormal()V

    :goto_0
    return-void
.end method

.method private resolveToFull()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->systemUiVisibility:I

    .line 186
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    invoke-static {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideSupportActionBar(Landroid/content/Context;ZZ)V

    .line 187
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    .line 191
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 192
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_1

    .line 194
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    .line 195
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 198
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 202
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isAutoRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 211
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialAnimation()V

    goto :goto_0

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveFullAdd()V

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveFullAdd()V

    :goto_0
    return-void
.end method

.method private resolveToNormal()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$3;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$3;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveLocationStatus(Landroid/content/Context;ZZ)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 362
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 363
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 365
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    aget v2, v2, v1

    sub-int/2addr v2, v0

    aput v2, p2, v1

    :cond_0
    if-eqz p3, :cond_1

    .line 368
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemRect:[I

    aget p3, p3, v1

    sub-int/2addr p3, p1

    aput p3, p2, v1

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    aput p3, p1, p2

    .line 371
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listItemSize:[I

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->listParent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    aput p2, p1, v1

    return-void
.end method


# virtual methods
.method public addVideoPlayer(ILandroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 97
    invoke-direct {p0, p1, p3}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isCurrentViewPlaying(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    if-nez p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x4

    .line 103
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 106
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 108
    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public backFromFull()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 393
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCachePath()Ljava/io/File;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->cachePath:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getGsyVideoPlayer()Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    return-object v0
.end method

.method public getMapHeadData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    return v0
.end method

.method public getPlayTAG()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .line 561
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->speed:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRotation()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->autoRotation:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    return v0
.end method

.method public isFullLandFrist()Z
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullLandFrist:Z

    return v0
.end method

.method public isHideActionBar()Z
    .locals 1

    .line 506
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    return v0
.end method

.method public isHideKey()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    return v0
.end method

.method public isHideStatusBar()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isLoop:Z

    return v0
.end method

.method public isNeedLockFull()Z
    .locals 1

    .line 625
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needLockFull:Z

    return v0
.end method

.method public isNeedShowWifiTip()Z
    .locals 1

    .line 636
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needShowWifiTip:Z

    return v0
.end method

.method public isShowFullAnimation()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    return v0
.end method

.method public isSmall()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isSmall:Z

    return v0
.end method

.method public releaseVideoPlayer()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, -0x1

    .line 405
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    const-string v0, "NULL"

    .line 406
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    :cond_1
    return-void
.end method

.method public resolveFullBtn()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isFull:Z

    if-nez v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveToFull()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->resolveMaterialToNormal(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    :goto_0
    return-void
.end method

.method public setAutoRotation(Z)V
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->autoRotation:Z

    return-void
.end method

.method public setCachePath(Ljava/io/File;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->cachePath:Ljava/io/File;

    return-void
.end method

.method public setFullLandFrist(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullLandFrist:Z

    return-void
.end method

.method public setFullViewContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->fullViewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setHideActionBar(Z)V
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideActionBar:Z

    return-void
.end method

.method public setHideKey(Z)V
    .locals 0

    .line 621
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideKey:Z

    return-void
.end method

.method public setHideStatusBar(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->hideStatusBar:Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isLoop:Z

    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 596
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mapHeadData:Ljava/util/Map;

    return-void
.end method

.method public setNeedLockFull(Z)V
    .locals 0

    .line 632
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needLockFull:Z

    return-void
.end method

.method public setNeedShowWifiTip(Z)V
    .locals 0

    .line 643
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needShowWifiTip:Z

    return-void
.end method

.method public setPlayPositionAndTag(ILjava/lang/String;)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->playPosition:I

    .line 120
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public setShowFullAnimation(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->showFullAnimation:Z

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    .line 568
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->speed:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)V
    .locals 1

    .line 524
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->videoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    .line 525
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)V

    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    const/4 p1, 0x1

    .line 422
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isSmall:Z

    :cond_0
    return-void
.end method

.method public smallVideoToNormal()V
    .locals 1

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isSmall:Z

    .line 432
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideSmallVideo()V

    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 8

    .line 130
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->smallVideoToNormal()V

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->url:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->release()V

    .line 138
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->isLoop:Z

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setLooping(Z)V

    .line 140
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->speed:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setSpeed(F)V

    .line 142
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needShowWifiTip:Z

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setNeedShowWifiTip(Z)V

    .line 144
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->needLockFull:Z

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setNeedLockFull(Z)V

    .line 146
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->cachePath:Ljava/io/File;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mapHeadData:Ljava/util/Map;

    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 148
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/ListVideoUtil;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void
.end method
