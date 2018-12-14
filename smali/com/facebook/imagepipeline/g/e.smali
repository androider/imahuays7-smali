.class public Lcom/facebook/imagepipeline/g/e;
.super Ljava/lang/Object;
.source "EncodedImage.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/d/c;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/graphics/ColorSpace;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Ljava/io/FileInputStream;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/g/e;->c:Lcom/facebook/d/c;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    .line 65
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    .line 66
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->g:I

    const/4 v1, 0x1

    .line 67
    iput v1, p0, Lcom/facebook/imagepipeline/g/e;->h:I

    .line 68
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->i:I

    .line 79
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    .line 81
    iput-object p1, p0, Lcom/facebook/imagepipeline/g/e;->b:Lcom/facebook/common/internal/j;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/internal/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/g/e;-><init>(Lcom/facebook/common/internal/j;)V

    .line 86
    iput p2, p0, Lcom/facebook/imagepipeline/g/e;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/g/e;->c:Lcom/facebook/d/c;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    .line 65
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    .line 66
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->g:I

    const/4 v1, 0x1

    .line 67
    iput v1, p0, Lcom/facebook/imagepipeline/g/e;->h:I

    .line 68
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->i:I

    .line 73
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 74
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->b()Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/facebook/imagepipeline/g/e;->b:Lcom/facebook/common/internal/j;

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/imagepipeline/g/e;
    .locals 0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->a()Lcom/facebook/imagepipeline/g/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/facebook/imagepipeline/g/e;)Z
    .locals 1

    .line 431
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/facebook/imagepipeline/g/e;->g:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lcom/facebook/imagepipeline/g/e;)V
    .locals 0
    .param p0    # Lcom/facebook/imagepipeline/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->close()V

    :cond_0
    return-void
.end method

.method public static e(Lcom/facebook/imagepipeline/g/e;)Z
    .locals 0
    .param p0    # Lcom/facebook/imagepipeline/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private o()V
    .locals 1

    .line 340
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->g:I

    if-gez v0, :cond_1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->n()V

    :cond_1
    return-void
.end method

.method private p()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/f;->a(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    .line 380
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/g/e;->g:I

    :cond_0
    return-object v0
.end method

.method private q()Lcom/facebook/imageutils/b;
    .locals 4

    .line 390
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    :try_start_1
    invoke-static {v0}, Lcom/facebook/imageutils/a;->b(Ljava/io/InputStream;)Lcom/facebook/imageutils/b;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->b()Landroid/graphics/ColorSpace;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/imagepipeline/g/e;->k:Landroid/graphics/ColorSpace;

    .line 393
    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->a()Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    .line 396
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/facebook/imagepipeline/g/e;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 401
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 406
    :catch_1
    :cond_2
    throw v1
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/g/e;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->b:Lcom/facebook/common/internal/j;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/facebook/imagepipeline/g/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/g/e;->b:Lcom/facebook/common/internal/j;

    iget v2, p0, Lcom/facebook/imagepipeline/g/e;->i:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/g/e;-><init>(Lcom/facebook/common/internal/j;I)V

    goto :goto_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    .line 104
    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :cond_1
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/g/e;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/g/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/g/e;->b(Lcom/facebook/imagepipeline/g/e;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v1

    .line 109
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 110
    throw v1
.end method

.method public a(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/facebook/imagepipeline/g/e;->g:I

    return-void
.end method

.method public a(Lcom/facebook/d/c;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/facebook/imagepipeline/g/e;->c:Lcom/facebook/d/c;

    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/common/a;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 213
    iput-object p1, p0, Lcom/facebook/imagepipeline/g/e;->j:Lcom/facebook/imagepipeline/common/a;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    return-void
.end method

.method public b(Lcom/facebook/imagepipeline/g/e;)V
    .locals 1

    .line 416
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->e()Lcom/facebook/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/g/e;->c:Lcom/facebook/d/c;

    .line 417
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->h()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    .line 418
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->i()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->g:I

    .line 419
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    .line 420
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->g()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    .line 421
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->k()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->h:I

    .line 422
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->m()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->i:I

    .line 423
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->l()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/g/e;->j:Lcom/facebook/imagepipeline/common/a;

    .line 424
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->j()Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/g/e;->k:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->b:Lcom/facebook/common/internal/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    return-void
.end method

.method public close()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method public d()Ljava/io/InputStream;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->b:Lcom/facebook/common/internal/j;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->b:Lcom/facebook/common/internal/j;

    invoke-interface {v0}, Lcom/facebook/common/internal/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    .line 154
    invoke-static {v0}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    new-instance v1, Lcom/facebook/common/memory/h;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-direct {v1, v2}, Lcom/facebook/common/memory/h;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 160
    throw v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    return-void
.end method

.method public e()Lcom/facebook/d/c;
    .locals 1

    .line 220
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/e;->o()V

    .line 221
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->c:Lcom/facebook/d/c;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/facebook/imagepipeline/g/e;->h:I

    return-void
.end method

.method public f()I
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/e;->o()V

    .line 230
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    return v0
.end method

.method public f(I)Z
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->c:Lcom/facebook/d/c;

    sget-object v1, Lcom/facebook/d/b;->a:Lcom/facebook/d/c;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->b:Lcom/facebook/common/internal/j;

    if-eqz v0, :cond_1

    return v2

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    add-int/lit8 v1, p1, -0x2

    .line 292
    invoke-interface {v0, v1}, Lcom/facebook/common/memory/PooledByteBuffer;->a(I)B

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    sub-int/2addr p1, v2

    .line 293
    invoke-interface {v0, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->a(I)B

    move-result p1

    const/16 v0, -0x27

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public g()I
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/e;->o()V

    .line 236
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    return v0
.end method

.method public g(I)Ljava/lang/String;
    .locals 7

    .line 315
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->c()Lcom/facebook/common/references/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->m()I

    move-result v1

    .line 320
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 321
    new-array v1, p1, [B

    .line 323
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    if-nez v2, :cond_1

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    return-object p1

    :cond_1
    const/4 v3, 0x0

    .line 327
    :try_start_1
    invoke-interface {v2, v3, v1, v3, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->a(I[BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 332
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v4, v1, v2

    const-string v5, "%02X"

    const/4 v6, 0x1

    .line 333
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 329
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 330
    throw p1
.end method

.method public h()I
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/e;->o()V

    .line 242
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/e;->o()V

    .line 250
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->g:I

    return v0
.end method

.method public j()Landroid/graphics/ColorSpace;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 259
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/e;->o()V

    .line 260
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->k:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->h:I

    return v0
.end method

.method public l()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->j:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/e;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->a()I

    move-result v0

    return v0

    .line 306
    :cond_0
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->i:I

    return v0
.end method

.method public n()V
    .locals 4

    .line 348
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lcom/facebook/d/d;->c(Ljava/io/InputStream;)Lcom/facebook/d/c;

    move-result-object v0

    .line 349
    iput-object v0, p0, Lcom/facebook/imagepipeline/g/e;->c:Lcom/facebook/d/c;

    .line 353
    invoke-static {v0}, Lcom/facebook/d/b;->a(Lcom/facebook/d/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/e;->p()Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/g/e;->q()Lcom/facebook/imageutils/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imageutils/b;->a()Landroid/util/Pair;

    move-result-object v1

    .line 358
    :goto_0
    sget-object v2, Lcom/facebook/d/b;->a:Lcom/facebook/d/c;

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/c;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    .line 362
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    invoke-static {v0}, Lcom/facebook/imageutils/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    goto :goto_1

    .line 364
    :cond_1
    sget-object v1, Lcom/facebook/d/b;->k:Lcom/facebook/d/c;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    if-ne v0, v3, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/HeifExifUtil;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    .line 367
    iget v0, p0, Lcom/facebook/imagepipeline/g/e;->e:I

    invoke-static {v0}, Lcom/facebook/imageutils/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 369
    iput v0, p0, Lcom/facebook/imagepipeline/g/e;->d:I

    :cond_3
    :goto_1
    return-void
.end method
