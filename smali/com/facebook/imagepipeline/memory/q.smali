.class public Lcom/facebook/imagepipeline/memory/q;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/c;


# instance fields
.field protected final a:Lcom/facebook/imagepipeline/memory/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/aa<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private final d:Lcom/facebook/imagepipeline/memory/ae;

.field private e:I


# direct methods
.method public constructor <init>(IILcom/facebook/imagepipeline/memory/ae;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/facebook/imagepipeline/memory/d;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/d;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/q;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 22
    iput p1, p0, Lcom/facebook/imagepipeline/memory/q;->b:I

    .line 23
    iput p2, p0, Lcom/facebook/imagepipeline/memory/q;->c:I

    .line 24
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/q;->d:Lcom/facebook/imagepipeline/memory/ae;

    return-void
.end method

.method private declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    .line 33
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/q;->e:I

    if-le v0, p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/q;->a:Lcom/facebook/imagepipeline/memory/aa;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/q;->a:Lcom/facebook/imagepipeline/memory/aa;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/aa;->b(Ljava/lang/Object;)I

    move-result v0

    .line 39
    iget v1, p0, Lcom/facebook/imagepipeline/memory/q;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/imagepipeline/memory/q;->e:I

    .line 40
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/q;->d:Lcom/facebook/imagepipeline/memory/ae;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/ae;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    throw p1
.end method

.method private d(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/q;->d:Lcom/facebook/imagepipeline/memory/ae;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/ae;->b(I)V

    .line 63
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/q;->b(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/q;->a:Lcom/facebook/imagepipeline/memory/aa;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/aa;->b(Ljava/lang/Object;)I

    move-result v0

    .line 69
    iget v1, p0, Lcom/facebook/imagepipeline/memory/q;->c:I

    if-gt v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/q;->d:Lcom/facebook/imagepipeline/memory/ae;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/ae;->d(I)V

    .line 71
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/q;->a:Lcom/facebook/imagepipeline/memory/aa;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/aa;->a(Ljava/lang/Object;)V

    .line 72
    iget p1, p0, Lcom/facebook/imagepipeline/memory/q;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/imagepipeline/memory/q;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/q;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public declared-synchronized b(I)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/q;->e:I

    iget v1, p0, Lcom/facebook/imagepipeline/memory/q;->b:I

    if-le v0, v1, :cond_0

    .line 48
    iget v0, p0, Lcom/facebook/imagepipeline/memory/q;->b:I

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/q;->c(I)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/q;->a:Lcom/facebook/imagepipeline/memory/aa;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/aa;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/q;->a:Lcom/facebook/imagepipeline/memory/aa;

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/memory/aa;->b(Ljava/lang/Object;)I

    move-result p1

    .line 53
    iget v1, p0, Lcom/facebook/imagepipeline/memory/q;->e:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/imagepipeline/memory/q;->e:I

    .line 54
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/q;->d:Lcom/facebook/imagepipeline/memory/ae;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/ae;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-object v0

    .line 57
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/q;->d(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    throw p1
.end method
