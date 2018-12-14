.class public Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;
.super Ljava/lang/Object;
.source "ExtractorRendererBuilder.java"

# interfaces
.implements Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;


# static fields
.field private static final BUFFER_SEGMENT_COUNT:I = 0x100

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->userAgent:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public buildRenderers(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 58
    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v1, 0x10000

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    .line 59
    invoke-virtual/range {p1 .. p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v12

    .line 62
    new-instance v13, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    const/4 v1, 0x0

    invoke-direct {v13, v12, v1}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 63
    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->context:Landroid/content/Context;

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v3, v1, v13, v2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 64
    new-instance v14, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->uri:Landroid/net/Uri;

    const/4 v15, 0x0

    new-array v9, v15, [Lcom/google/android/exoplayer/extractor/Extractor;

    const/high16 v5, 0x1000000

    const/4 v8, 0x0

    move-object v1, v14

    move-object v6, v12

    move-object v7, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;ILandroid/os/Handler;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 66
    new-instance v16, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->context:Landroid/content/Context;

    sget-object v4, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v5, 0x1

    const-wide/16 v6, 0x1388

    const/16 v10, 0x32

    move-object/from16 v1, v16

    move-object v3, v14

    move-object v8, v12

    move-object v9, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 69
    new-instance v10, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v3, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->context:Landroid/content/Context;

    .line 71
    invoke-static {v1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v9, 0x3

    move-object v1, v10

    move-object v2, v14

    move-object v6, v12

    move-object v7, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 72
    new-instance v1, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    .line 73
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-array v3, v15, [Lcom/google/android/exoplayer/text/SubtitleParser;

    invoke-direct {v1, v14, v11, v2, v3}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    const/4 v2, 0x4

    .line 76
    new-array v2, v2, [Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v16, v2, v15

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 80
    invoke-virtual {v11, v2, v13}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method
