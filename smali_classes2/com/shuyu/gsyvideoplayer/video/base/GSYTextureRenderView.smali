.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;
.super Landroid/widget/FrameLayout;
.source "GSYTextureRenderView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/a/c;
.implements Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# instance fields
.field protected mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

.field protected mFullPauseBitmap:Landroid/graphics/Bitmap;

.field protected mMatrixGL:[F

.field protected mMode:I

.field protected mRenderer:Lcom/shuyu/gsyvideoplayer/render/b/a;

.field protected mRotate:I

.field protected mSurface:Landroid/view/Surface;

.field protected mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

.field protected mTextureViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Lcom/shuyu/gsyvideoplayer/render/a/a;

    invoke-direct {p1}, Lcom/shuyu/gsyvideoplayer/render/a/a;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Lcom/shuyu/gsyvideoplayer/render/a/a;

    invoke-direct {p1}, Lcom/shuyu/gsyvideoplayer/render/a/a;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Lcom/shuyu/gsyvideoplayer/render/a/a;

    invoke-direct {p1}, Lcom/shuyu/gsyvideoplayer/render/a/a;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    return-void
.end method


# virtual methods
.method protected addTextureView()V
    .locals 11

    .line 117
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/render/a;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    .line 118
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    iget-object v9, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/b/a;

    iget v10, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v10}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;[FLcom/shuyu/gsyvideoplayer/render/b/a;I)V

    return-void
.end method

.method protected changeTextureViewShowType()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->getTextureParams()I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/render/a;->g()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 138
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getEffectFilter()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    return-object v0
.end method

.method public getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/a;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    return-object v0
.end method

.method protected getTextureParams()I
    .locals 1

    .line 127
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->getShowType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, -0x2

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method protected initCover()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 3

    const-string v0, "TTT"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTextureView.getShowView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/render/a;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->f()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->pauseLogic(Landroid/view/Surface;Z)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/Surface;)Z
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->setDisplay(Landroid/view/Surface;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->releaseSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceUpdated(Landroid/view/Surface;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->releasePauseCover()V

    return-void
.end method

.method protected pauseLogic(Landroid/view/Surface;Z)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->showPauseCover()V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->setDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method protected abstract releasePauseCover()V
.end method

.method protected abstract releaseSurface(Landroid/view/Surface;)V
.end method

.method public setCustomGLRenderer(Lcom/shuyu/gsyvideoplayer/render/b/a;)V
    .locals 1

    .line 199
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/b/a;

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Lcom/shuyu/gsyvideoplayer/render/b/a;)V

    :cond_0
    return-void
.end method

.method protected abstract setDisplay(Landroid/view/Surface;)V
.end method

.method public setEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V
    .locals 1

    .line 177
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    .line 178
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V

    :cond_0
    return-void
.end method

.method public setGLRenderMode(I)V
    .locals 1

    .line 211
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    .line 212
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/a;->a(I)V

    :cond_0
    return-void
.end method

.method public setMatrixGL([F)V
    .locals 1

    .line 189
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    .line 190
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a([F)V

    :cond_0
    return-void
.end method

.method protected abstract setSmallVideoTextureView()V
.end method

.method protected setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->setSmallVideoTextureView()V

    return-void
.end method

.method protected abstract showPauseCover()V
.end method
