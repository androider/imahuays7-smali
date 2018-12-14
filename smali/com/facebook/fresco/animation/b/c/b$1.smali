.class Lcom/facebook/fresco/animation/b/c/b$1;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendFrameRenderer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/b/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/b/c/b;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/b/c/b;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/facebook/fresco/animation/b/c/b$1;->a:Lcom/facebook/fresco/animation/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/animation/b/c/b$1;->a:Lcom/facebook/fresco/animation/b/c/b;

    invoke-static {v0}, Lcom/facebook/fresco/animation/b/c/b;->a(Lcom/facebook/fresco/animation/b/c/b;)Lcom/facebook/fresco/animation/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/b/b;->a(I)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
