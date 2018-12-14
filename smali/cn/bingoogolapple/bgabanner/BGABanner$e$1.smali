.class Lcn/bingoogolapple/bgabanner/BGABanner$e$1;
.super Lcn/bingoogolapple/bgabanner/d;
.source "BGABanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/bgabanner/BGABanner$e;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/bingoogolapple/bgabanner/BGABanner$e;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/bgabanner/BGABanner$e;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 899
    iget-object v0, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v0, v0, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {v0}, Lcn/bingoogolapple/bgabanner/BGABanner;->f(Lcn/bingoogolapple/bgabanner/BGABanner;)Lcn/bingoogolapple/bgabanner/BGAViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bingoogolapple/bgabanner/BGAViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v1, v1, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {v1}, Lcn/bingoogolapple/bgabanner/BGABanner;->b(Lcn/bingoogolapple/bgabanner/BGABanner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 901
    iget-object v1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v1, v1, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {v1}, Lcn/bingoogolapple/bgabanner/BGABanner;->g(Lcn/bingoogolapple/bgabanner/BGABanner;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bingoogolapple/bgabanner/b;->a(ILjava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    iget-object v1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v1, v1, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {v1}, Lcn/bingoogolapple/bgabanner/BGABanner;->e(Lcn/bingoogolapple/bgabanner/BGABanner;)Lcn/bingoogolapple/bgabanner/BGABanner$c;

    move-result-object v1

    iget-object v2, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v2, v2, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    iget-object v3, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v3, v3, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {v3}, Lcn/bingoogolapple/bgabanner/BGABanner;->g(Lcn/bingoogolapple/bgabanner/BGABanner;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3, v0}, Lcn/bingoogolapple/bgabanner/BGABanner$c;->a(Lcn/bingoogolapple/bgabanner/BGABanner;Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0

    .line 903
    :cond_0
    iget-object v1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v1, v1, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {v1}, Lcn/bingoogolapple/bgabanner/BGABanner;->g(Lcn/bingoogolapple/bgabanner/BGABanner;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/Collection;

    invoke-static {v1, v2}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 904
    iget-object v1, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v1, v1, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    invoke-static {v1}, Lcn/bingoogolapple/bgabanner/BGABanner;->e(Lcn/bingoogolapple/bgabanner/BGABanner;)Lcn/bingoogolapple/bgabanner/BGABanner$c;

    move-result-object v1

    iget-object v2, p0, Lcn/bingoogolapple/bgabanner/BGABanner$e$1;->a:Lcn/bingoogolapple/bgabanner/BGABanner$e;

    iget-object v2, v2, Lcn/bingoogolapple/bgabanner/BGABanner$e;->a:Lcn/bingoogolapple/bgabanner/BGABanner;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3, v0}, Lcn/bingoogolapple/bgabanner/BGABanner$c;->a(Lcn/bingoogolapple/bgabanner/BGABanner;Landroid/view/View;Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method
