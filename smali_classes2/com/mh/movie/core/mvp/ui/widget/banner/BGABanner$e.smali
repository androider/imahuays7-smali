.class Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;
.super Landroid/support/v4/view/PagerAdapter;
.source "BGABanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$1;)V
    .locals 0

    .line 880
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->c(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 889
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/util/Collection;

    invoke-static {v0, v2}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p2, v0

    .line 896
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 897
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->b(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    .line 899
    :cond_1
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->d(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr p2, v4

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 902
    :goto_0
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->e(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$c;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 903
    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    :cond_2
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 918
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/bingoogolapple/bgabanner/b;->a(ILjava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 919
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 920
    :cond_3
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->g(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Ljava/util/List;

    move-result-object v3

    new-array v1, v1, [Ljava/util/Collection;

    invoke-static {v3, v1}, Lcn/bingoogolapple/bgabanner/b;->a(Ljava/util/Collection;[Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 921
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;->h(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;)Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;

    move-result-object v1

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$e;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;

    invoke-interface {v1, v3, p2, v2, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner$a;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/BGABanner;Landroid/view/View;Ljava/lang/Object;I)V

    .line 925
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 927
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 930
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
