.class Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;I)I

    .line 232
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;->a:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;II)V

    return-void
.end method
