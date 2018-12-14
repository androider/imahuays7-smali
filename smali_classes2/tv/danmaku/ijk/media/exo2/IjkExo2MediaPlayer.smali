.class public Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "IjkExo2MediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/a/b;
.implements Lcom/google/android/exoplayer2/v$b;


# static fields
.field public static ON_POSITION_DISCOUNTINUITY:I = 0xa8e

.field private static final TAG:Ljava/lang/String; = "IjkExo2MediaPlayer"


# instance fields
.field protected audioSessionId:I

.field protected isBuffering:Z

.field protected isCache:Z

.field protected isLastReportedPlayWhenReady:Z

.field protected isLooping:Z

.field protected isPreparing:Z

.field protected isPreview:Z

.field protected lastReportedPlaybackState:I

.field protected mAppContext:Landroid/content/Context;

.field protected mCacheDir:Ljava/io/File;

.field protected mDataSource:Ljava/lang/String;

.field protected mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

.field protected mExoHelper:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalPlayer:Lcom/google/android/exoplayer2/ac;

.field protected mMediaSource:Lcom/google/android/exoplayer2/source/o;

.field protected mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/t;

.field protected mSurface:Landroid/view/Surface;

.field protected mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field protected rendererFactory:Lcom/google/android/exoplayer2/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mHeaders:Ljava/util/Map;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPreparing:Z

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isBuffering:Z

    .line 74
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isLooping:Z

    .line 78
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPreview:Z

    .line 82
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isCache:Z

    .line 92
    iput v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->audioSessionId:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mAppContext:Landroid/content/Context;

    .line 97
    iput v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->lastReportedPlaybackState:I

    .line 98
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->newInstance(Landroid/content/Context;Ljava/util/Map;)Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mExoHelper:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    return-void
.end method

.method private getVideoRendererIndex()I
    .locals 4

    .line 103
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ac;->v()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 105
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ac;->b(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 323
    iget v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->audioSessionId:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 436
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 439
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->q()I

    move-result v0

    return v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 392
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 268
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 270
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 275
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 277
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExoHelper()Ltv/danmaku/ijk/media/exo2/ExoSourceManager;
    .locals 1

    .line 414
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mExoHelper:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    return-object v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSource()Lcom/google/android/exoplayer2/source/o;
    .locals 1

    .line 406
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/o;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 432
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->h()Lcom/google/android/exoplayer2/t;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/t;->b:F

    return v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .line 51
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 240
    iget v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 235
    iget v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isCache()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isCache:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 245
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 247
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 251
    :pswitch_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->e()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isPreview()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPreview:Z

    return v0
.end method

.method public onAudioSessionId(Lcom/google/android/exoplayer2/a/b$a;I)V
    .locals 0

    .line 677
    iput p2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->audioSessionId:I

    return-void
.end method

.method public onAudioUnderrun(Lcom/google/android/exoplayer2/a/b$a;IJJ)V
    .locals 0

    return-void
.end method

.method public onBandwidthEstimate(Lcom/google/android/exoplayer2/a/b$a;IJJ)V
    .locals 0

    return-void
.end method

.method public onDecoderDisabled(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/b/d;)V
    .locals 0

    const/4 p1, 0x0

    .line 672
    iput p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->audioSessionId:I

    return-void
.end method

.method public onDecoderEnabled(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/b/d;)V
    .locals 0

    return-void
.end method

.method public onDecoderInitialized(Lcom/google/android/exoplayer2/a/b$a;ILjava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysLoaded(Lcom/google/android/exoplayer2/a/b$a;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysRemoved(Lcom/google/android/exoplayer2/a/b$a;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysRestored(Lcom/google/android/exoplayer2/a/b$a;)V
    .locals 0

    return-void
.end method

.method public onDrmSessionManagerError(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onDroppedVideoFrames(Lcom/google/android/exoplayer2/a/b$a;IJ)V
    .locals 0

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 0

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;Ljava/io/IOException;Z)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Lcom/google/android/exoplayer2/a/b$a;Z)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMediaPeriodCreated(Lcom/google/android/exoplayer2/a/b$a;)V
    .locals 0

    return-void
.end method

.method public onMediaPeriodReleased(Lcom/google/android/exoplayer2/a/b$a;)V
    .locals 0

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    return-void
.end method

.method public onNetworkTypeChanged(Lcom/google/android/exoplayer2/a/b$a;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p2    # Landroid/net/NetworkInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/t;)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/t;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    const/4 p1, 0x1

    .line 514
    invoke-virtual {p0, p1, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->notifyOnError(II)Z

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(Lcom/google/android/exoplayer2/a/b$a;ZI)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    .line 464
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isLastReportedPlayWhenReady:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->lastReportedPlaybackState:I

    if-eq v0, p2, :cond_4

    .line 465
    :cond_0
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isBuffering:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x2be

    .line 469
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ac;->q()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->notifyOnInfo(II)Z

    .line 470
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isBuffering:Z

    .line 475
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPreparing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 478
    :cond_2
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->notifyOnPrepared()V

    .line 479
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPreparing:Z

    :cond_3
    :goto_1
    packed-switch p2, :pswitch_data_1

    goto :goto_2

    .line 492
    :pswitch_1
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->notifyOnCompletion()V

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x2bd

    .line 486
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ac;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->notifyOnInfo(II)Z

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isBuffering:Z

    .line 498
    :cond_4
    :goto_2
    :pswitch_3
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isLastReportedPlayWhenReady:Z

    .line 499
    iput p2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->lastReportedPlaybackState:I

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/a/b$a;I)V
    .locals 0

    .line 547
    sget p1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->ON_POSITION_DISCOUNTINUITY:I

    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->notifyOnInfo(II)Z

    return-void
.end method

.method public onReadingStarted(Lcom/google/android/exoplayer2/a/b$a;)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame(Lcom/google/android/exoplayer2/a/b$a;Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(Lcom/google/android/exoplayer2/a/b$a;I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onSeekProcessed(Lcom/google/android/exoplayer2/a/b$a;)V
    .locals 0

    return-void
.end method

.method public onSeekStarted(Lcom/google/android/exoplayer2/a/b$a;)V
    .locals 0

    return-void
.end method

.method public onShuffleModeChanged(Lcom/google/android/exoplayer2/a/b$a;Z)V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/a/b$a;I)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/ad;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/f;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/f;)V
    .locals 0

    return-void
.end method

.method public onUpstreamDiscarded(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/a/b$a;IIIF)V
    .locals 0

    .line 692
    iput p2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mVideoWidth:I

    .line 693
    iput p3, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mVideoHeight:I

    const/4 p1, 0x1

    .line 694
    invoke-virtual {p0, p2, p3, p1, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    if-lez p4, :cond_0

    const/16 p1, 0x2711

    .line 696
    invoke-virtual {p0, p1, p4}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->notifyOnInfo(II)Z

    :cond_0
    return-void
.end method

.method public onViewportSizeChange(Lcom/google/android/exoplayer2/a/b$a;II)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ac;->a(Z)V

    return-void
.end method

.method public prepareAsync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t prepare a prepared player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/a$a;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/j;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/a$a;-><init>(Lcom/google/android/exoplayer2/upstream/c;)V

    .line 169
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/e$a;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 171
    new-instance v0, Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/exo2/demo/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/d;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    const/4 v0, 0x2

    .line 180
    new-instance v1, Lcom/google/android/exoplayer2/g;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/g;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->rendererFactory:Lcom/google/android/exoplayer2/g;

    .line 181
    new-instance v0, Lcom/google/android/exoplayer2/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/e;-><init>()V

    .line 182
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->rendererFactory:Lcom/google/android/exoplayer2/g;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/i;->a(Lcom/google/android/exoplayer2/aa;Lcom/google/android/exoplayer2/trackselection/g;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/drm/d;)Lcom/google/android/exoplayer2/ac;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    .line 183
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/v$b;)V

    .line 184
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/a/b;)V

    .line 185
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/v$b;)V

    .line 186
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/t;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/t;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/t;)V

    .line 189
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/Surface;)V

    .line 192
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/source/o;)V

    .line 193
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ac;->a(Z)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 353
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->reset()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 292
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->i()V

    .line 294
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    .line 296
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mExoHelper:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mExoHelper:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->release()V

    .line 299
    :cond_1
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 300
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mVideoWidth:I

    .line 302
    iput v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mVideoHeight:I

    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ac;->a(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setCache(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isCache:Z

    return-void
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0

    .line 402
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6

    .line 149
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mDataSource:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mExoHelper:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mDataSource:Ljava/lang/String;

    iget-boolean v2, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPreview:Z

    iget-boolean v3, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isCache:Z

    iget-boolean v4, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isLooping:Z

    iget-object v5, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mCacheDir:Ljava/io/File;

    invoke-virtual/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getMediaSource(Ljava/lang/String;ZZZLjava/io/File;)Lcom/google/android/exoplayer2/source/o;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/o;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 136
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 139
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no support"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isLooping:Z

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 410
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/o;

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    .line 370
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPreview:Z

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSpeed(FF)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/Size;
            min = 0x0L
        .end annotation
    .end param

    .line 424
    new-instance v0, Lcom/google/android/exoplayer2/t;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/t;-><init>(FF)V

    .line 425
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/t;

    .line 426
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-eqz p1, :cond_0

    .line 427
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/t;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 123
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 124
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 128
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ac;->a(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 317
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ac;->a(F)V

    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ac;->a(Z)V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->i()V

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 360
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ac;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ac;->j()V

    return-void
.end method
