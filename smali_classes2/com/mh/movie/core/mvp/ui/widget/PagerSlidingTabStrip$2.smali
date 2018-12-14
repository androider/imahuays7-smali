.class Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;I)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$2;->b:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$2;->b:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$2;->a:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
