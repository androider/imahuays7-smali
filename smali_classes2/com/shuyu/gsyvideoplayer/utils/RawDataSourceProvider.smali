.class public Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;
.super Ljava/lang/Object;
.source "RawDataSourceProvider.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# instance fields
.field private mDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mMediaBytes:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;
    .locals 1

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 83
    new-instance p1, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;

    invoke-direct {p1, p0}, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;-><init>(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 86
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private readBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 70
    new-array v1, v1, [B

    .line 73
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 74
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 63
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    return-void
.end method

.method public getSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    .line 48
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 50
    invoke-direct {p0, v2}, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    :cond_0
    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    add-long v2, p1, v0

    .line 26
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v4, v2, v0

    const/4 v0, -0x1

    if-ltz v4, :cond_0

    return v0

    :cond_0
    int-to-long v1, p5

    add-long v3, p1, v1

    .line 31
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    array-length v1, v1

    int-to-long v1, v1

    cmp-long v5, v3, v1

    if-gez v5, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    iget-object p5, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    array-length p5, p5

    int-to-long v1, p5

    sub-long v3, v1, p1

    long-to-int p5, v3

    .line 35
    array-length v1, p3

    if-le p5, v1, :cond_2

    .line 36
    array-length p5, p3

    :cond_2
    add-int/2addr p5, v0

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    long-to-int p1, p1

    invoke-static {v0, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p5
.end method
