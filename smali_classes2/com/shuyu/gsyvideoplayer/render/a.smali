.class public Lcom/shuyu/gsyvideoplayer/render/a;
.super Ljava/lang/Object;
.source "GSYRenderView.java"


# instance fields
.field protected a:Lcom/shuyu/gsyvideoplayer/render/view/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 225
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/render/a;->j()I

    move-result v0

    .line 226
    instance-of v1, p0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 228
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 230
    :cond_0
    instance-of v1, p0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 231
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 232
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 233
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static j()I
    .locals 1

    .line 243
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


# virtual methods
.method public a()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/a;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;[FLcom/shuyu/gsyvideoplayer/render/b/a;I)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->getRenderType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-static {p1, p2, p3, p4, p5}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->getRenderType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 89
    invoke-static/range {p1 .. p9}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;[FLcom/shuyu/gsyvideoplayer/render/b/a;I)Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/a;->setRenderTransform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/shuyu/gsyvideoplayer/c/e;Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/a;->a(Lcom/shuyu/gsyvideoplayer/c/e;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/shuyu/gsyvideoplayer/render/b/a;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/a;->setGLRenderer(Lcom/shuyu/gsyvideoplayer/render/b/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/a;->setGLEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/c/f;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/render/view/a;->a(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/c/f;)V

    :cond_0
    return-void
.end method

.method public a([F)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/a;->setGLMVPMatrix([F)V

    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->getRenderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/graphics/Bitmap;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/a;->a:Lcom/shuyu/gsyvideoplayer/render/view/a;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/render/view/a;->b()V

    :cond_0
    return-void
.end method
