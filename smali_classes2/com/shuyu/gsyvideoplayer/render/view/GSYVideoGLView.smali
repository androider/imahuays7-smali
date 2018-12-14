.class public Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;
.super Landroid/opengl/GLSurfaceView;
.source "GSYVideoGLView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/a;
.implements Lcom/shuyu/gsyvideoplayer/render/view/a/a;
.implements Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView"


# instance fields
.field private b:Lcom/shuyu/gsyvideoplayer/render/b/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

.field private e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field private f:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

.field private g:Lcom/shuyu/gsyvideoplayer/render/view/a/a;

.field private h:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

.field private i:[F

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/a/a;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/render/a/a;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    .line 71
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Lcom/shuyu/gsyvideoplayer/render/a/a;

    invoke-direct {p2}, Lcom/shuyu/gsyvideoplayer/render/a/a;-><init>()V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    .line 76
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;[FLcom/shuyu/gsyvideoplayer/render/b/a;I)Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;
    .locals 11

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 380
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 383
    :cond_0
    new-instance v2, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;

    move-object v4, p0

    invoke-direct {v2, v4}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {v2, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/shuyu/gsyvideoplayer/render/b/a;)V

    :cond_1
    move-object/from16 v1, p5

    .line 387
    invoke-virtual {v2, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setEffect(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V

    move-object v1, p4

    .line 388
    invoke-virtual {v2, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    move/from16 v9, p8

    .line 389
    invoke-virtual {v2, v9}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setRenderMode(I)V

    move-object v7, p3

    .line 390
    invoke-virtual {v2, v7}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/a/c;)V

    move v6, p2

    int-to-float v3, v6

    .line 391
    invoke-virtual {v2, v3}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setRotation(F)V

    .line 392
    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->d()V

    .line 393
    new-instance v10, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;

    move-object v3, v10

    move-object v5, p1

    move-object v8, v1

    invoke-direct/range {v3 .. v9}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;I)V

    invoke-virtual {v2, v10}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoGLRenderErrorListener(Lcom/shuyu/gsyvideoplayer/render/view/a/b;)V

    if-eqz v0, :cond_2

    .line 408
    array-length v1, v0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    .line 409
    invoke-virtual {v2, v0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    :cond_2
    move-object v0, p1

    .line 411
    invoke-static {v0, v2}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v2
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->c:Landroid/content/Context;

    const/4 p1, 0x2

    .line 81
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setEGLContextClientVersion(I)V

    .line 82
    new-instance p1, Lcom/shuyu/gsyvideoplayer/render/b/b;

    invoke-direct {p1}, Lcom/shuyu/gsyvideoplayer/render/b/b;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    .line 83
    new-instance p1, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-direct {p1, p0, p0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;-><init>(Landroid/view/View;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    .line 84
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {p1, p0}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support initCover now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->h:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->h:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/a/c;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/shuyu/gsyvideoplayer/c/e;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b(Lcom/shuyu/gsyvideoplayer/c/e;Z)V

    .line 156
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e()V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/c/f;)V
    .locals 1

    .line 168
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$1;-><init>(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;Lcom/shuyu/gsyvideoplayer/c/f;Ljava/io/File;)V

    .line 179
    invoke-virtual {p0, v0, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b(Lcom/shuyu/gsyvideoplayer/c/e;Z)V

    .line 180
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->requestLayout()V

    .line 192
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->onResume()V

    return-void
.end method

.method public b(Lcom/shuyu/gsyvideoplayer/c/e;Z)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a(Lcom/shuyu/gsyvideoplayer/c/e;Z)V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v1

    .line 281
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a(I)V

    .line 283
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/shuyu/gsyvideoplayer/render/b/a;->b(I)V

    .line 284
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {v2, v0}, Lcom/shuyu/gsyvideoplayer/render/b/a;->c(I)V

    .line 285
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/b/a;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/b/a;->b()V

    return-void
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEffect()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    return-object v0
.end method

.method public getIGSYSurfaceListener()Lcom/shuyu/gsyvideoplayer/render/view/a/c;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->h:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    return-object v0
.end method

.method public getMVPMatrix()[F
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->i:[F

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    return v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getRenderer()Lcom/shuyu/gsyvideoplayer/render/b/a;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    return-object v0
.end method

.method public getSizeH()I
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSizeW()I
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 97
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 99
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->prepareMeasure(III)V

    .line 100
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->c()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->prepareMeasure(III)V

    .line 103
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->f:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/b/a;->d()V

    :cond_0
    return-void
.end method

.method public setCustomRenderer(Lcom/shuyu/gsyvideoplayer/render/b/a;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    .line 311
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {p1, p0}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a(Landroid/opengl/GLSurfaceView;)V

    .line 312
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->c()V

    return-void
.end method

.method public setEffect(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 322
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    .line 323
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->d:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V

    :cond_0
    return-void
.end method

.method public setGLEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setEffect(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V

    return-void
.end method

.method public setGLMVPMatrix([F)V
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    return-void
.end method

.method public setGLRenderer(Lcom/shuyu/gsyvideoplayer/render/b/a;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/shuyu/gsyvideoplayer/render/b/a;)V

    return-void
.end method

.method public setGSYVideoGLRenderErrorListener(Lcom/shuyu/gsyvideoplayer/render/view/a/b;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a(Lcom/shuyu/gsyvideoplayer/render/view/a/b;)V

    return-void
.end method

.method public setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/a/c;)V
    .locals 0

    .line 114
    invoke-virtual {p0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setOnGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/a/a;)V

    .line 115
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->h:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    return-void
.end method

.method public setMVPMatrix([F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 329
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->i:[F

    .line 330
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a([F)V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 351
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->j:I

    return-void
.end method

.method public setOnGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/a/a;)V
    .locals 1

    .line 316
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->g:Lcom/shuyu/gsyvideoplayer/render/view/a/a;

    .line 317
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->b:Lcom/shuyu/gsyvideoplayer/render/b/a;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->g:Lcom/shuyu/gsyvideoplayer/render/view/a/a;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a(Lcom/shuyu/gsyvideoplayer/render/view/a/a;)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setMode(I)V

    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setRenderTransform now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    return-void
.end method
