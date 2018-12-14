.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;
.source "GSYBaseVideoPlayer.java"


# instance fields
.field protected mActionBar:Z

.field protected mAutoFullWithSize:Z

.field protected mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

.field protected mCheckoutTask:Ljava/lang/Runnable;

.field protected mListItemRect:[I

.field protected mListItemSize:[I

.field protected mLockLand:Z

.field protected mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field protected mRotateViewAuto:Z

.field protected mRotateWithSystem:Z

.field protected mShowFullAnimation:Z

.field protected mSmallClose:Landroid/view/View;

.field protected mStatusBar:Z

.field protected mSystemUiVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 54
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 60
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 63
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 66
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 69
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 449
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 54
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 60
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 63
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 66
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 69
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 449
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 54
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 60
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 63
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 66
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 69
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 449
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 54
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 60
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 63
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 66
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 69
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 449
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method private getViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private pauseFullBackCoverLogic(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 273
    iget v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 277
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 279
    :cond_0
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    if-eqz p1, :cond_1

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private pauseFullCoverLogic()V
    .locals 2

    .line 257
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method private removeVideo(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private saveLocationStatus(Landroid/content/Context;ZZ)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLocationOnScreen([I)V

    .line 194
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 195
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 197
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget v2, v2, v1

    sub-int/2addr v2, v0

    aput v2, p2, v1

    :cond_0
    if-eqz p3, :cond_1

    .line 200
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget p3, p3, v1

    sub-int/2addr p3, p1

    aput p3, p2, v1

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    const/4 p2, 0x0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getWidth()I

    move-result p3

    aput p3, p1, p2

    .line 203
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getHeight()I

    move-result p2

    aput p2, p1, v1

    return-void
.end method


# virtual methods
.method protected backToNormal()V
    .locals 8

    .line 415
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 420
    move-object v2, v1

    check-cast v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 422
    invoke-direct {p0, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->pauseFullBackCoverLogic(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 423
    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-eqz v3, :cond_0

    .line 424
    invoke-static {v0}, Lcom/transitionseverywhere/h;->a(Landroid/view/ViewGroup;)V

    .line 426
    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v3, v4, v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 428
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    aget v4, v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 429
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    aget v4, v4, v7

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 431
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 432
    invoke-virtual {v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    new-instance v3, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$4;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v3, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0, v1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    :goto_0
    return-void
.end method

.method protected checkAutoFullSizeWhenFull()V
    .locals 3

    .line 505
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSYVideoBase onPrepared isVerticalFullByVideoSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    return-void
.end method

.method protected checkoutState()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 468
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected clearFullscreenLayout()V
    .locals 4

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIfCurrentIsFullscreen:Z

    .line 379
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v2, v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 382
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    const/4 v2, 0x0

    .line 384
    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 388
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 392
    :cond_2
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 393
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 396
    check-cast v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 397
    iput-boolean v0, v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->mIfCurrentIsFullscreen:Z

    .line 400
    :cond_3
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$3;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1

    .line 882
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    return-object v0

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method protected abstract getFullId()I
.end method

.method public getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 2

    .line 853
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 854
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 857
    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSaveBeforeFullSystemUiVisibility()I
    .locals 1

    .line 916
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    return v0
.end method

.method protected abstract getSmallId()I
.end method

.method public getSmallWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 2

    .line 869
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 870
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hideSmallVideo()V
    .locals 5

    .line 773
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 774
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 775
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 776
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getLastState()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    .line 780
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->lastListener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 781
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 782
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setStateAndUi(I)V

    .line 783
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->addTextureView()V

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSaveChangeViewTIme:J

    .line 785
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v0, :cond_0

    const-string v0, "onQuitSmallWidget"

    .line 786
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/c/i;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->init(Landroid/content/Context;)V

    .line 99
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->small_close:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    return-void
.end method

.method public isAutoFullWithSize()Z
    .locals 1

    .line 924
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    return v0
.end method

.method public isFullHideActionBar()Z
    .locals 1

    .line 908
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    return v0
.end method

.method public isFullHideStatusBar()Z
    .locals 1

    .line 912
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    return v0
.end method

.method public isLockLand()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    return v0
.end method

.method protected isLockLandByAutoFullSize()Z
    .locals 2

    .line 494
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 495
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRotateViewAuto()Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 808
    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    return v0
.end method

.method public isRotateWithSystem()Z
    .locals 1

    .line 834
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    return v0
.end method

.method public isShowFullAnimation()Z
    .locals 1

    .line 792
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    return v0
.end method

.method public isVerticalFullByVideoSize()Z
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isVerticalVideo()Z
    .locals 6

    .line 476
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentVideoHeight()I

    move-result v0

    .line 477
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentVideoWidth()I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 481
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotate:I

    const/16 v4, 0x5a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotate:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method protected lockTouchLogic()V
    .locals 2

    .line 146
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 147
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockCurScreen:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isRotateViewAuto()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 537
    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V
    .locals 1

    .line 551
    invoke-super {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 553
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-nez p2, :cond_2

    .line 555
    invoke-virtual {p0, p1, p4, p5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result p2

    if-nez p2, :cond_1

    .line 560
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backFromFull(Landroid/content/Context;)Z

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    .line 563
    invoke-virtual {p3, p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInfo(II)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onInfo(II)V

    .line 166
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getRotateInfoFlag()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullSizeWhenFull()V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 158
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onPrepared()V

    .line 160
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullSizeWhenFull()V

    return-void
.end method

.method protected resolveFullVideoShow(Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
    .locals 8

    .line 295
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 296
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    .line 297
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 298
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x11

    .line 299
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 300
    invoke-virtual {p2, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p2, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 302
    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v2, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 303
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isRotateViewAuto()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 304
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    invoke-virtual {p1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setRotateWithSystem(Z)V

    .line 305
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iput-object p1, p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 307
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v4

    .line 308
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isLockLandByAutoFullSize()Z

    move-result v5

    .line 310
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isShowFullAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    new-instance p1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$2;

    move-object v2, p1

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;ZZLcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, p1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    .line 325
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 327
    :cond_1
    invoke-virtual {p2, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVisibility(I)V

    .line 328
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 332
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz p1, :cond_2

    const-string p1, "onEnterFullscreen"

    .line 333
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v3, v2, v1

    aput-object p2, v2, v0

    invoke-interface {p1, p3, v2}, Lcom/shuyu/gsyvideoplayer/c/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_2
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIfCurrentIsFullscreen:Z

    .line 338
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V

    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 348
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getLastState()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    .line 354
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->lastListener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 355
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 356
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setStateAndUi(I)V

    .line 357
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->addTextureView()V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSaveChangeViewTIme:J

    .line 359
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string p1, "onQuitFullscreen"

    .line 360
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v1, v0, p2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-interface {p1, p3, v0}, Lcom/shuyu/gsyvideoplayer/c/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :cond_1
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIfCurrentIsFullscreen:Z

    .line 364
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mHideKey:Z

    if-eqz p1, :cond_2

    .line 365
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    invoke-static {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->showNavKey(Landroid/content/Context;I)V

    .line 367
    :cond_2
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    iget-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    invoke-static {p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->showSupportActionBar(Landroid/content/Context;ZZ)V

    .line 368
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setAutoFullWithSize(Z)V
    .locals 0

    .line 933
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    return-void
.end method

.method public setBackFromFullScreenListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFullHideActionBar(Z)V
    .locals 0

    .line 900
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    return-void
.end method

.method public setFullHideStatusBar(Z)V
    .locals 0

    .line 904
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    return-void
.end method

.method public setLockLand(Z)V
    .locals 0

    .line 829
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    return-void
.end method

.method public setRotateViewAuto(Z)V
    .locals 1

    .line 815
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 816
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setRotateWithSystem(Z)V
    .locals 0

    .line 843
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    return-void
.end method

.method public setSaveBeforeFullSystemUiVisibility(I)V
    .locals 0

    .line 920
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    return-void
.end method

.method public setShowFullAnimation(Z)V
    .locals 0

    .line 801
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    return-void
.end method

.method protected setSmallVideoTextureView()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 9

    .line 711
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 713
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 715
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 720
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 721
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 722
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setId(I)V

    .line 724
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 725
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 727
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p1, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 728
    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    iget v8, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    .line 729
    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v8

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, p1

    if-eqz p2, :cond_1

    .line 732
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActionBarHeight(Landroid/app/Activity;)I

    move-result p1

    sub-int/2addr v8, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 736
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v8, p1

    .line 739
    :cond_2
    invoke-virtual {v6, v7, v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 740
    invoke-virtual {v4, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    invoke-virtual {v1, v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIsTouchWiget(Z)V

    .line 748
    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->addTextureView()V

    .line 750
    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onClickUiToggle()V

    .line 751
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    invoke-virtual {v1, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)V

    .line 752
    new-instance p1, Lcom/shuyu/gsyvideoplayer/f/a;

    invoke-direct {p1, v1, v7, v8}, Lcom/shuyu/gsyvideoplayer/f/a;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;II)V

    invoke-virtual {v1, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    .line 754
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 755
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 756
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz p1, :cond_3

    const-string p1, "onEnterSmallWidget"

    .line 757
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 758
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOriginUrl:Ljava/lang/String;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v0, p3, v5

    aput-object v1, p3, v2

    invoke-interface {p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/c/i;->q(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    .line 763
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 8

    const-string v0, "TTT"

    const-string v1, "startWindowFullscreen"

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    .line 583
    invoke-static {p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideSupportActionBar(Landroid/content/Context;ZZ)V

    .line 585
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mHideKey:Z

    if-eqz v0, :cond_0

    .line 586
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    .line 589
    :cond_0
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 591
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 v0, 0x2

    .line 593
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    .line 595
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    .line 597
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v4

    .line 599
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->removeVideo(Landroid/view/ViewGroup;I)V

    .line 602
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->pauseFullCoverLogic()V

    .line 604
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 609
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->saveLocationStatus(Landroid/content/Context;ZZ)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 614
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, p2

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 624
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 625
    new-array v1, p3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 627
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, p2

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 628
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 631
    :goto_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setId(I)V

    .line 632
    invoke-virtual {v0, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setIfCurrentIsFullscreen(Z)V

    .line 633
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)V

    .line 637
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 638
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 639
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$6;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$6;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 666
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x1000000

    .line 667
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 669
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    if-eqz v2, :cond_4

    .line 670
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 671
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget v3, v3, p2

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    aget p3, v5, p3

    invoke-virtual {v2, v3, p3, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 672
    invoke-virtual {v7, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    invoke-virtual {v4, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    new-instance p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$7;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$7;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, p2, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 682
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getHeight()I

    move-result v2

    invoke-direct {p2, p3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 683
    invoke-virtual {v7, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    invoke-virtual {v4, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x4

    .line 685
    invoke-virtual {v0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setVisibility(I)V

    .line 686
    invoke-virtual {v7, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 687
    invoke-virtual {p0, p1, v0, v7}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveFullVideoShow(Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    .line 691
    :goto_2
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->addTextureView()V

    .line 693
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 694
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 696
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 699
    :goto_3
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
