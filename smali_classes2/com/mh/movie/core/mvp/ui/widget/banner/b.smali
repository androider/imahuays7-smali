.class public Lcom/mh/movie/core/mvp/ui/widget/banner/b;
.super Landroid/widget/Scroller;
.source "ViewPagerScroller.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3e8

    .line 15
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/b;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/b;->a:I

    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .line 41
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    .line 36
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/b;->a:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 31
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/b;->a:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
