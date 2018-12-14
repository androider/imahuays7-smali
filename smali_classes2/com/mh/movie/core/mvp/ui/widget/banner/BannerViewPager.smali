.class public Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BannerViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/mh/movie/core/mvp/ui/widget/banner/b;

.field private d:Z

.field private e:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x1388

    .line 21
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->a:I

    .line 66
    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/banner/b;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/b;

    .line 67
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/b;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/b;->a(Landroid/support/v4/view/ViewPager;)V

    .line 68
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->e:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->b:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->b:I

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->a:I

    return p0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;
    .locals 4

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->d:Z

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->e:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->a:I

    int-to-long v1, v1

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;->sendEmptyMessageDelayed(IJ)Z

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->d:Z

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->e:Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;->removeMessages(I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "112233"

    const-string v1, "ok"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->c()V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->a()Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    .line 106
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScrollDuration(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/b;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/b;->a(I)V

    .line 73
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/b;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/b;->a(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method
