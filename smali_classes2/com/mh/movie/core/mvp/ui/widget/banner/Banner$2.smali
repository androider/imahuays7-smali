.class Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/a;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->e(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 177
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->e(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->f(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x50

    .line 183
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->g(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;Landroid/view/View;)Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->h(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$2;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
