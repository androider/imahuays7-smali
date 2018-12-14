.class Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d()Lcom/facebook/imagepipeline/animated/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 2

    .line 153
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/a;

    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$5;->a:Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 154
    invoke-static {v1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lcom/facebook/imagepipeline/animated/c/a;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/animated/b/a;-><init>(Lcom/facebook/imagepipeline/animated/c/a;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)V

    return-object v0
.end method
