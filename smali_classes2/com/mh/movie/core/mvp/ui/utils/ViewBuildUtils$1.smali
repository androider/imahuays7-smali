.class final Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils$1;
.super Lcom/facebook/drawee/controller/b;
.source "ViewBuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->loadImage(Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/b<",
        "Lcom/facebook/imagepipeline/g/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/g/f;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Lcom/facebook/imagepipeline/g/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 255
    invoke-interface {p3}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 247
    check-cast p2, Lcom/facebook/imagepipeline/g/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils$1;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/g/f;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
