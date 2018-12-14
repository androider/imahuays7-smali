.class public interface abstract Lcom/google/android/exoplayer2/audio/d;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/d$a;
    }
.end annotation


# virtual methods
.method public abstract onAudioDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onAudioDisabled(Lcom/google/android/exoplayer2/b/d;)V
.end method

.method public abstract onAudioEnabled(Lcom/google/android/exoplayer2/b/d;)V
.end method

.method public abstract onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract onAudioSessionId(I)V
.end method

.method public abstract onAudioSinkUnderrun(IJJ)V
.end method
