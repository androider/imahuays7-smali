.class Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;
.super Lcn/bingoogolapple/bgabanner/d;
.source "BGABanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 906
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->f(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcn/bingoogolapple/bgabanner/BGAViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 908
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bingoogolapple/bgabanner/b;->a(ILjava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0

    .line 910
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/Collection;

    invoke-static {v1, v2}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method
