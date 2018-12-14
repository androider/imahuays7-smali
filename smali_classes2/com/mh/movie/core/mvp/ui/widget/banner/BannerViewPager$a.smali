.class Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;
.super Landroid/os/Handler;
.source "BannerViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 49
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;I)I

    .line 53
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->setCurrentItem(I)V

    const/4 v0, -0x1

    .line 54
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BannerViewPager$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
