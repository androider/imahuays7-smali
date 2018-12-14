.class public Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;
.super Ljava/lang/Object;
.source "GifCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;
    }
.end annotation


# instance fields
.field public isGeneraGif:Z

.field private mDelay:I

.field private mFrequencyCount:I

.field private mGSYVideoGifSaveListener:Lcom/shuyu/gsyvideoplayer/c/c;

.field private mPicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private mSampleSize:I

.field private mSaveShotBitmapSuccess:Z

.field private mScaleSize:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

.field private mTmpPath:Ljava/io/File;

.field timeHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;Lcom/shuyu/gsyvideoplayer/c/c;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;-><init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;Lcom/shuyu/gsyvideoplayer/c/c;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;Lcom/shuyu/gsyvideoplayer/c/c;IIII)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    .line 37
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimer:Ljava/util/Timer;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mDelay:I

    const/4 v1, 0x2

    .line 49
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSampleSize:I

    const/4 v1, 0x5

    .line 52
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mScaleSize:I

    const/16 v1, 0x32

    .line 55
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mFrequencyCount:I

    .line 58
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->isGeneraGif:Z

    .line 261
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$3;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$3;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->timeHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 73
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mGSYVideoGifSaveListener:Lcom/shuyu/gsyvideoplayer/c/c;

    .line 74
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mDelay:I

    .line 75
    iput p4, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSampleSize:I

    .line 76
    iput p5, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mScaleSize:I

    .line 77
    iput p6, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mFrequencyCount:I

    return-void
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mDelay:I

    return p0
.end method

.method static synthetic access$300(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSampleSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mScaleSize:I

    return p0
.end method

.method static synthetic access$500(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Lcom/shuyu/gsyvideoplayer/c/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mGSYVideoGifSaveListener:Lcom/shuyu/gsyvideoplayer/c/c;

    return-object p0
.end method

.method static synthetic access$600(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    return p0
.end method

.method static synthetic access$602(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    return p1
.end method

.method static synthetic access$700(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->startSaveBitmap()V

    return-void
.end method

.method private startSaveBitmap()V
    .locals 5

    .line 147
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTmpPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MH_G_Cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/c/f;)V

    return-void
.end method


# virtual methods
.method public cancelGifCreate()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->cancelTask()V

    .line 134
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public cancelTask()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->cancel()Z

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    :cond_0
    return-void
.end method

.method public createGif(Ljava/io/File;Ljava/util/List;IIILcom/shuyu/gsyvideoplayer/c/c;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/shuyu/gsyvideoplayer/c/c;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    .line 175
    iget-boolean v5, v1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->isGeneraGif:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 177
    iput-boolean v5, v1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->isGeneraGif:Z

    .line 179
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    new-instance v7, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;

    invoke-direct {v7}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;-><init>()V

    .line 181
    invoke-virtual {v7, v6}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    const/4 v8, 0x0

    .line 182
    invoke-virtual {v7, v8}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->setRepeat(I)V

    move/from16 v9, p3

    .line 186
    :try_start_0
    invoke-virtual {v7, v9}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->setDelay(I)V

    .line 188
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    .line 192
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v12, 0x1e

    if-le v9, v12, :cond_1

    .line 195
    :try_start_1
    rem-int/lit8 v12, v10, 0x2

    if-nez v12, :cond_1

    .line 196
    invoke-static {v11}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->deleteFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v13, p4

    move-object/from16 v17, v6

    move/from16 v16, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v17, v6

    goto :goto_3

    .line 201
    :cond_1
    :try_start_2
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move/from16 v13, p4

    .line 202
    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 203
    iput-boolean v5, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 206
    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v14, v14

    move/from16 v5, p5

    move/from16 v16, v9

    int-to-double v8, v5

    div-double/2addr v14, v8

    .line 207
    iget v5, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v6

    int-to-double v5, v5

    div-double/2addr v5, v8

    const/4 v8, 0x0

    .line 208
    :try_start_3
    iput-boolean v8, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    double-to-int v9, v14

    double-to-int v5, v5

    .line 210
    invoke-static {v8, v9, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 211
    invoke-virtual {v7, v5}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z

    .line 212
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v5, v10, 0x1

    .line 214
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/shuyu/gsyvideoplayer/c/c;->a(II)V

    .line 217
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->deleteFile(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    move-object/from16 v6, v17

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v17, v6

    .line 220
    invoke-virtual {v7}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->finish()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v17, v6

    :goto_2
    move-object v3, v0

    .line 222
    :goto_3
    invoke-static {v3}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 226
    :goto_4
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v17

    .line 227
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 228
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 229
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 230
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 231
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v3, 0x0

    .line 238
    iput-boolean v3, v1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->isGeneraGif:Z

    const/4 v3, 0x1

    .line 239
    invoke-interface {v4, v3, v2}, Lcom/shuyu/gsyvideoplayer/c/c;->a(ZLjava/io/File;)V

    return-void

    :catch_3
    move-exception v0

    move-object v3, v0

    const/4 v5, 0x0

    .line 233
    iput-boolean v5, v1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->isGeneraGif:Z

    .line 234
    invoke-static {v3}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 235
    invoke-interface {v4, v5, v2}, Lcom/shuyu/gsyvideoplayer/c/c;->a(ZLjava/io/File;)V

    return-void
.end method

.method public startGif(Ljava/io/File;)V
    .locals 7

    .line 86
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTmpPath:Ljava/io/File;

    .line 87
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->cancelTask()V

    .line 88
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 89
    new-instance p1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    .line 91
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mFrequencyCount:I

    int-to-long v5, p1

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->isGeneraGif:Z

    return-void
.end method

.method public stopGif(Ljava/io/File;)V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->cancelTask()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
