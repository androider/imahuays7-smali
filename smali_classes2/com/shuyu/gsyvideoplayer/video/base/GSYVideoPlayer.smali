.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
.source "GSYVideoPlayer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method protected backFromFull(Landroid/content/Context;)Z
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/d;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected getFullId()I
    .locals 1

    .line 52
    sget v0, Lcom/shuyu/gsyvideoplayer/d;->b:I

    return v0
.end method

.method public getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;
    .locals 2

    .line 36
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/d;->a()Lcom/shuyu/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/d;->b(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/d;->a()Lcom/shuyu/gsyvideoplayer/d;

    move-result-object v0

    return-object v0
.end method

.method protected getSmallId()I
    .locals 1

    .line 57
    sget v0, Lcom/shuyu/gsyvideoplayer/d;->a:I

    return v0
.end method

.method protected releaseVideos()V
    .locals 0

    .line 47
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/d;->b()V

    return-void
.end method
