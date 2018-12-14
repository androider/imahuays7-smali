.class Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d()V
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

    .line 104
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 110
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    move-result-object p3

    iget p3, p3, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    rem-int/2addr p1, p3

    .line 114
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    move-result-object p3

    iget p3, p3, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    if-eq p1, p3, :cond_0

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    move-result-object p3

    iget p3, p3, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    if-eq p3, v0, :cond_0

    .line 115
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/view/View;

    move-result-object v0

    int-to-float p1, p1

    mul-float p1, p1, p3

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    move-result-object v0

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    rem-int/2addr p1, v0

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    move-result-object v0

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    move-result-object v0

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 128
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Landroid/view/View;

    move-result-object v1

    int-to-float v2, p1

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->d(Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner$a;->a(I)V

    :cond_1
    return-void
.end method
