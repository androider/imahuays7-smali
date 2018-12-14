.class Lcom/facebook/imagepipeline/memory/o$a;
.super Lcom/facebook/imagepipeline/memory/p;
.source "FlexByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/p;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V

    return-void
.end method


# virtual methods
.method g(I)Lcom/facebook/imagepipeline/memory/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/e<",
            "[B>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/facebook/imagepipeline/memory/z;

    .line 73
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/o$a;->d(I)I

    move-result p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/o$a;->b:Lcom/facebook/imagepipeline/memory/ad;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/ad;->g:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/z;-><init>(III)V

    return-object v0
.end method
