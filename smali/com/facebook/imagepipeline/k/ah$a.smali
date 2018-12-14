.class Lcom/facebook/imagepipeline/k/ah$a;
.super Lcom/facebook/imagepipeline/k/n;
.source "PartialDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/k/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/n<",
        "Lcom/facebook/imagepipeline/g/e;",
        "Lcom/facebook/imagepipeline/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/e;

.field private final b:Lcom/facebook/cache/common/b;

.field private final c:Lcom/facebook/common/memory/g;

.field private final d:Lcom/facebook/common/memory/a;

.field private final e:Lcom/facebook/imagepipeline/g/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/b;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/g/e;)V
    .locals 0
    .param p6    # Lcom/facebook/imagepipeline/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/c/e;",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/g;",
            "Lcom/facebook/common/memory/a;",
            "Lcom/facebook/imagepipeline/g/e;",
            ")V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/n;-><init>(Lcom/facebook/imagepipeline/k/k;)V

    .line 252
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ah$a;->a:Lcom/facebook/imagepipeline/c/e;

    .line 253
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/ah$a;->b:Lcom/facebook/cache/common/b;

    .line 254
    iput-object p4, p0, Lcom/facebook/imagepipeline/k/ah$a;->c:Lcom/facebook/common/memory/g;

    .line 255
    iput-object p5, p0, Lcom/facebook/imagepipeline/k/ah$a;->d:Lcom/facebook/common/memory/a;

    .line 256
    iput-object p6, p0, Lcom/facebook/imagepipeline/k/ah$a;->e:Lcom/facebook/imagepipeline/g/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/b;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/k/ah$1;)V
    .locals 0

    .line 233
    invoke-direct/range {p0 .. p6}, Lcom/facebook/imagepipeline/k/ah$a;-><init>(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/c/e;Lcom/facebook/cache/common/b;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/g/e;)V

    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/common/memory/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/g/e;->m()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/g/e;->l()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    iget v1, v1, Lcom/facebook/imagepipeline/common/a;->a:I

    add-int/2addr v0, v1

    .line 294
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/ah$a;->c:Lcom/facebook/common/memory/g;

    .line 295
    invoke-interface {v1, v0}, Lcom/facebook/common/memory/g;->a(I)Lcom/facebook/common/memory/i;

    move-result-object v0

    .line 298
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/g/e;->l()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    iget v1, v1, Lcom/facebook/imagepipeline/common/a;->a:I

    .line 299
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/k/ah$a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 300
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/g/e;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/g/e;->m()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/imagepipeline/k/ah$a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method private a(Lcom/facebook/common/memory/i;)V
    .locals 4

    .line 332
    invoke-virtual {p1}, Lcom/facebook/common/memory/i;->a()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 335
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/g/e;

    invoke-direct {v1, p1}, Lcom/facebook/imagepipeline/g/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/g/e;->n()V

    .line 337
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ah$a;->d()Lcom/facebook/imagepipeline/k/k;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/k;->b(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    invoke-static {v1}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V

    .line 340
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 339
    :goto_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/g/e;->d(Lcom/facebook/imagepipeline/g/e;)V

    .line 340
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 341
    throw v0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah$a;->d:Lcom/facebook/common/memory/a;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lcom/facebook/common/memory/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v2, p3

    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 311
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    if-lez v4, :cond_0

    .line 313
    invoke-virtual {p2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 318
    iget-object p2, p0, Lcom/facebook/imagepipeline/k/ah$a;->d:Lcom/facebook/common/memory/a;

    invoke-interface {p2, v0}, Lcom/facebook/common/memory/a;->a(Ljava/lang/Object;)V

    .line 319
    throw p1

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/ah$a;->d:Lcom/facebook/common/memory/a;

    invoke-interface {p1, v0}, Lcom/facebook/common/memory/a;->a(Ljava/lang/Object;)V

    if-lez v2, :cond_2

    .line 322
    new-instance p1, Ljava/io/IOException;

    const/4 p2, 0x0

    check-cast p2, Ljava/util/Locale;

    const-string v0, "Failed to read %d bytes - finished %d short"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 325
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v3

    const/4 p3, 0x1

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p3

    .line 322
    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/g/e;I)V
    .locals 2

    .line 261
    invoke-static {p2}, Lcom/facebook/imagepipeline/k/ah$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah$a;->e:Lcom/facebook/imagepipeline/g/e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->l()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    :try_start_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/k/ah$a;->e:Lcom/facebook/imagepipeline/g/e;

    .line 269
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/k/ah$a;->a(Lcom/facebook/imagepipeline/g/e;Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/common/memory/i;

    move-result-object p2

    .line 270
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/ah$a;->a(Lcom/facebook/common/memory/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->close()V

    .line 277
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/ah$a;->e:Lcom/facebook/imagepipeline/g/e;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "PartialDiskCacheProducer"

    const-string v1, "Error while merging image data"

    .line 273
    invoke-static {v0, v1, p2}, Lcom/facebook/common/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ah$a;->d()Lcom/facebook/imagepipeline/k/k;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/k/k;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    :goto_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/ah$a;->a:Lcom/facebook/imagepipeline/c/e;

    iget-object p2, p0, Lcom/facebook/imagepipeline/k/ah$a;->b:Lcom/facebook/cache/common/b;

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/b;)Lbolts/g;

    goto :goto_3

    .line 276
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->close()V

    .line 277
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/ah$a;->e:Lcom/facebook/imagepipeline/g/e;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->close()V

    .line 278
    throw p2

    :cond_1
    const/16 v0, 0x8

    .line 281
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/k/ah$a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-static {p2}, Lcom/facebook/imagepipeline/k/ah$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->e()Lcom/facebook/d/c;

    move-result-object v0

    sget-object v1, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    if-eq v0, v1, :cond_2

    .line 284
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ah$a;->a:Lcom/facebook/imagepipeline/c/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/ah$a;->b:Lcom/facebook/cache/common/b;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/c/e;->a(Lcom/facebook/cache/common/b;Lcom/facebook/imagepipeline/g/e;)V

    .line 285
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ah$a;->d()Lcom/facebook/imagepipeline/k/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/k;->b(Ljava/lang/Object;I)V

    goto :goto_3

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ah$a;->d()Lcom/facebook/imagepipeline/k/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/k;->b(Ljava/lang/Object;I)V

    :goto_3
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 233
    check-cast p1, Lcom/facebook/imagepipeline/g/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/ah$a;->a(Lcom/facebook/imagepipeline/g/e;I)V

    return-void
.end method
