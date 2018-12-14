.class public Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;
.super Landroid/widget/FrameLayout;
.source "MHPtrHeader.java"

# interfaces
.implements Lin/srain/cube/views/ptr/c;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->pull_to_refresh_head:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->a:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_fresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->b:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->a:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->b:Landroid/widget/TextView;

    const-string v0, "onUIReset"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V
    .locals 0

    .line 70
    invoke-virtual {p4}, Lin/srain/cube/views/ptr/a/a;->w()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 73
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 74
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 75
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->invalidate()V

    :cond_0
    return-void
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->b:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u62c9\u677e\u624b\u5237\u65b0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->b:Landroid/widget/TextView;

    const-string v0, "\u5e2e\u60a8\u66f4\u65b0\u6570\u636e..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 58
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/MHPtrHeader;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 64
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method
