.class public Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

.field private final b:Lcom/google/zxing/d;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->c:Z

    .line 47
    new-instance v0, Lcom/google/zxing/d;

    invoke-direct {v0}, Lcom/google/zxing/d;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->b:Lcom/google/zxing/d;

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->b:Lcom/google/zxing/d;

    invoke-virtual {v0, p2}, Lcom/google/zxing/d;->a(Ljava/util/Map;)V

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    return-void
.end method

.method private static a(Lcom/google/zxing/e;Landroid/os/Bundle;)V
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/e;->f()[I

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/google/zxing/e;->g()I

    move-result v3

    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/e;->h()I

    move-result v4

    .line 56
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    move v2, v3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 57
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string p0, "barcode_bitmap"

    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method private b([BII)V
    .locals 5

    .line 87
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->f()Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->f()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 90
    array-length p3, p1

    new-array p3, p3, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    :goto_0
    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 92
    :goto_1
    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    if-ge v2, v3, :cond_0

    .line 93
    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v3, v2

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int v4, v4, v1

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    aput-byte v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget p1, p2, Landroid/hardware/Camera$Size;->width:I

    .line 98
    iget v0, p2, Landroid/hardware/Camera$Size;->height:I

    iput v0, p2, Landroid/hardware/Camera$Size;->width:I

    .line 99
    iput p1, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 p1, 0x0

    .line 102
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, p3, v0, p2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->a([BII)Lcom/google/zxing/e;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 104
    new-instance p3, Lcom/google/zxing/b;

    new-instance v0, Lcom/google/zxing/common/i;

    invoke-direct {v0, p2}, Lcom/google/zxing/common/i;-><init>(Lcom/google/zxing/c;)V

    invoke-direct {p3, v0}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->b:Lcom/google/zxing/d;

    invoke-virtual {v0, p3}, Lcom/google/zxing/d;->a(Lcom/google/zxing/b;)Lcom/google/zxing/g;

    move-result-object p3
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->b:Lcom/google/zxing/d;

    invoke-virtual {p1}, Lcom/google/zxing/d;->a()V

    move-object p1, p3

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->b:Lcom/google/zxing/d;

    invoke-virtual {p2}, Lcom/google/zxing/d;->a()V

    throw p1

    :catch_0
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->b:Lcom/google/zxing/d;

    invoke-virtual {p3}, Lcom/google/zxing/d;->a()V

    .line 114
    :cond_2
    :goto_2
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->e()Landroid/os/Handler;

    move-result-object p3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_4

    .line 118
    sget v0, Lcom/mh/movie/core/R$id;->decode_succeeded:I

    invoke-static {p3, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 119
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 120
    invoke-static {p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->a(Lcom/google/zxing/e;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    .line 126
    sget p1, Lcom/mh/movie/core/R$id;->decode_failed:I

    invoke-static {p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public a([BII)Lcom/google/zxing/e;
    .locals 10

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->g()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_0
    new-instance v9, Lcom/google/zxing/e;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/e;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/mh/movie/core/R$id;->decode:I

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->b([BII)V

    goto :goto_0

    .line 70
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/mh/movie/core/R$id;->quit:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/b;->c:Z

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_2
    :goto_0
    return-void
.end method
