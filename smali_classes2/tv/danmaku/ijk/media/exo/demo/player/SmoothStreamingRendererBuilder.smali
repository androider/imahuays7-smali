.class public Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;
.super Ljava/lang/Object;
.source "SmoothStreamingRendererBuilder.java"

# interfaces
.implements Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_SEGMENTS:I = 0x36

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000

.field private static final LIVE_EDGE_LATENCY_MS:I = 0x7530

.field private static final TEXT_BUFFER_SEGMENTS:I = 0x2

.field private static final VIDEO_BUFFER_SEGMENTS:I = 0xc8


# instance fields
.field private final context:Landroid/content/Context;

.field private currentAsyncBuilder:Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;

.field private final drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

.field private final url:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/drm/MediaDrmCallback;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->userAgent:Ljava/lang/String;

    .line 74
    invoke-static {p3}, Lcom/google/android/exoplayer/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/manifest"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Manifest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->url:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    return-void
.end method


# virtual methods
.method public buildRenderers(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V
    .locals 7

    .line 80
    new-instance v6, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->userAgent:Ljava/lang/String;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->url:Ljava/lang/String;

    iget-object v4, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V

    iput-object v6, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->currentAsyncBuilder:Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;

    .line 81
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->currentAsyncBuilder:Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->init()V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 86
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->currentAsyncBuilder:Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->currentAsyncBuilder:Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->cancel()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;->currentAsyncBuilder:Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;

    :cond_0
    return-void
.end method
