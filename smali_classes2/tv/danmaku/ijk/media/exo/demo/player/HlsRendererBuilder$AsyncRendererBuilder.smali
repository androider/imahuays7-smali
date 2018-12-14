.class final Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "HlsRendererBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncRendererBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback<",
        "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private final context:Landroid/content/Context;

.field private final player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

.field private final playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher<",
            "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 101
    new-instance p4, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {p4}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    .line 102
    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p3, v1, p4}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    return-void
.end method

.method public init()V
    .locals 2

    .line 107
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 125
    iget-boolean v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v15

    .line 130
    new-instance v14, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v2, 0x10000

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v14, v1}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 131
    new-instance v13, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-direct {v13}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>()V

    .line 132
    new-instance v12, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-direct {v12}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;-><init>()V

    .line 136
    instance-of v1, v8, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    const/16 v19, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 137
    move-object v1, v8

    check-cast v1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .line 138
    iget-object v2, v1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 139
    iget-object v1, v1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move/from16 v20, v1

    move/from16 v21, v2

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 143
    :goto_0
    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v3, v1, v13, v2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 144
    new-instance v10, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/4 v2, 0x1

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 145
    invoke-static {v1}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newDefaultInstance(Landroid/content/Context;)Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v5

    move-object v1, v10

    move-object v4, v8

    move-object v6, v13

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 147
    new-instance v7, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v1, 0xfe0000

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v3, 0x0

    move-object v9, v7

    const/4 v6, 0x0

    move-object v11, v14

    move-object/from16 v31, v12

    move v12, v1

    move-object v5, v13

    move-object v13, v15

    move-object/from16 v32, v14

    move-object v14, v2

    move-object v4, v15

    move v15, v3

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 149
    new-instance v33, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iget-object v10, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    sget-object v12, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v13, 0x1

    const-wide/16 v14, 0x1388

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/16 v18, 0x32

    move-object/from16 v9, v33

    move-object v11, v7

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    invoke-direct/range {v9 .. v18}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 152
    new-instance v15, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;

    new-instance v1, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;

    invoke-direct {v1}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;-><init>()V

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 153
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v15, v7, v1, v2, v3}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/metadata/MetadataParser;Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;Landroid/os/Looper;)V

    const/4 v14, 0x2

    if-eqz v20, :cond_2

    .line 158
    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v3, v1, v5, v2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 159
    new-instance v10, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/4 v2, 0x0

    .line 160
    invoke-static {}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v9

    move-object v1, v10

    move-object v13, v4

    move-object v4, v8

    move-object v12, v5

    move-object v5, v9

    const/4 v11, 0x0

    move-object v6, v12

    move-object v9, v7

    move-object/from16 v7, v31

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 162
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v2, 0x360000

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v4, 0x1

    move-object v5, v9

    move-object v9, v1

    const/4 v7, 0x0

    move-object/from16 v11, v32

    move v12, v2

    move-object v2, v13

    move-object/from16 v34, v2

    const/4 v2, 0x2

    move-object v14, v3

    move-object/from16 v16, v15

    move v15, v4

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 165
    new-instance v3, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    new-array v4, v2, [Lcom/google/android/exoplayer/SampleSource;

    aput-object v5, v4, v7

    aput-object v1, v4, v19

    sget-object v24, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v25, 0x0

    const/16 v26, 0x1

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 167
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v27

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v9, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v29

    const/16 v30, 0x3

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v28, v1

    invoke-direct/range {v22 .. v30}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    move-object v9, v3

    goto :goto_1

    :cond_2
    move-object/from16 v34, v4

    move-object v6, v5

    move-object v5, v7

    move-object/from16 v16, v15

    const/4 v2, 0x2

    const/4 v7, 0x0

    .line 170
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v24, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v25, 0x0

    const/16 v26, 0x1

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 171
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v27

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 172
    invoke-static {v4}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v29

    const/16 v30, 0x3

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move-object/from16 v28, v3

    invoke-direct/range {v22 .. v30}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    move-object v9, v1

    :goto_1
    if-eqz v21, :cond_3

    .line 178
    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v3, v1, v6, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 179
    new-instance v10, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/4 v4, 0x0

    .line 180
    invoke-static {}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newSubtitleInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v5

    move-object v1, v10

    move-object/from16 v11, v34

    const/4 v12, 0x2

    move v2, v4

    move-object v4, v8

    move-object v13, v6

    const/4 v14, 0x0

    move-object/from16 v7, v31

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 182
    new-instance v1, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v5, 0x20000

    iget-object v7, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v8, 0x2

    move-object v2, v1

    move-object v3, v10

    move-object/from16 v4, v32

    move-object v6, v11

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 184
    new-instance v2, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-array v5, v14, [Lcom/google/android/exoplayer/text/SubtitleParser;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    goto :goto_2

    :cond_3
    move-object v13, v6

    move-object/from16 v11, v34

    const/4 v12, 0x2

    const/4 v14, 0x0

    .line 186
    new-instance v2, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;

    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v5, v1, v3}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;)V

    :goto_2
    const/4 v1, 0x4

    .line 189
    new-array v1, v1, [Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v33, v1, v14

    aput-object v9, v1, v19

    const/4 v3, 0x3

    aput-object v16, v1, v3

    aput-object v2, v1, v12

    .line 194
    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v2, v1, v13}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    return-void
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsPlaylist;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1

    .line 116
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    return-void
.end method
