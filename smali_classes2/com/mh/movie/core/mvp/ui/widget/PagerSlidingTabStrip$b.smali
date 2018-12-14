.class Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;)V
    .locals 0

    .line 442
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;II)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;I)I

    .line 447
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {v0, p2}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;F)F

    .line 449
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->c(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;II)V

    .line 451
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    .line 453
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;I)I

    .line 472
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->d(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)V

    .line 473
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
