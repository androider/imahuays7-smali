.class Lcom/facebook/imagepipeline/animated/a/e$2;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/a/e;->a(Lcom/facebook/imagepipeline/animated/base/b;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/facebook/imagepipeline/animated/a/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/a/e;Ljava/util/List;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/a/e$2;->b:Lcom/facebook/imagepipeline/animated/a/e;

    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/a/e$2;->a:Ljava/util/List;

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

    .line 207
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/a/e$2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
