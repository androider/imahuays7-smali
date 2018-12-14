.class public Lcom/facebook/imagepipeline/c/l;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/common/internal/j;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/c/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            ")",
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/facebook/imagepipeline/c/l$1;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/l$1;-><init>()V

    .line 29
    new-instance v1, Lcom/facebook/imagepipeline/c/s;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/c/s;-><init>()V

    .line 31
    new-instance v2, Lcom/facebook/imagepipeline/c/h;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/imagepipeline/c/h;-><init>(Lcom/facebook/imagepipeline/c/v;Lcom/facebook/imagepipeline/c/h$a;Lcom/facebook/common/internal/j;)V

    .line 34
    invoke-interface {p1, v2}, Lcom/facebook/common/memory/c;->a(Lcom/facebook/common/memory/b;)V

    return-object v2
.end method
