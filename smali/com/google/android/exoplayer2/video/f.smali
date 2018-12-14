.class public interface abstract Lcom/google/android/exoplayer2/video/f;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/f$a;
    }
.end annotation


# virtual methods
.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onRenderedFirstFrame(Landroid/view/Surface;)V
.end method

.method public abstract onVideoDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onVideoDisabled(Lcom/google/android/exoplayer2/b/d;)V
.end method

.method public abstract onVideoEnabled(Lcom/google/android/exoplayer2/b/d;)V
.end method

.method public abstract onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract onVideoSizeChanged(IIIF)V
.end method
