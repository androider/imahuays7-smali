.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;
.source "GSYVideoControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;,
        Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;,
        Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;
    }
.end annotation


# instance fields
.field private flingDownTime:J

.field private flingSlop:J

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected mBottomContainer:Landroid/view/ViewGroup;

.field protected mBottomProgressBar:Landroid/widget/ProgressBar;

.field protected mBrightness:Z

.field protected mBrightnessData:F

.field protected mChangePosition:Z

.field protected mChangeVolume:Z

.field protected mCurrentTimeTextView:Landroid/widget/TextView;

.field protected mDismissControlTime:I

.field protected mDismissControlViewTimer:Ljava/util/Timer;

.field protected mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

.field protected mDownPosition:I

.field protected mDownX:F

.field protected mDownY:F

.field protected mEnlargeImageRes:I

.field protected mFirstTouch:Z

.field protected mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

.field protected mGestureDownVolume:I

.field protected mHideKey:Z

.field protected mIsTouchWiget:Z

.field protected mIsTouchWigetFull:Z

.field protected mLoadingProgressBar:Landroid/view/View;

.field protected mLockClickListener:Lcom/shuyu/gsyvideoplayer/c/g;

.field protected mLockCurScreen:Z

.field protected mLockScreen:Landroid/widget/ImageView;

.field protected mMoveY:F

.field protected mNeedLockFull:Z

.field protected mNeedShowWifiTip:Z

.field protected mPlayListener:Lcom/shuyu/gsyvideoplayer/c/h;

.field protected mProgressBar:Landroid/widget/SeekBar;

.field protected mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

.field protected mSeekEndOffset:I

.field protected mSeekRatio:F

.field protected mSeekTimePosition:I

.field protected mSetUpLazy:Z

.field protected mShowVKey:Z

.field protected mShrinkImageRes:I

.field protected mStartButton:Landroid/view/View;

.field protected mThreshold:I

.field protected mThumbImageView:Landroid/view/View;

.field protected mThumbImageViewLayout:Landroid/widget/RelativeLayout;

.field protected mThumbPlay:Z

.field protected mTitleTextView:Landroid/widget/TextView;

.field protected mTopContainer:Landroid/view/ViewGroup;

.field protected mTotalTimeTextView:Landroid/widget/TextView;

.field protected mTouchingProgressBar:Z

.field private preDpVideoDuration:I

.field private updateNetSpeedTimer:Ljava/util/Timer;

.field private updateNetSpeedTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;

.field protected updateProcessTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 207
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 76
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x1388

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 91
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 100
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 103
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 106
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 112
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 115
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 118
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 121
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 124
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 136
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    const p1, 0x927c0

    .line 199
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->preDpVideoDuration:I

    const-wide/16 v0, 0xc8

    .line 203
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->flingSlop:J

    .line 577
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 76
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x1388

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 91
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 100
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 103
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 106
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 112
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 115
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 118
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 121
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 124
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 136
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    const p1, 0x927c0

    .line 199
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->preDpVideoDuration:I

    const-wide/16 p1, 0xc8

    .line 203
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->flingSlop:J

    .line 577
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 76
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x1388

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 91
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 100
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 103
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 106
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 112
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 115
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 118
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 121
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 124
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 136
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    const p1, 0x927c0

    .line 199
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->preDpVideoDuration:I

    const-wide/16 p1, 0xc8

    .line 203
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->flingSlop:J

    .line 577
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;

    invoke-direct {p3, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 76
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x1388

    .line 79
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 91
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 100
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 103
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 106
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 112
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 115
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 118
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 121
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 124
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 136
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    const p1, 0x927c0

    .line 199
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->preDpVideoDuration:I

    const-wide/16 p1, 0xc8

    .line 203
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->flingSlop:J

    .line 577
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$3;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->flingDownTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;J)J
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->flingDownTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->flingSlop:J

    return-wide v0
.end method

.method private cancelUpdateNetSpeedTimer()V
    .locals 2

    .line 1695
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1697
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1698
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimer:Ljava/util/Timer;

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;

    if-eqz v0, :cond_1

    .line 1702
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;->cancel()Z

    .line 1703
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;

    :cond_1
    return-void
.end method

.method private playCompleteStatus(I)Z
    .locals 3

    .line 474
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return v1

    .line 478
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    return v1

    .line 482
    :cond_1
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private playNetErrorStatus(IJ)Z
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 496
    div-long v0, p2, v0

    long-to-int v0, v0

    .line 497
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v1, v1, -0x2

    .line 500
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    return v3

    :cond_0
    if-ne p1, v4, :cond_1

    if-ge v0, v1, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getCurrentPositionWhenPlaying()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TTT"

    const-string v0, "Net Error"

    .line 503
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 505
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    .line 506
    invoke-virtual {p0, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setSeekOnStart(J)V

    const-string p1, "TTT"

    .line 507
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSeekOnStart: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekOnStart:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToError()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

.method private startUpdateNetSpeedTimer()V
    .locals 8

    .line 1684
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelUpdateNetSpeedTimer()V

    .line 1685
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimer:Ljava/util/Timer;

    .line 1686
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;

    .line 1687
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateNetSpeedTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$UpdateNetSpeedTimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method protected cancelDismissControlViewTimer()V
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1300
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;->cancel()Z

    .line 1305
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    :cond_1
    return-void
.end method

.method protected changePlayingNotShow()V
    .locals 0

    return-void
.end method

.method protected abstract changeUiFromBufferingEnd()V
.end method

.method protected abstract changeUiToCompleteShow()V
.end method

.method protected abstract changeUiToError()V
.end method

.method protected abstract changeUiToNormal()V
.end method

.method protected abstract changeUiToPauseShow()V
.end method

.method protected abstract changeUiToPlayingBufferingShow()V
.end method

.method protected abstract changeUiToPlayingShow()V
.end method

.method protected abstract changeUiToPreparingShow()V
.end method

.method public clearThumbImageView()V
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method protected clickStartIcon()V
    .locals 7

    const-string v0, "clickStartIcon"

    .line 1094
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "********"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->no_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    return-void

    .line 1100
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    .line 1106
    :cond_1
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 1107
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mPlayListener:Lcom/shuyu/gsyvideoplayer/c/h;

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mPlayListener:Lcom/shuyu/gsyvideoplayer/c/h;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/c/h;->C()V

    .line 1111
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1113
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 1115
    :goto_0
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 1116
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1117
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_3

    const-string v0, "onClickStopFullscreen"

    .line 1118
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v0, v1, v4}, Lcom/shuyu/gsyvideoplayer/c/i;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    const-string v0, "onClickStop"

    .line 1121
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v0, v1, v4}, Lcom/shuyu/gsyvideoplayer/c/i;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1125
    :cond_4
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-ne v0, v1, :cond_8

    .line 1126
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mPlayListener:Lcom/shuyu/gsyvideoplayer/c/h;

    if-eqz v0, :cond_5

    .line 1127
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mPlayListener:Lcom/shuyu/gsyvideoplayer/c/h;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/c/h;->B()V

    .line 1129
    :cond_5
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1130
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_6

    const-string v0, "onClickResumeFullscreen"

    .line 1131
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object p0, v5, v2

    invoke-interface {v0, v1, v5}, Lcom/shuyu/gsyvideoplayer/c/i;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v0, "onClickResume"

    .line 1134
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object p0, v5, v2

    invoke-interface {v0, v1, v5}, Lcom/shuyu/gsyvideoplayer/c/i;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    :cond_7
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1146
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 1148
    :goto_2
    invoke-virtual {p0, v4}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    goto :goto_4

    .line 1149
    :cond_8
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 1150
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startButtonLogic()V

    goto :goto_4

    .line 1151
    :cond_9
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 1153
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1154
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->pause()V

    .line 1155
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateInSeekStartImage()V

    goto :goto_4

    .line 1157
    :cond_a
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V

    .line 1158
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateInSeekStopImage()V

    goto :goto_4

    .line 1101
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isShowNetConfirm()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1102
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showWifiDialog()V

    return-void

    .line 1105
    :cond_c
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startButtonLogic()V

    :cond_d
    :goto_4
    return-void
.end method

.method protected abstract dismissBrightnessDialog()V
.end method

.method protected abstract dismissProgressDialog()V
.end method

.method protected abstract dismissVolumeDialog()V
.end method

.method public getDismissControlTime()I
    .locals 1

    .line 1656
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    return v0
.end method

.method public getEnlargeImageRes()I
    .locals 2

    .line 1524
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1525
    sget v0, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_enlarge:I

    return v0

    .line 1527
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    return v0
.end method

.method public getFullscreenButton()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeekRatio()F
    .locals 1

    .line 1623
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    return v0
.end method

.method public getShrinkImageRes()I
    .locals 2

    .line 1540
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1541
    sget v0, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_shrink:I

    return v0

    .line 1543
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    return v0
.end method

.method public getThumbImageView()Landroid/view/View;
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    return-object v0
.end method

.method public getThumbImageViewLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected abstract hideAllWidget()V
.end method

.method protected hideMenuTab()V
    .locals 0

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 223
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    .line 225
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    .line 227
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->lock_screen:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 228
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->start:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 229
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    .line 230
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->progress:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 231
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->current:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 232
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->total:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 233
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->layout_bottom:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 234
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->layout_top:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 235
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->bottom_progressbar:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 236
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->thumb:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 237
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->loading:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 239
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_2

    .line 247
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 248
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 252
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_3
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTextureViewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 256
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTextureViewContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    :cond_4
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    .line 318
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    :cond_5
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_6

    .line 322
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 323
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    .line 329
    :cond_6
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 330
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    :cond_7
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    return-void
.end method

.method protected initProgressTimer()V
    .locals 2

    .line 1189
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1191
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;->cancel()Z

    .line 1195
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    :cond_1
    return-void
.end method

.method public isHideKey()Z
    .locals 1

    .line 1572
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    return v0
.end method

.method public isNeedLockFull()Z
    .locals 1

    .line 1628
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    return v0
.end method

.method public isNeedShowWifiTip()Z
    .locals 1

    .line 1583
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    return v0
.end method

.method protected isShowNetConfirm()Z
    .locals 4

    .line 1346
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchWiget()Z
    .locals 1

    .line 1588
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    return v0
.end method

.method public isTouchWigetFull()Z
    .locals 1

    .line 1600
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    return v0
.end method

.method protected lockTouchLogic()V
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 1170
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1172
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 1173
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showAllWidget()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1176
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 1177
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    :goto_0
    return-void
.end method

.method protected loopSetProgressAndTime()V
    .locals 3

    .line 1280
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1281
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1282
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onAutoCompletion()V
    .locals 2

    .line 359
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAutoCompletion()V

    .line 361
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 363
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onBrightnessSlide(F)V
    .locals 3

    .line 1005
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 1006
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const v1, 0x3c23d70a    # 0.01f

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1007
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    goto :goto_0

    .line 1008
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1009
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 1011
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1012
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    add-float/2addr v2, p1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1013
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 1014
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    .line 1015
    :cond_2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    .line 1016
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1018
    :cond_3
    :goto_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showBrightnessDialog(F)V

    .line 1019
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 2

    .line 804
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(I)V

    .line 807
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBufferPoint:I

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    return-void

    .line 813
    :cond_1
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLooping:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPlay:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->loopSetProgressAndTime()V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/AntiShake;->check(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 526
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 527
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    .line 530
    :cond_1
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->start:I

    if-ne p1, v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    goto/16 :goto_1

    .line 534
    :cond_2
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->surface_container:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 536
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz p1, :cond_3

    const-string p1, "onClickStartError"

    .line 537
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 538
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lcom/shuyu/gsyvideoplayer/c/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    :cond_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->prepareVideo()V

    goto/16 :goto_1

    .line 543
    :cond_4
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->thumb:I

    if-ne p1, v0, :cond_9

    .line 544
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    if-nez p1, :cond_5

    return-void

    .line 547
    :cond_5
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "********"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shuyu/gsyvideoplayer/R$string;->no_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    return-void

    .line 551
    :cond_6
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-nez p1, :cond_8

    .line 552
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isShowNetConfirm()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 553
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showWifiDialog()V

    return-void

    .line 556
    :cond_7
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startPlayLogic()V

    goto :goto_1

    .line 557
    :cond_8
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_c

    .line 558
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    goto :goto_1

    .line 560
    :cond_9
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->surface_container:I

    if-ne p1, v0, :cond_c

    .line 561
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 562
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_a

    const-string p1, "onClickBlankFullscreen"

    .line 563
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lcom/shuyu/gsyvideoplayer/c/i;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    const-string p1, "onClickBlank"

    .line 566
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    invoke-interface {p1, v0, v3}, Lcom/shuyu/gsyvideoplayer/c/i;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    :cond_c
    :goto_1
    return-void
.end method

.method protected abstract onClickUiToggle()V
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 352
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onDetachedFromWindow()V

    .line 353
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->initProgressTimer()V

    .line 354
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 369
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onError(II)V

    .line 370
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 372
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 796
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onPrepared()V

    .line 797
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    if-eqz p3, :cond_1

    .line 725
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result p1

    mul-int p2, p2, p1

    .line 726
    div-int/lit8 p2, p2, 0x64

    if-le p2, p1, :cond_0

    move p2, p1

    :cond_0
    const/4 v1, 0x0

    .line 729
    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v5

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    .line 730
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->seekToTime:I

    int-to-long p1, p2

    .line 731
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentPosition:J

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 737
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateInSeekStartImage()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 745
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->dismissProgressDialog()V

    const-string v0, "TTT"

    const-string v1, "onStopTrackingTouch"

    .line 746
    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/c/i;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/c/i;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 754
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPlay:Z

    if-eqz v0, :cond_5

    .line 756
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v0

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_2

    .line 759
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->prepareVideo()V

    return-void

    .line 762
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v0

    const/4 v3, 0x6

    if-lt p1, v0, :cond_3

    .line 763
    iput v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    .line 764
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onAutoCompletion()V

    return-void

    .line 768
    :cond_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateInSeekStopImage()V

    .line 771
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-ne v0, v3, :cond_4

    .line 772
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v0, 0x3

    .line 773
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 774
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {p0, v0, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 775
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V

    :cond_4
    const-string v0, "TTT"

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onVideoSeekTo(I)V

    .line 781
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->seekToTime:I

    int-to-long v3, p1

    .line 782
    iput-wide v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentPosition:J

    .line 784
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 785
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/c/i;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 789
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfWarning(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 624
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIfCurrentIsFullscreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 626
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    return v1

    .line 630
    :cond_0
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->fullscreen:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    return v2

    .line 634
    :cond_1
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->progress:I

    if-eq p1, v0, :cond_2

    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->land_progress:I

    if-ne p1, v0, :cond_4

    .line 635
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 647
    :pswitch_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 648
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 649
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 651
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 652
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/high16 p1, -0x40800000    # -1.0f

    .line 654
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    goto :goto_2

    .line 637
    :pswitch_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 639
    :pswitch_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->initProgressTimer()V

    .line 640
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 642
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 643
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onVideoReset()V
    .locals 1

    .line 717
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoReset()V

    .line 718
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseMediaPlayer()V

    .line 719
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resetData()V

    return-void
.end method

.method protected prepareVideo()V
    .locals 7

    .line 824
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    if-eqz v0, :cond_0

    .line 825
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCache:Z

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCachePath:Ljava/io/File;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mMapHeadData:Ljava/util/Map;

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    move-object v1, p0

    invoke-super/range {v1 .. v6}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 831
    :cond_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    return-void
.end method

.method protected resetData()V
    .locals 3

    const/4 v0, 0x0

    .line 709
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    const-wide/16 v1, 0x0

    .line 710
    iput-wide v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentPosition:J

    const/4 v1, -0x1

    .line 711
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    .line 712
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method protected resetProgressAndTime()V
    .locals 3

    .line 1262
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1263
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1265
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1271
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method protected resolveThumbImage(Landroid/view/View;)V
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1313
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1314
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 1315
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1316
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1317
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected resolveUIState(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1065
    :pswitch_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToError()V

    goto :goto_0

    .line 1068
    :pswitch_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->initProgressTimer()V

    .line 1069
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToCompleteShow()V

    .line 1070
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    goto :goto_0

    .line 1059
    :pswitch_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPauseShow()V

    .line 1062
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_0

    .line 1082
    :pswitch_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiFromBufferingEnd()V

    goto :goto_0

    .line 1075
    :pswitch_4
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->localPlayer:Z

    if-nez p1, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPlayingBufferingShow()V

    .line 1077
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    goto :goto_0

    .line 1053
    :pswitch_5
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changePlayingNotShow()V

    .line 1054
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_0

    .line 1047
    :pswitch_6
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPreparingShow()V

    .line 1048
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    goto :goto_0

    .line 1043
    :pswitch_7
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToNormal()V

    .line 1044
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBrightness(F)V
    .locals 5

    .line 1334
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1335
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1336
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 1337
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 1338
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    float-to-double v1, p1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    const p1, 0x3dcccccd    # 0.1f

    .line 1339
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1342
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setDismissControlTime(I)V
    .locals 0

    .line 1652
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    return-void
.end method

.method public setEnlargeImageRes(I)V
    .locals 0

    .line 1536
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    return-void
.end method

.method public setGSYVideoProgressListener(Lcom/shuyu/gsyvideoplayer/c/d;)V
    .locals 0

    .line 1712
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

    return-void
.end method

.method public setHideKey(Z)V
    .locals 0

    .line 1579
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    return-void
.end method

.method public setIsTouchWiget(Z)V
    .locals 0

    .line 1596
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    return-void
.end method

.method public setIsTouchWigetFull(Z)V
    .locals 0

    .line 1560
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    return-void
.end method

.method public setLockClickListener(Lcom/shuyu/gsyvideoplayer/c/g;)V
    .locals 0

    .line 1643
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/c/g;

    return-void
.end method

.method public setNeedLockFull(Z)V
    .locals 0

    .line 1636
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    return-void
.end method

.method public setNeedShowWifiTip(Z)V
    .locals 0

    .line 1607
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    return-void
.end method

.method public setPlayButtonListener(Lcom/shuyu/gsyvideoplayer/c/h;)V
    .locals 0

    .line 1716
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mPlayListener:Lcom/shuyu/gsyvideoplayer/c/h;

    return-void
.end method

.method protected setProgressAndTime(IIII)V
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lcom/shuyu/gsyvideoplayer/c/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shuyu/gsyvideoplayer/c/d;->a(IIII)V

    .line 1217
    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    if-nez v0, :cond_1

    if-lez p3, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1225
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getBufferedPercentage()I

    move-result v0

    if-lez v0, :cond_2

    .line 1226
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p2

    invoke-interface {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getBufferedPercentage()I

    move-result p2

    :cond_2
    const/16 v0, 0x5e

    if-le p2, v0, :cond_3

    const/16 p2, 0x64

    .line 1230
    :cond_3
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    .line 1232
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-static {p4}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p3, :cond_4

    .line 1235
    iget-object p4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 1239
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1240
    :cond_5
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    return-void
.end method

.method protected setSecondaryProgress(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1250
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_1
    return-void
.end method

.method public setSeekRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 1619
    :cond_0
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    return-void
.end method

.method public setShrinkImageRes(I)V
    .locals 0

    .line 1552
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    return-void
.end method

.method protected setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 516
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    .line 518
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected setStateAndUi(I)V
    .locals 6

    .line 384
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getCurrentPositionWhenPlaying()I

    move-result v0

    const-string v1, "TTT"

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "TTT"

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->playCompleteStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    int-to-long v1, v0

    .line 389
    invoke-direct {p0, p1, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->playNetErrorStatus(IJ)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 391
    :cond_1
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x6

    if-eq p1, v4, :cond_3

    const/4 v4, 0x7

    if-ne p1, v4, :cond_4

    .line 395
    :cond_3
    iput-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPrepared:Z

    .line 398
    :cond_4
    iget v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 431
    :pswitch_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->initProgressTimer()V

    .line 432
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 433
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 435
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 438
    :cond_5
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 440
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->pause()V

    goto/16 :goto_0

    .line 422
    :pswitch_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    goto/16 :goto_0

    .line 448
    :pswitch_2
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelUpdateNetSpeedTimer()V

    const-string v3, "TTT"

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " formatTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-wide v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentPosition:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->seekToTime:I

    if-eqz v0, :cond_6

    .line 454
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentPosition:J

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onVideoSeekTo(I)V

    return-void

    .line 458
    :cond_6
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    .line 459
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    .line 461
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    goto :goto_0

    .line 445
    :pswitch_3
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startUpdateNetSpeedTimer()V

    goto :goto_0

    .line 417
    :pswitch_4
    iput v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->seekToTime:I

    .line 418
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 419
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelUpdateNetSpeedTimer()V

    goto :goto_0

    .line 413
    :pswitch_5
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resetProgressAndTime()V

    .line 414
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->startUpdateNetSpeedTimer()V

    goto :goto_0

    .line 400
    :pswitch_6
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 401
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->initProgressTimer()V

    .line 402
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseMediaPlayer()V

    .line 403
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->releasePauseCover()V

    .line 404
    iput v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBufferPoint:I

    const-wide/16 v0, 0x0

    .line 405
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSaveChangeViewTIme:J

    .line 407
    :cond_8
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_9

    .line 408
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 467
    :cond_9
    :goto_0
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resolveUIState(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected setTextAndProgress(I)V
    .locals 4

    .line 1201
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getCurrentPositionWhenPlaying()I

    move-result v0

    .line 1202
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v1

    mul-int/lit8 v2, v0, 0x64

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1203
    :goto_0
    div-int/2addr v2, v3

    .line 1204
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIII)V

    return-void
.end method

.method public setThumbImageView(Landroid/view/View;)V
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1483
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    .line 1484
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setThumbPlay(Z)V
    .locals 0

    .line 1567
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    return-void
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 687
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 688
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 689
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->resetData()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 673
    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1457
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    .line 1458
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCache:Z

    .line 1459
    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCachePath:Ljava/io/File;

    const/4 p1, 0x1

    .line 1460
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 1461
    iput-object p5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    .line 1462
    iput-object p4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mMapHeadData:Ljava/util/Map;

    .line 1463
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSaveChangeViewTIme:J

    sub-long v2, p4, v0

    const-wide/16 p4, 0x7d0

    cmp-long p2, v2, p4

    if-gez p2, :cond_0

    return p3

    :cond_0
    const-string p2, "waiting"

    .line 1466
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mUrl:Ljava/lang/String;

    .line 1467
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    return p1
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1324
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected abstract showAllWidget()V
.end method

.method protected abstract showBrightnessDialog(F)V
.end method

.method protected abstract showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
.end method

.method protected abstract showVolumeDialog(FI)V
.end method

.method protected abstract showWifiDialog()V
.end method

.method protected startDismissControlViewTimer()V
    .locals 4

    .line 1289
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 1290
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    .line 1291
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    .line 1292
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlViewTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$DismissControlViewTimerTask;

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected startProgressTimer()V
    .locals 8

    .line 1182
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->initProgressTimer()V

    .line 1183
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    .line 1184
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    .line 1185
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateProcessTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressTimerTask:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$ProgressTimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x12c

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected touchDoubleUp()V
    .locals 1

    .line 1029
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    return-void
.end method

.method protected touchSurfaceDown(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 836
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 837
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    .line 838
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    const/4 p1, 0x0

    .line 839
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mMoveY:F

    const/4 p1, 0x0

    .line 840
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 841
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 842
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 843
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 844
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    return-void
.end method

.method protected touchSurfaceMove(FFF)V
    .locals 9

    .line 848
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getCurrentScreenLand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenWidth:I

    .line 849
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getCurrentScreenLand(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenWidth:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenHeight:I

    .line 851
    :goto_1
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-eqz v2, :cond_3

    .line 853
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v8

    int-to-float p2, v0

    div-float p2, p1, p2

    .line 857
    iget p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    int-to-float p3, p3

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->preDpVideoDuration:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    add-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 859
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    if-le p2, v8, :cond_2

    .line 860
    iput v8, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 862
    :cond_2
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentPosition:J

    .line 863
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    .line 864
    invoke-static {v8}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v7

    .line 865
    iget v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    goto :goto_2

    .line 868
    :cond_3
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-eqz p1, :cond_4

    neg-float p1, p2

    .line 872
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    int-to-float v0, p2

    mul-float v0, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 875
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    add-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-virtual {v3, p3, v4, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 876
    iget p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    mul-int/lit8 p3, p3, 0x64

    div-int/2addr p3, p2

    int-to-float p2, p3

    mul-float v2, v2, p1

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float v2, v2, p3

    div-float/2addr v2, v1

    add-float/2addr p2, v2

    float-to-int p2, p2

    neg-float p1, p1

    .line 877
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->showVolumeDialog(FI)V

    goto :goto_2

    .line 880
    :cond_4
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-eqz p1, :cond_5

    .line 882
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    neg-float p1, p2

    int-to-float p2, v1

    div-float/2addr p1, p2

    .line 884
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onBrightnessSlide(F)V

    .line 885
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    :cond_5
    :goto_2
    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 4

    .line 892
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getCurrentScreenLand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mScreenWidth:I

    .line 894
    :goto_0
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_9

    .line 896
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->initProgressTimer()V

    .line 898
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_4

    cmpl-float v1, p1, p2

    if-lez v1, :cond_4

    .line 900
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    .line 901
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 903
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 904
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->seekToTime:I

    if-nez p1, :cond_2

    .line 906
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getCurrentPositionWhenPlaying()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    .line 907
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->seekToTime:I

    goto :goto_3

    .line 909
    :cond_2
    iget-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentPosition:J

    long-to-int p1, p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    goto :goto_3

    .line 914
    :cond_3
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    goto :goto_3

    .line 917
    :cond_4
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_9

    cmpl-float p1, p2, p1

    if-lez p1, :cond_9

    .line 918
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    .line 919
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 920
    :goto_1
    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    if-eqz v1, :cond_7

    .line 921
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v0, v0, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_6

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 922
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 924
    :cond_7
    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-nez p2, :cond_8

    .line 925
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 926
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    :cond_8
    xor-int/2addr p1, v2

    .line 929
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    :cond_9
    :goto_3
    return-void
.end method

.method protected touchSurfaceUp()V
    .locals 6

    .line 938
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-eqz v0, :cond_2

    .line 939
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v0

    .line 940
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 v3, v3, 0x64

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    div-int/2addr v3, v0

    .line 942
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 945
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->updateInSeekStopImage()V

    :cond_2
    const/4 v0, 0x0

    .line 948
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 949
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->dismissProgressDialog()V

    .line 950
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->dismissVolumeDialog()V

    .line 951
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->dismissBrightnessDialog()V

    .line 953
    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_9

    .line 959
    :cond_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->getDuration()I

    move-result v3

    .line 960
    iget v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    mul-int/lit8 v5, v5, 0x64

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :cond_4
    div-int/2addr v5, v3

    if-gtz v5, :cond_5

    const/4 v5, 0x0

    :cond_5
    if-lt v5, v2, :cond_6

    const/16 v5, 0x64

    .line 964
    :cond_6
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    if-nez v5, :cond_7

    .line 967
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->prepareVideo()V

    return-void

    :cond_7
    if-lt v5, v2, :cond_8

    .line 972
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onAutoCompletion()V

    .line 973
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPlayingShow()V

    return-void

    :cond_8
    const-string v2, "TTT"

    .line 977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSeekTimePosition:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    invoke-static {v5}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    invoke-virtual {p0, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->onVideoSeekTo(I)V

    .line 982
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "onTouchScreenSeekPosition"

    .line 983
    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v0

    aput-object p0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/c/i;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 986
    :cond_9
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    if-eqz v2, :cond_a

    .line 987
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "onTouchScreenSeekLight"

    .line 988
    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 989
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v0

    aput-object p0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/c/i;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 991
    :cond_a
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    if-eqz v2, :cond_b

    .line 992
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->isCurrentMediaListener()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "onTouchScreenSeekVolume"

    .line 993
    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 994
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v0

    aput-object p0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/c/i;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_0
    return-void
.end method

.method protected updateInSeekStartImage()V
    .locals 0

    return-void
.end method

.method protected updateInSeekStopImage()V
    .locals 0

    return-void
.end method

.method protected updateStartImage()V
    .locals 0

    return-void
.end method
