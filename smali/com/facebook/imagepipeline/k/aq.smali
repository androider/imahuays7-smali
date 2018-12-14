.class public Lcom/facebook/imagepipeline/k/aq;
.super Lcom/facebook/imagepipeline/k/d;
.source "SettableProducerContext.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/k/al;)V
    .locals 9

    .line 35
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v3

    .line 37
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->d()Ljava/lang/Object;

    move-result-object v4

    .line 38
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 39
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->f()Z

    move-result v6

    .line 40
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->h()Z

    move-result v7

    .line 41
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->g()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    .line 33
    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/k/aq;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/k/an;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/k/an;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p8}, Lcom/facebook/imagepipeline/k/d;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/k/an;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    return-void
.end method
