.class public abstract Lcom/mh/movie/core/mvp/ui/widget/banner/a;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/16 v0, 0x64

    .line 18
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->c:I

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Landroid/view/View;
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 3

    .line 69
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .line 75
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    .line 80
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 45
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    if-lez v0, :cond_0

    .line 46
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a:I

    rem-int/2addr p2, v0

    .line 47
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->d:I

    .line 52
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/banner/a;->a(I)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/banner/a$1;

    invoke-direct {p1, p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/banner/a$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/a;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
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
