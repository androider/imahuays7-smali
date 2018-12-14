.class public Lcom/facebook/imagepipeline/b/d;
.super Ljava/lang/Object;
.source "HoneycombBitmapCreator.java"

# interfaces
.implements Lcom/facebook/common/f/a;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/b/b;

.field private final b:Lcom/facebook/imagepipeline/memory/o;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/ac;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/ac;->c()Lcom/facebook/imagepipeline/memory/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/b/d;->b:Lcom/facebook/imagepipeline/memory/o;

    .line 32
    new-instance v0, Lcom/facebook/imagepipeline/b/b;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/ac;->f()Lcom/facebook/common/memory/g;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/b/b;-><init>(Lcom/facebook/common/memory/g;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/b/d;->a:Lcom/facebook/imagepipeline/b/b;

    return-void
.end method

.method private static a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 74
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 76
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 78
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 80
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 82
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xb

    if-lt p0, p1, :cond_0

    .line 84
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/facebook/imagepipeline/b/d;->a:Lcom/facebook/imagepipeline/b/b;

    int-to-short p1, p1

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/b/b;->a(SS)Lcom/facebook/common/references/a;

    move-result-object p1

    const/4 p2, 0x0

    .line 45
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/g/e;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/g/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    :try_start_1
    sget-object v1, Lcom/facebook/d/b;->a:Lcom/facebook/d/c;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/d/c;)V

    .line 48
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/g/e;->k()I

    move-result v1

    .line 47
    invoke-static {v1, p3}, Lcom/facebook/imagepipeline/b/d;->a(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p3

    .line 50
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->a()I

    move-result v1

    .line 51
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 52
    iget-object v3, p0, Lcom/facebook/imagepipeline/b/d;->b:Lcom/facebook/imagepipeline/memory/o;

    add-int/lit8 v4, v1, 0x2

    .line 53
    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/memory/o;->a(I)Lcom/facebook/common/references/a;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :try_start_2
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const/4 v4, 0x0

    .line 55
    invoke-interface {v2, v4, p2, v4, v1}, Lcom/facebook/common/memory/PooledByteBuffer;->a(I[BII)I

    .line 56
    invoke-static {p2, v4, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x1

    .line 61
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 62
    invoke-virtual {p2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {v3}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 66
    invoke-static {v0}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V

    .line 67
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    move-object p3, p2

    move-object p2, v3

    goto :goto_0

    :catchall_1
    move-exception p3

    goto :goto_0

    :catchall_2
    move-exception p3

    move-object v0, p2

    .line 65
    :goto_0
    invoke-static {p2}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 66
    invoke-static {v0}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V

    .line 67
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 68
    throw p3
.end method
