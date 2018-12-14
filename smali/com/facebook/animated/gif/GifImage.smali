.class public Lcom/facebook/animated/gif/GifImage;
.super Ljava/lang/Object;
.source "GifImage.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/a/c;
.implements Lcom/facebook/imagepipeline/animated/base/b;


# annotations
.annotation build Lcom/facebook/common/internal/d;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static volatile a:Z


# instance fields
.field private mNativeContext:J
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Lcom/facebook/animated/gif/GifImage;->mNativeContext:J

    return-void
.end method

.method public static a(JI)Lcom/facebook/animated/gif/GifImage;
    .locals 3

    .line 77
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->h()V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 79
    invoke-static {p0, p1, p2}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromNativeMemory(JI)Lcom/facebook/animated/gif/GifImage;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/gif/GifImage;
    .locals 0

    .line 70
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->h()V

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 73
    invoke-static {p0}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/gif/GifImage;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;
    .locals 1

    if-nez p0, :cond_0

    .line 193
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 195
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 197
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 199
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0

    .line 201
    :cond_3
    sget-object p0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    return-object p0
.end method

.method private static declared-synchronized h()V
    .locals 2

    const-class v0, Lcom/facebook/animated/gif/GifImage;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-boolean v1, Lcom/facebook/animated/gif/GifImage;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 41
    sput-boolean v1, Lcom/facebook/animated/gif/GifImage;->a:Z

    const-string v1, "gifimage"

    .line 42
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0

    throw v1
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private static native nativeCreateFromNativeMemory(JI)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeDispose()V
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeFinalize()V
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeGetDuration()I
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeGetFrameCount()I
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeGetFrameDurations()[I
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeGetHeight()I
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeGetLoopCount()I
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeGetSizeInBytes()I
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method

.method private native nativeGetWidth()I
    .annotation build Lcom/facebook/common/internal/d;
    .end annotation
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/facebook/animated/gif/GifFrame;
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 10

    .line 176
    invoke-virtual {p0, p1}, Lcom/facebook/animated/gif/GifImage;->a(I)Lcom/facebook/animated/gif/GifFrame;

    move-result-object v0

    .line 178
    :try_start_0
    new-instance v9, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 180
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->d()I

    move-result v3

    .line 181
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->e()I

    move-result v4

    .line 182
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->b()I

    move-result v5

    .line 183
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->c()I

    move-result v6

    sget-object v7, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->BLEND_WITH_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    .line 185
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->f()I

    move-result v1

    invoke-static {v1}, Lcom/facebook/animated/gif/GifImage;->d(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    move-result-object v8

    move-object v1, v9

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;-><init>(IIIIILcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->a()V

    return-object v9

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/animated/gif/GifFrame;->a()V

    .line 188
    throw p1
.end method

.method public b(JI)Lcom/facebook/imagepipeline/animated/base/b;
    .locals 0

    .line 84
    invoke-static {p1, p2, p3}, Lcom/facebook/animated/gif/GifImage;->a(JI)Lcom/facebook/animated/gif/GifImage;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/nio/ByteBuffer;)Lcom/facebook/imagepipeline/animated/base/b;
    .locals 0

    .line 89
    invoke-static {p1}, Lcom/facebook/animated/gif/GifImage;->a(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/gif/GifImage;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrameCount()I

    move-result v0

    return v0
.end method

.method public synthetic c(I)Lcom/facebook/imagepipeline/animated/base/c;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/animated/gif/GifImage;->a(I)Lcom/facebook/animated/gif/GifFrame;

    move-result-object p1

    return-object p1
.end method

.method public d()[I
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrameDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetLoopCount()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    add-int/2addr v0, v1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeFinalize()V

    return-void
.end method

.method public g()I
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetSizeInBytes()I

    move-result v0

    return v0
.end method
