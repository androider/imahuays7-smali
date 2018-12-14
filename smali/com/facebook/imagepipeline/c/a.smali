.class public Lcom/facebook/imagepipeline/c/a;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/common/internal/j;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/c/h$a;)Lcom/facebook/imagepipeline/c/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/imagepipeline/c/q;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            "Lcom/facebook/imagepipeline/c/h$a;",
            ")",
            "Lcom/facebook/imagepipeline/c/h<",
            "Lcom/facebook/cache/common/b;",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/facebook/imagepipeline/c/a$1;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/a$1;-><init>()V

    .line 39
    new-instance v1, Lcom/facebook/imagepipeline/c/h;

    invoke-direct {v1, v0, p2, p0}, Lcom/facebook/imagepipeline/c/h;-><init>(Lcom/facebook/imagepipeline/c/v;Lcom/facebook/imagepipeline/c/h$a;Lcom/facebook/common/internal/j;)V

    .line 42
    invoke-interface {p1, v1}, Lcom/facebook/common/memory/c;->a(Lcom/facebook/common/memory/b;)V

    return-object v1
.end method
