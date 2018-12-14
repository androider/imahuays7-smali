.class public Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;
.super Landroid/view/TextureView;
.source "GSYTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/shuyu/gsyvideoplayer/render/view/a;
.implements Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# instance fields
.field private a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

.field private b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field private c:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

.field private d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const-string p1, "TTT"

    const-string v0, "GSYTextureView"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->d()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;
    .locals 1

    .line 282
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 285
    :cond_0
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;-><init>(Landroid/content/Context;)V

    .line 286
    invoke-virtual {v0, p3}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/a/c;)V

    .line 287
    invoke-virtual {v0, p4}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    int-to-float p0, p2

    .line 288
    invoke-virtual {v0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setRotation(F)V

    .line 289
    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 51
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-direct {v0, p0, p0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;-><init>(Landroid/view/View;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->c:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeW()I

    move-result v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeH()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 126
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/shuyu/gsyvideoplayer/c/e;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->c()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 153
    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/c/e;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/c/e;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/c/f;)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeH()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeW()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;-><init>(Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;Lcom/shuyu/gsyvideoplayer/c/f;Ljava/io/File;)V

    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/c/e;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/c/e;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support onRenderResume now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 3

    .line 138
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeW()I

    move-result v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeH()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 137
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIGSYSurfaceListener()Lcom/shuyu/gsyvideoplayer/render/view/a/c;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    return-object v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getSizeH()I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSizeW()I
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->c:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->prepareMeasure(III)V

    .line 57
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->c:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->c:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p2, "TTT"

    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureAvailablesurface:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->d:Landroid/view/Surface;

    .line 69
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->d:Landroid/view/Surface;

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/a/c;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const-string v0, "TTT"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyedsurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->d:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/view/a/c;->onSurfaceDestroyed(Landroid/view/Surface;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p1, "TTT"

    const-string v0, "onSurfaceTextureSizeChanged"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->d:Landroid/view/Surface;

    invoke-interface {p1, v0, p2, p3}, Lcom/shuyu/gsyvideoplayer/render/view/a/c;->onSurfaceSizeChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->d:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/view/a/c;->onSurfaceUpdated(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setGLEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V
    .locals 1

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setGLEffectFilter now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGLMVPMatrix([F)V
    .locals 1

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setGLMVPMatrix now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGLRenderer(Lcom/shuyu/gsyvideoplayer/render/b/a;)V
    .locals 1

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setGLRenderer now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/a/c;)V
    .locals 0

    .line 107
    invoke-virtual {p0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 108
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setRenderMode now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->b:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    return-void
.end method
