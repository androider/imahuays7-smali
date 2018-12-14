.class public Lcom/facebook/imagepipeline/animated/b/a;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/a;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/c/a;

.field private final b:Lcom/facebook/imagepipeline/animated/base/d;

.field private final c:Lcom/facebook/imagepipeline/animated/base/b;

.field private final d:Landroid/graphics/Rect;

.field private final e:[I

.field private final f:[I

.field private final g:I

.field private final h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Rect;

.field private k:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/c/a;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->i:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->j:Landroid/graphics/Rect;

    .line 49
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->a:Lcom/facebook/imagepipeline/animated/c/a;

    .line 50
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->b:Lcom/facebook/imagepipeline/animated/base/d;

    .line 51
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/animated/base/d;->a()Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    .line 52
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/b;->d()[I

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->e:[I

    .line 53
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->a:Lcom/facebook/imagepipeline/animated/c/a;

    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->e:[I

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/animated/c/a;->a([I)V

    .line 54
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->a:Lcom/facebook/imagepipeline/animated/c/a;

    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->e:[I

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/animated/c/a;->b([I)I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->g:I

    .line 55
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->a:Lcom/facebook/imagepipeline/animated/c/a;

    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->e:[I

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/animated/c/a;->c([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->f:[I

    .line 56
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-static {p1, p3}, Lcom/facebook/imagepipeline/animated/b/a;->a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->d:Landroid/graphics/Rect;

    .line 57
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/b;->c()I

    move-result p1

    new-array p1, p1, [Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    const/4 p1, 0x0

    .line 58
    :goto_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/b;->c()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    iget-object p3, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {p3, p1}, Lcom/facebook/imagepipeline/animated/base/b;->b(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/b;->a()I

    move-result v1

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/b;->b()I

    move-result p0

    invoke-direct {p1, v0, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 67
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/b;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/b;->b()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v1, v0, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private declared-synchronized a(II)V
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/b/a;->g()V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 195
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/c;)V
    .locals 8

    .line 201
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/b;->a()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 202
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/animated/base/b;->b()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 204
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/c;->b()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 205
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/c;->c()I

    move-result v5

    int-to-double v5, v5

    mul-double v5, v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    .line 206
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/c;->d()I

    move-result v6

    int-to-double v6, v6

    mul-double v6, v6, v0

    double-to-int v0, v6

    .line 207
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/c;->e()I

    move-result v1

    int-to-double v6, v1

    mul-double v6, v6, v2

    double-to-int v1, v6

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 211
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 213
    invoke-direct {p0, v2, v3}, Lcom/facebook/imagepipeline/animated/b/a;->a(II)V

    .line 214
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    invoke-interface {p2, v4, v5, v6}, Lcom/facebook/imagepipeline/animated/base/c;->a(IILandroid/graphics/Bitmap;)V

    .line 216
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->i:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 217
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->j:Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/a;->j:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/c;)V
    .locals 5

    .line 224
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/c;->b()I

    move-result v0

    .line 225
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/c;->c()I

    move-result v1

    .line 226
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/c;->d()I

    move-result v2

    .line 227
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/c;->e()I

    move-result v3

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/animated/b/a;->a(II)V

    .line 230
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    invoke-interface {p2, v0, v1, v4}, Lcom/facebook/imagepipeline/animated/base/c;->a(IILandroid/graphics/Bitmap;)V

    .line 233
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->i:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 234
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->j:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, v2

    int-to-float v0, v3

    .line 237
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 238
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/a;->j:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->k:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 248
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->c()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/animated/b/a;->a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 147
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/a;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/b/a;->a:Lcom/facebook/imagepipeline/animated/c/a;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/b/a;->b:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/animated/b/a;-><init>(Lcom/facebook/imagepipeline/animated/c/a;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Canvas;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/b;->c(I)Lcom/facebook/imagepipeline/animated/base/c;

    move-result-object p1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/animated/b/a;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/c;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/animated/b/a;->b(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/c;->a()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/c;->a()V

    .line 184
    throw p2
.end method

.method public b()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->e()I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->e:[I

    aget p1, v0, p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->a()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->c:Lcom/facebook/imagepipeline/animated/base/b;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/b;->b()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/b/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method
