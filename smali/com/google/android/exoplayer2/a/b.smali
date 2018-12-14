.class public interface abstract Lcom/google/android/exoplayer2/a/b;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a/b$a;
    }
.end annotation


# virtual methods
.method public abstract onAudioSessionId(Lcom/google/android/exoplayer2/a/b$a;I)V
.end method

.method public abstract onAudioUnderrun(Lcom/google/android/exoplayer2/a/b$a;IJJ)V
.end method

.method public abstract onBandwidthEstimate(Lcom/google/android/exoplayer2/a/b$a;IJJ)V
.end method

.method public abstract onDecoderDisabled(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/b/d;)V
.end method

.method public abstract onDecoderEnabled(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/b/d;)V
.end method

.method public abstract onDecoderInitialized(Lcom/google/android/exoplayer2/a/b$a;ILjava/lang/String;J)V
.end method

.method public abstract onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/a/b$a;ILcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract onDownstreamFormatChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$c;)V
.end method

.method public abstract onDrmKeysLoaded(Lcom/google/android/exoplayer2/a/b$a;)V
.end method

.method public abstract onDrmKeysRemoved(Lcom/google/android/exoplayer2/a/b$a;)V
.end method

.method public abstract onDrmKeysRestored(Lcom/google/android/exoplayer2/a/b$a;)V
.end method

.method public abstract onDrmSessionManagerError(Lcom/google/android/exoplayer2/a/b$a;Ljava/lang/Exception;)V
.end method

.method public abstract onDroppedVideoFrames(Lcom/google/android/exoplayer2/a/b$a;IJ)V
.end method

.method public abstract onLoadCanceled(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
.end method

.method public abstract onLoadCompleted(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
.end method

.method public abstract onLoadError(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;Ljava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
.end method

.method public abstract onLoadingChanged(Lcom/google/android/exoplayer2/a/b$a;Z)V
.end method

.method public abstract onMediaPeriodCreated(Lcom/google/android/exoplayer2/a/b$a;)V
.end method

.method public abstract onMediaPeriodReleased(Lcom/google/android/exoplayer2/a/b$a;)V
.end method

.method public abstract onMetadata(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
.end method

.method public abstract onPlaybackParametersChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/t;)V
.end method

.method public abstract onPlayerError(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(Lcom/google/android/exoplayer2/a/b$a;ZI)V
.end method

.method public abstract onPositionDiscontinuity(Lcom/google/android/exoplayer2/a/b$a;I)V
.end method

.method public abstract onReadingStarted(Lcom/google/android/exoplayer2/a/b$a;)V
.end method

.method public abstract onRenderedFirstFrame(Lcom/google/android/exoplayer2/a/b$a;Landroid/view/Surface;)V
.end method

.method public abstract onRepeatModeChanged(Lcom/google/android/exoplayer2/a/b$a;I)V
.end method

.method public abstract onSeekProcessed(Lcom/google/android/exoplayer2/a/b$a;)V
.end method

.method public abstract onSeekStarted(Lcom/google/android/exoplayer2/a/b$a;)V
.end method

.method public abstract onShuffleModeChanged(Lcom/google/android/exoplayer2/a/b$a;Z)V
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplayer2/a/b$a;I)V
.end method

.method public abstract onTracksChanged(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/f;)V
.end method

.method public abstract onUpstreamDiscarded(Lcom/google/android/exoplayer2/a/b$a;Lcom/google/android/exoplayer2/source/p$c;)V
.end method

.method public abstract onVideoSizeChanged(Lcom/google/android/exoplayer2/a/b$a;IIIF)V
.end method
