.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;
.source "GSYVideoView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/c/a;


# static fields
.field public static final CHANGE_DELAY_TIME:I = 0x7d0

.field public static final CURRENT_STATE_AUTO_COMPLETE:I = 0x6

.field public static final CURRENT_STATE_ERROR:I = 0x7

.field public static final CURRENT_STATE_NORMAL:I = 0x0

.field public static final CURRENT_STATE_PAUSE:I = 0x5

.field public static final CURRENT_STATE_PLAYING:I = 0x2

.field public static final CURRENT_STATE_PLAYING_BUFFERING_END:I = 0x4

.field public static final CURRENT_STATE_PLAYING_BUFFERING_START:I = 0x3

.field public static final CURRENT_STATE_PREPAREING:I = 0x1


# instance fields
.field protected localPlayer:Z

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBackUpPlayingBufferState:I

.field protected mBufferPoint:I

.field protected mCache:Z

.field protected mCachePath:Ljava/io/File;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentPosition:J

.field protected mCurrentState:I

.field protected mHadPlay:Z

.field protected mHadPrepared:Z

.field protected mIfCurrentIsFullscreen:Z

.field protected mLooping:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetChanged:Z

.field protected mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

.field protected mNetSate:Ljava/lang/String;

.field protected mOriginUrl:Ljava/lang/String;

.field protected mPauseBeforePrepared:Z

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mReleaseWhenLossAudio:Z

.field protected mSaveChangeViewTIme:J

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekOnStart:J

.field protected mShowPauseCover:Z

.field protected mSoundTouch:Z

.field protected mSpeed:F

.field protected mStartAfterPrepared:Z

.field protected mTitle:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

.field protected onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected seekToTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 171
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v1, -0x16

    .line 70
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 82
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 100
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 103
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 106
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 109
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 112
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->localPlayer:Z

    .line 115
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 118
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 121
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 127
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 130
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v1, ""

    .line 136
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v1, "NORMAL"

    .line 151
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 168
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->seekToTime:I

    .line 357
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 172
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 67
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v0, -0x16

    .line 70
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 82
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 94
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 p2, 0x0

    .line 97
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 100
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 103
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 106
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 109
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 112
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->localPlayer:Z

    .line 115
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 118
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 121
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 127
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 130
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v0, ""

    .line 136
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v0, "NORMAL"

    .line 151
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 168
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->seekToTime:I

    .line 357
    new-instance p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {p2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 177
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

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

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 67
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 p3, -0x16

    .line 70
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 82
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 p2, -0x1

    .line 85
    iput-wide p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 p2, 0x0

    .line 91
    iput-wide p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 94
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 p2, 0x0

    .line 97
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 100
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 103
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 106
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 109
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 112
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->localPlayer:Z

    .line 115
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 118
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 121
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 p3, 0x1

    .line 124
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 127
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 130
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string p3, ""

    .line 136
    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string p3, "NORMAL"

    .line 151
    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 160
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 168
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->seekToTime:I

    .line 357
    new-instance p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {p2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 182
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    .line 186
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v1, -0x16

    .line 70
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 82
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 100
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 103
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 106
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 109
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 112
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->localPlayer:Z

    .line 115
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 118
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 121
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 127
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 130
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v1, ""

    .line 136
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v1, "NORMAL"

    .line 151
    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 168
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->seekToTime:I

    .line 357
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 187
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 188
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract backFromFull(Landroid/content/Context;)Z
.end method

.method protected changeNetwork(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clearCurrentCache()V
    .locals 4

    .line 778
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 782
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected createNetWorkState()V
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    invoke-direct {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;-><init>(Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule$NetChangeListener;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    .line 902
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;->getCurrentConnectionType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected deleteCacheFileWhenError()V
    .locals 2

    .line 620
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->clearCurrentCache()V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link Or mCache Error, Please Try Again "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 622
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCache Link "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    return-void
.end method

.method protected getActivityContext()Landroid/content/Context;
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getBuffterPoint()I
    .locals 1

    .line 1072
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBufferPoint:I

    return v0
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 6

    .line 794
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 796
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v2

    :cond_1
    if-nez v1, :cond_2

    .line 802
    iget-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 803
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    long-to-int v0, v0

    return v0

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 798
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public getCurrentState()I
    .locals 1

    .line 978
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return v0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 814
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    return v0

    :catch_0
    move-exception v0

    .line 816
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;
.end method

.method public abstract getLayoutId()I
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

    .line 1198
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 1040
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getNetSpeed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetSpeedText()Ljava/lang/String;
    .locals 2

    .line 1049
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getNetSpeed()J

    move-result-wide v0

    .line 1050
    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getTextSpeed(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 1024
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSeekOnStart()J
    .locals 2

    .line 1054
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1108
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 280
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->initInflate(Landroid/content/Context;)V

    .line 282
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->surface_container:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    .line 286
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    .line 287
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method protected initInflate(Landroid/content/Context;)V
    .locals 2

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 296
    invoke-virtual {p1}, Landroid/view/InflateException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSYImageCover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "********************\n*****   \u6ce8\u610f   *************************\n*\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\n****  Attention  ***\n*Please remove GSYImageCover from Layout in this Version\n********************\n"

    .line 297
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 304
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 305
    new-instance p1, Landroid/view/InflateException;

    const-string v0, "\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\uff0cplease remove GSYImageCover from your layout"

    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_0
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public isAutoCompletion()Z
    .locals 2

    .line 500
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCurrentMediaListener()Z
    .locals 1

    .line 878
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIfCurrentIsFullscreen()Z
    .locals 1

    .line 1079
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    return v0
.end method

.method public isInPlayingState()Z
    .locals 2

    .line 995
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1087
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1000
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReleaseWhenLossAudio()Z
    .locals 1

    .line 1185
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    return v0
.end method

.method public isShowPauseCover()Z
    .locals 1

    .line 1144
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    return v0
.end method

.method public isStartAfterPrepared()Z
    .locals 1

    .line 1172
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    return v0
.end method

.method protected listenerNetWorkState()V
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;->onHostResume()V

    :cond_0
    return-void
.end method

.method protected netWorkErrorLogic()V
    .locals 4

    .line 603
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    move-result v0

    int-to-long v0, v0

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Net State Changed. renew player to connect *******"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseMediaPlayer()V

    .line 606
    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$3;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;J)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAutoCompletion()V
    .locals 5

    const/4 v0, 0x6

    .line 650
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 664
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onAutoComplete"

    .line 665
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/c/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCompletion()V
    .locals 3

    const-string v0, "TTT"

    const-string v1, "onCompletion()"

    .line 673
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 675
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    const-wide/16 v1, 0x0

    .line 677
    iput-wide v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 678
    iput-wide v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 680
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 684
    :cond_0
    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v1, :cond_1

    .line 685
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 686
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 688
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setCurrentVideoHeight(I)V

    .line 689
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setCurrentVideoWidth(I)V

    .line 691
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 692
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public onError(II)V
    .locals 4

    const-string v0, "TTT"

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onError what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 706
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 709
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->localPlayer:Z

    if-eqz p1, :cond_0

    return-void

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->netWorkErrorLogic()V

    .line 712
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz p1, :cond_1

    .line 713
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object p0, v1, v0

    invoke-interface {p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/c/i;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const/16 p2, 0x26

    if-eq p1, p2, :cond_3

    const/16 p2, -0x26

    if-eq p1, p2, :cond_3

    const/4 p1, 0x7

    .line 720
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 721
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->deleteCacheFileWhenError()V

    .line 722
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz p1, :cond_3

    .line 723
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object p0, v1, v0

    invoke-interface {p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/c/i;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected onGankAudio()V
    .locals 0

    return-void
.end method

.method public onInfo(II)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2bd

    if-ne p1, v1, :cond_0

    .line 732
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 734
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eq p1, v0, :cond_3

    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-lez p1, :cond_3

    const/4 p1, 0x3

    .line 735
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x2be

    if-ne p1, v1, :cond_2

    .line 738
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    .line 740
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-lez p1, :cond_1

    const/4 p1, 0x4

    .line 741
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 744
    :cond_1
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    goto :goto_0

    .line 746
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getRotateInfoFlag()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 747
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mRotate:I

    .line 748
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video Rotate Info "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 749
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz p1, :cond_3

    .line 750
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mRotate:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/render/a;->a(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onLossAudio()V
    .locals 1

    .line 387
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLossTransientAudio()V
    .locals 1

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 406
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onLossTransientCanDuck()V
    .locals 0

    return-void
.end method

.method public onPrepared()V
    .locals 6

    .line 631
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 633
    :cond_0
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 635
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onPrepared"

    .line 636
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object p0, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/shuyu/gsyvideoplayer/c/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    :cond_1
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 641
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    return-void

    .line 645
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 516
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 517
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 520
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 521
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 522
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 523
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 526
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoPause(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 536
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 537
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 540
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 542
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setCurrentState(I)V

    .line 543
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 544
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 547
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoReset()V
    .locals 1

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    return-void
.end method

.method public onVideoResume()V
    .locals 1

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    return-void
.end method

.method public onVideoResume(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 580
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 582
    :try_start_0
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    invoke-interface {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V

    const/4 p1, 0x2

    .line 587
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 588
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 591
    :cond_1
    iput-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 594
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onVideoSeekTo(I)V
    .locals 3

    .line 1228
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V

    return-void
.end method

.method public onVideoSizeChanged()V
    .locals 2

    .line 756
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentVideoWidth()I

    move-result v0

    .line 757
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentVideoHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 758
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a()V

    :cond_0
    return-void
.end method

.method public onVideoSpeedPlay(F)V
    .locals 1

    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setSpeedPlaying(FZ)V

    return-void
.end method

.method protected prepareVideo()V
    .locals 0

    .line 331
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->startPrepare()V

    return-void
.end method

.method public release()V
    .locals 6

    const-wide/16 v0, 0x0

    .line 826
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 827
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x7d0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    .line 830
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 831
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->unListenerNetWorkState()V

    :cond_0
    return-void
.end method

.method protected releasePauseCover()V
    .locals 2

    .line 215
    :try_start_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected releaseSurface(Landroid/view/Surface;)V
    .locals 1

    .line 771
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseSurface(Landroid/view/Surface;)V

    return-void
.end method

.method protected abstract releaseVideos()V
.end method

.method public seekTo(J)V
    .locals 3

    .line 1163
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1167
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    .line 988
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return-void
.end method

.method protected setDisplay(Landroid/view/Surface;)V
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public setIfCurrentIsFullscreen(Z)V
    .locals 0

    .line 1083
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 1094
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

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

    if-eqz p1, :cond_0

    .line 1208
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .line 1031
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    return-void
.end method

.method public setReleaseWhenLossAudio(Z)V
    .locals 0

    .line 1194
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    return-void
.end method

.method public setSeekOnStart(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1065
    :cond_0
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    return-void
.end method

.method public setShowPauseCover(Z)V
    .locals 0

    .line 1155
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1115
    invoke-virtual {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    return-void
.end method

.method public setSpeed(FZ)V
    .locals 1

    .line 1125
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    .line 1126
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 1127
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setSpeed(FZ)V

    :cond_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 1

    .line 1139
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    .line 1140
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setSpeedPlaying(FZ)V

    return-void
.end method

.method public setStartAfterPrepared(Z)V
    .locals 0

    .line 1181
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    return-void
.end method

.method protected abstract setStateAndUi(I)V
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 466
    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z
    .locals 6

    .line 480
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 481
    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 482
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 483
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x7d0

    cmp-long p2, v4, v0

    if-gez p2, :cond_0

    return p3

    .line 486
    :cond_0
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 487
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 488
    iput-object p4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 490
    invoke-virtual {p0, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
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

    .line 442
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 443
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 446
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    :goto_0
    if-eqz p4, :cond_1

    .line 449
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 427
    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    return-void
.end method

.method protected showPauseCover()V
    .locals 6

    .line 193
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSurface:Landroid/view/Surface;

    .line 195
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isSurfaceSupportLockCanvas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/render/a;->d()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/render/a;->e()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 199
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSurface:Landroid/view/Surface;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/render/a;->d()I

    move-result v3

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v4}, Lcom/shuyu/gsyvideoplayer/render/a;->e()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public startAfterPrepared()V
    .locals 6

    .line 840
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    .line 845
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 846
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V

    :cond_1
    const/4 v0, 0x4

    .line 849
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 851
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 852
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget-wide v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    invoke-interface {v0, v4, v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V

    .line 853
    iput-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 856
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 859
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->addTextureView()V

    .line 861
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->createNetWorkState()V

    .line 863
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->listenerNetWorkState()V

    const/4 v0, 0x1

    .line 865
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 867
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->i()V

    .line 871
    :cond_3
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    if-eqz v0, :cond_4

    .line 872
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    const/4 v0, 0x0

    .line 873
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    :cond_4
    return-void
.end method

.method protected startButtonLogic()V
    .locals 6

    .line 317
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-nez v0, :cond_0

    const-string v0, "onClickStartIcon"

    .line 318
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/c/i;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    if-eqz v0, :cond_1

    const-string v0, "onClickStartError"

    .line 321
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/c/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    return-void
.end method

.method public abstract startPlayLogic()V
.end method

.method protected startPrepare()V
    .locals 9

    .line 335
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/c/a;->onCompletion()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const-string v0, "onStartPrepared"

    .line 339
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/c/i;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/shuyu/gsyvideoplayer/c/i;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/c/a;)V

    .line 343
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setPlayTag(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    invoke-interface {v0, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setPlayPosition(I)V

    .line 346
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 348
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    .line 349
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 350
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v2

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    goto :goto_0

    :goto_1
    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    iget v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    iget-boolean v7, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    invoke-interface/range {v2 .. v8}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V

    .line 351
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    return-void
.end method

.method protected unListenerNetWorkState()V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;->onHostPause()V

    const/4 v0, 0x0

    .line 925
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    :cond_0
    return-void
.end method

.method protected updatePauseCover()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method
