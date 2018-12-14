.class public Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
.super Ljava/lang/Object;
.source "OrientationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private disableProt:Z

.field private gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field private iOrientationListener:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;

.field private isStandardLand:Z

.field private mClick:Z

.field private mClickLand:Z

.field private mClickPort:Z

.field private mEnable:Z

.field private mIsLand:I

.field private mRotateWithSystem:Z

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private orientationStandardListener:Landroid/view/OrientationEventListener;

.field private screenType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 27
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    .line 29
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    .line 30
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->disableProt:Z

    .line 32
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    .line 37
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->isStandardLand:Z

    .line 44
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 46
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->init()V

    .line 47
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->initOrientationListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Landroid/app/Activity;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->isStandardLand:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->isStandardLand:Z

    return p1
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return p0
.end method

.method static synthetic access$302(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return p1
.end method

.method static synthetic access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return p0
.end method

.method static synthetic access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return p1
.end method

.method static synthetic access$500(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return p0
.end method

.method static synthetic access$502(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return p1
.end method

.method static synthetic access$600(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return p0
.end method

.method static synthetic access$602(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return p1
.end method

.method static synthetic access$700(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->disableProt:Z

    return p0
.end method

.method static synthetic access$802(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return p1
.end method

.method static synthetic access$900(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->iOrientationListener:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 56
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 145
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method public backToProtVideo()I
    .locals 3

    .line 185
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 187
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 188
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :cond_0
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 191
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    const/16 v0, 0x1f4

    return v0

    :cond_1
    return v1
.end method

.method public getIsLand()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return v0
.end method

.method public getScreenType()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return v0
.end method

.method public initOrientationListener()V
    .locals 2

    .line 280
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$2;-><init>(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationStandardListener:Landroid/view/OrientationEventListener;

    .line 322
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationStandardListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public isClick()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return v0
.end method

.method public isClickLand()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return v0
.end method

.method public isClickPort()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    return v0
.end method

.method public isRotateWithSystem()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return v0
.end method

.method public releaseListener()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationStandardListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationStandardListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    return-void
.end method

.method public resolveByClick()V
    .locals 4

    .line 152
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 156
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 157
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    .line 158
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 160
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :cond_1
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 164
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    goto :goto_1

    .line 166
    :cond_2
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    .line 167
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 168
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :cond_4
    :goto_0
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 176
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    :goto_1
    return-void
.end method

.method public setClick(Z)V
    .locals 0

    .line 228
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return-void
.end method

.method public setClickLand(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return-void
.end method

.method public setClickPort(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return-void
.end method

.method public setDisableProt(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->disableProt:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    .line 204
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public setIsLand(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return-void
.end method

.method public setRotateWithSystem(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return-void
.end method

.method public setScreenType(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return-void
.end method

.method public setiOrientationListener(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->iOrientationListener:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;

    return-void
.end method
