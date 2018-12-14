.class public Lcom/shuyu/gsyvideoplayer/b/d;
.super Ljava/lang/Object;
.source "ProxyCacheManager.java"

# interfaces
.implements Lcom/danikula/videocache/b;
.implements Lcom/shuyu/gsyvideoplayer/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/b/d$a;
    }
.end annotation


# static fields
.field private static e:Lcom/shuyu/gsyvideoplayer/b/d;


# instance fields
.field protected a:Lcom/danikula/videocache/g;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/io/File;

.field protected d:Z

.field private f:Lcom/shuyu/gsyvideoplayer/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static b(Landroid/content/Context;)Lcom/danikula/videocache/g;
    .locals 2

    .line 187
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/b/d;->a:Lcom/danikula/videocache/g;

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/shuyu/gsyvideoplayer/b/d;->a(Landroid/content/Context;)Lcom/danikula/videocache/g;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/b/d;->a:Lcom/danikula/videocache/g;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/g;
    .locals 2

    if-nez p1, :cond_0

    .line 200
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/b/d;->b(Landroid/content/Context;)Lcom/danikula/videocache/g;

    move-result-object p0

    return-object p0

    .line 204
    :cond_0
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/b/d;->c:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 205
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/b/d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/b/d;->a:Lcom/danikula/videocache/g;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Lcom/danikula/videocache/g;->a()V

    .line 213
    :cond_1
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/b/d;->a(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/g;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/b/d;->a:Lcom/danikula/videocache/g;

    return-object p0

    .line 217
    :cond_2
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/b/d;->a:Lcom/danikula/videocache/g;

    if-nez v0, :cond_3

    .line 219
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b/d;->c()Lcom/shuyu/gsyvideoplayer/b/d;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/b/d;->a(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/g;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/b/d;->a:Lcom/danikula/videocache/g;

    goto :goto_0

    :cond_3
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized c()Lcom/shuyu/gsyvideoplayer/b/d;
    .locals 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/b/d;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/b/d;->e:Lcom/shuyu/gsyvideoplayer/b/d;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/shuyu/gsyvideoplayer/b/d;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/b/d;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/b/d;->e:Lcom/shuyu/gsyvideoplayer/b/d;

    .line 49
    :cond_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/b/d;->e:Lcom/shuyu/gsyvideoplayer/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/danikula/videocache/g;
    .locals 2

    .line 167
    new-instance v0, Lcom/danikula/videocache/g$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/danikula/videocache/g$a;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/shuyu/gsyvideoplayer/b/d$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/shuyu/gsyvideoplayer/b/d$a;-><init>(Lcom/shuyu/gsyvideoplayer/b/d;Lcom/shuyu/gsyvideoplayer/b/d$1;)V

    .line 168
    invoke-virtual {v0, p1}, Lcom/danikula/videocache/g$a;->a(Lcom/danikula/videocache/b/b;)Lcom/danikula/videocache/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/danikula/videocache/g$a;->a()Lcom/danikula/videocache/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/g;
    .locals 2

    .line 149
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_0
    new-instance v0, Lcom/danikula/videocache/g$a;

    invoke-direct {v0, p1}, Lcom/danikula/videocache/g$a;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v0, p2}, Lcom/danikula/videocache/g$a;->a(Ljava/io/File;)Lcom/danikula/videocache/g$a;

    .line 154
    new-instance p1, Lcom/shuyu/gsyvideoplayer/b/d$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/shuyu/gsyvideoplayer/b/d$a;-><init>(Lcom/shuyu/gsyvideoplayer/b/d;Lcom/shuyu/gsyvideoplayer/b/d$1;)V

    invoke-virtual {v0, p1}, Lcom/danikula/videocache/g$a;->a(Lcom/danikula/videocache/b/b;)Lcom/danikula/videocache/g$a;

    .line 155
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/b/d;->c:Ljava/io/File;

    .line 156
    invoke-virtual {v0}, Lcom/danikula/videocache/g$a;->a()Lcom/danikula/videocache/g;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/b/d;->a:Lcom/danikula/videocache/g;

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/b/d;->a:Lcom/danikula/videocache/g;

    invoke-virtual {v0, p0}, Lcom/danikula/videocache/g;->a(Lcom/danikula/videocache/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->deleteFiles(Ljava/io/File;)V

    goto/16 :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/danikula/videocache/a/f;

    invoke-direct {v0}, Lcom/danikula/videocache/a/f;-><init>()V

    .line 94
    invoke-virtual {v0, p3}, Lcom/danikula/videocache/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".download"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    .line 99
    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".download"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "http"

    .line 63
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "127.0.0.1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".m3u8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/shuyu/gsyvideoplayer/b/d;->b(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/g;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 67
    invoke-virtual {p5, p3}, Lcom/danikula/videocache/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/b/d;->d:Z

    .line 70
    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/b/d;->d:Z

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p5, p0, p3}, Lcom/danikula/videocache/g;->a(Lcom/danikula/videocache/b;Ljava/lang/String;)V

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    const-string p5, "http"

    .line 74
    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, "rtmp"

    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, "rtsp"

    .line 75
    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, ".m3u8"

    invoke-virtual {p3, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 76
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/b/d;->d:Z

    .line 79
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-interface {p2, p1, p3, p4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/shuyu/gsyvideoplayer/b/c$a;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/b/d;->f:Lcom/shuyu/gsyvideoplayer/b/c$a;

    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/b/d;->f:Lcom/shuyu/gsyvideoplayer/b/c$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/b/d;->f:Lcom/shuyu/gsyvideoplayer/b/c$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/b/c$a;->a(Ljava/io/File;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/b/d;->d:Z

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/shuyu/gsyvideoplayer/b/d;->b(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1, p3}, Lcom/danikula/videocache/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    const-string p1, "http"

    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
