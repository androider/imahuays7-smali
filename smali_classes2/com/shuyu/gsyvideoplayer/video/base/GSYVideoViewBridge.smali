.class public interface abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;
.super Ljava/lang/Object;
.source "GSYVideoViewBridge.java"


# virtual methods
.method public abstract cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
.end method

.method public abstract clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentVideoHeight()I
.end method

.method public abstract getCurrentVideoWidth()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getLastState()I
.end method

.method public abstract getNetSpeed()J
.end method

.method public abstract getPlayPosition()I
.end method

.method public abstract getPlayTag()Ljava/lang/String;
.end method

.method public abstract getPlayer()Lcom/shuyu/gsyvideoplayer/e/b;
.end method

.method public abstract getRotateInfoFlag()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoSarDen()I
.end method

.method public abstract getVideoSarNum()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isCacheFile()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSurfaceSupportLockCanvas()Z
.end method

.method public abstract lastListener()Lcom/shuyu/gsyvideoplayer/c/a;
.end method

.method public abstract listener()Lcom/shuyu/gsyvideoplayer/c/a;
.end method

.method public abstract pause()V
.end method

.method public abstract prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public abstract releaseMediaPlayer()V
.end method

.method public abstract releaseSurface(Landroid/view/Surface;)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setCurrentVideoHeight(I)V
.end method

.method public abstract setCurrentVideoWidth(I)V
.end method

.method public abstract setDisplay(Landroid/view/Surface;)V
.end method

.method public abstract setLastListener(Lcom/shuyu/gsyvideoplayer/c/a;)V
.end method

.method public abstract setLastState(I)V
.end method

.method public abstract setListener(Lcom/shuyu/gsyvideoplayer/c/a;)V
.end method

.method public abstract setPlayPosition(I)V
.end method

.method public abstract setPlayTag(Ljava/lang/String;)V
.end method

.method public abstract setSpeed(FZ)V
.end method

.method public abstract setSpeedPlaying(FZ)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
