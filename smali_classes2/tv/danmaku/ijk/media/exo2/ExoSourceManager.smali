.class public Ltv/danmaku/ijk/media/exo2/ExoSourceManager;
.super Ljava/lang/Object;
.source "ExoSourceManager.java"


# static fields
.field private static final DEFAULT_MAX_SIZE:J = 0x20000000L

.field private static final TAG:Ljava/lang/String; = "ExoSourceManager"

.field public static final TYPE_RTMP:I = 0x4

.field protected static mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;


# instance fields
.field private isCached:Z

.field protected mAppContext:Landroid/content/Context;

.field protected mDataSource:Ljava/lang/String;

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->isCached:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    return-void
.end method

.method public static cachePreView(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 180
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    invoke-static {p0, p2}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 162
    :try_start_0
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p0, :cond_1

    .line 165
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/f;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/f;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 169
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 170
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/upstream/cache/f;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static declared-synchronized getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 4

    const-class v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 131
    :cond_0
    sget-object p1, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez p1, :cond_1

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "exo"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/n;->b(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 135
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/n;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/exoplayer2/upstream/cache/m;

    const-wide/32 v2, 0x20000000

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/m;-><init>(J)V

    invoke-direct {p1, v1, p0}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;)V

    sput-object p1, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 138
    :cond_1
    sget-object p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0

    throw p0
.end method

.method private getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/f$a;
    .locals 2

    .line 206
    new-instance v0, Lcom/google/android/exoplayer2/upstream/l;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/j;-><init>()V

    .line 207
    :goto_0
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/s;Lcom/google/android/exoplayer2/upstream/f$a;)V

    return-object v0
.end method

.method private getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/f$a;
    .locals 0

    if-eqz p2, :cond_0

    .line 193
    invoke-static {p1, p4}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 195
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mDataSource:Ljava/lang/String;

    invoke-static {p2, p4}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->isCached:Z

    .line 196
    new-instance p4, Lcom/google/android/exoplayer2/upstream/cache/c;

    invoke-direct {p0, p1, p3}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p1

    const/4 p3, 0x2

    invoke-direct {p4, p2, p1, p3}, Lcom/google/android/exoplayer2/upstream/cache/c;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/f$a;I)V

    return-object p4

    .line 199
    :cond_0
    invoke-direct {p0, p1, p3}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p1

    return-object p1
.end method

.method private getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/f$a;
    .locals 3

    .line 211
    new-instance v0, Lcom/google/android/exoplayer2/upstream/n;

    const-string v1, "ExoSourceManager"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/upstream/j;-><init>()V

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/s;)V

    .line 213
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 214
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 215
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/n;->c()Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .locals 1

    .line 108
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/aa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".mpd"

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ".m3u8"

    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, ".ism"

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".isml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".ism/manifest"

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".isml/manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "rtmp:"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/Map;)Ltv/danmaku/ijk/media/exo2/ExoSourceManager;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/danmaku/ijk/media/exo2/ExoSourceManager;"
        }
    .end annotation

    .line 59
    new-instance v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    invoke-direct {v0, p0, p1}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object v0
.end method

.method private static resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z
    .locals 13

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 229
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/f;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v3, 0x0

    .line 237
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v11, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/e;

    .line 238
    iget-wide v5, v3, Lcom/google/android/exoplayer2/upstream/cache/e;->b:J

    iget-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Ljava/lang/String;JJ)J

    move-result-wide v3

    add-long v5, v11, v3

    move-wide v11, v5

    goto :goto_0

    :cond_1
    cmp-long p0, v11, v9

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public getMediaSource(Ljava/lang/String;ZZZLjava/io/File;)Lcom/google/android/exoplayer2/source/o;
    .locals 4

    .line 68
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mDataSource:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    invoke-static {p1}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->inferContentType(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 95
    new-instance p1, Lcom/google/android/exoplayer2/source/k$a;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v1, p3, p2, p5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/k$a;-><init>(Lcom/google/android/exoplayer2/upstream/f$a;)V

    new-instance p2, Lcom/google/android/exoplayer2/extractor/c;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/c;-><init>()V

    .line 96
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/k$a;->a(Lcom/google/android/exoplayer2/extractor/h;)Lcom/google/android/exoplayer2/source/k$a;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/k$a;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/k;

    move-result-object p1

    goto :goto_0

    .line 85
    :pswitch_0
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/j$a;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v1, p3, p2, p5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/hls/j$a;-><init>(Lcom/google/android/exoplayer2/upstream/f$a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/hls/j$a;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/j;

    move-result-object p1

    goto :goto_0

    .line 74
    :pswitch_1
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/d$a;

    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0, v3, p3, p2, p5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;-><init>(Lcom/google/android/exoplayer2/upstream/f$a;)V

    new-instance p3, Lcom/google/android/exoplayer2/upstream/l;

    iget-object p5, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0, v3, p2}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p2

    invoke-direct {p3, p5, v2, p2}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/s;Lcom/google/android/exoplayer2/upstream/f$a;)V

    invoke-direct {p1, v1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/d$a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lcom/google/android/exoplayer2/upstream/f$a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/d$a;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/d;

    move-result-object p1

    goto :goto_0

    .line 80
    :pswitch_2
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/c$c;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/f$a;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v3, p3, p2, p5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/google/android/exoplayer2/source/dash/f$a;-><init>(Lcom/google/android/exoplayer2/upstream/f$a;)V

    new-instance p3, Lcom/google/android/exoplayer2/upstream/l;

    iget-object p5, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0, v3, p2}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/f$a;

    move-result-object p2

    invoke-direct {p3, p5, v2, p2}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/s;Lcom/google/android/exoplayer2/upstream/f$a;)V

    invoke-direct {p1, v1, p3}, Lcom/google/android/exoplayer2/source/dash/c$c;-><init>(Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/upstream/f$a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/dash/c$c;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/c;

    move-result-object p1

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/c/a/b;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/c/a/b;-><init>(Lcom/google/android/exoplayer2/upstream/s;)V

    .line 89
    new-instance p2, Lcom/google/android/exoplayer2/source/k$a;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/k$a;-><init>(Lcom/google/android/exoplayer2/upstream/f$a;)V

    new-instance p1, Lcom/google/android/exoplayer2/extractor/c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/c;-><init>()V

    .line 90
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/k$a;->a(Lcom/google/android/exoplayer2/extractor/h;)Lcom/google/android/exoplayer2/source/k$a;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/k$a;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/k;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_1

    .line 101
    new-instance p2, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/m;-><init>(Lcom/google/android/exoplayer2/source/o;)V

    return-object p2

    :cond_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hadCached()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->isCached:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->isCached:Z

    .line 143
    sget-object v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    sget-object v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a()V

    const/4 v0, 0x0

    .line 146
    sput-object v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
