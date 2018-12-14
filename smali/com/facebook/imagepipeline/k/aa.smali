.class public abstract Lcom/facebook/imagepipeline/k/aa;
.super Ljava/lang/Object;
.source "LocalFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "Lcom/facebook/imagepipeline/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/common/memory/g;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aa;->a:Ljava/util/concurrent/Executor;

    .line 32
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/aa;->b:Lcom/facebook/common/memory/g;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/g/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/g/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 85
    :try_start_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/k/aa;->b:Lcom/facebook/common/memory/g;

    invoke-interface {p2, p1}, Lcom/facebook/common/memory/g;->a(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p2

    :goto_0
    move-object v0, p2

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/aa;->b:Lcom/facebook/common/memory/g;

    invoke-interface {v1, p1, p2}, Lcom/facebook/common/memory/g;->a(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p2

    goto :goto_0

    .line 89
    :goto_1
    new-instance p2, Lcom/facebook/imagepipeline/g/e;

    invoke-direct {p2, v0}, Lcom/facebook/imagepipeline/g/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {p1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 92
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    return-object p2

    .line 91
    :goto_2
    invoke-static {p1}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 92
    invoke-static {v0}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 93
    throw p2
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v7

    .line 41
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    .line 43
    new-instance v9, Lcom/facebook/imagepipeline/k/aa$1;

    .line 47
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/aa;->a()Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/k/aa$1;-><init>(Lcom/facebook/imagepipeline/k/aa;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;)V

    .line 68
    new-instance p1, Lcom/facebook/imagepipeline/k/aa$2;

    invoke-direct {p1, p0, v9}, Lcom/facebook/imagepipeline/k/aa$2;-><init>(Lcom/facebook/imagepipeline/k/aa;Lcom/facebook/imagepipeline/k/ar;)V

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/k/al;->a(Lcom/facebook/imagepipeline/k/am;)V

    .line 75
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/aa;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/g/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/aa;->a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/g/e;

    move-result-object p1

    return-object p1
.end method
