.class public Lcom/facebook/imagepipeline/k/r;
.super Lcom/facebook/imagepipeline/k/ae;
.source "EncodedCacheKeyMultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/ae<",
        "Landroid/util/Pair<",
        "Lcom/facebook/cache/common/b;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lcom/facebook/imagepipeline/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/imagepipeline/c/f;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/f;Lcom/facebook/imagepipeline/k/ak;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/ae;-><init>(Lcom/facebook/imagepipeline/k/ak;)V

    .line 28
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/r;->b:Lcom/facebook/imagepipeline/c/f;

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/k/al;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/al;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/r;->b:Lcom/facebook/imagepipeline/c/f;

    .line 34
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/al;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 35
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/al;->d()Ljava/lang/Object;

    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/c/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/b;

    move-result-object v0

    .line 36
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/al;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/imagepipeline/g/e;
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/facebook/imagepipeline/g/e;->a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/imagepipeline/g/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    .line 19
    check-cast p1, Lcom/facebook/imagepipeline/g/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/r;->a(Lcom/facebook/imagepipeline/g/e;)Lcom/facebook/imagepipeline/g/e;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Lcom/facebook/imagepipeline/k/al;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/r;->a(Lcom/facebook/imagepipeline/k/al;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
