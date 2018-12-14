.class public Lcom/facebook/imagepipeline/memory/i;
.super Lcom/facebook/imagepipeline/memory/t;
.source "BufferMemoryChunkPool.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/t;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/memory/ae;)V

    return-void
.end method


# virtual methods
.method protected synthetic b(I)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/i;->i(I)Lcom/facebook/imagepipeline/memory/h;

    move-result-object p1

    return-object p1
.end method

.method protected i(I)Lcom/facebook/imagepipeline/memory/h;
    .locals 1

    .line 25
    new-instance v0, Lcom/facebook/imagepipeline/memory/h;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/h;-><init>(I)V

    return-object v0
.end method

.method protected synthetic j(I)Lcom/facebook/imagepipeline/memory/s;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/i;->i(I)Lcom/facebook/imagepipeline/memory/h;

    move-result-object p1

    return-object p1
.end method
