.class public interface abstract Lcom/google/android/exoplayer2/source/p;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/p$a;,
        Lcom/google/android/exoplayer2/source/p$c;,
        Lcom/google/android/exoplayer2/source/p$b;
    }
.end annotation


# virtual methods
.method public abstract onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$c;)V
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadCanceled(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadCompleted(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadError(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;Ljava/io/IOException;Z)V
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadStarted(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .param p2    # Lcom/google/android/exoplayer2/source/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onMediaPeriodCreated(ILcom/google/android/exoplayer2/source/o$a;)V
.end method

.method public abstract onMediaPeriodReleased(ILcom/google/android/exoplayer2/source/o$a;)V
.end method

.method public abstract onReadingStarted(ILcom/google/android/exoplayer2/source/o$a;)V
.end method

.method public abstract onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$c;)V
.end method
