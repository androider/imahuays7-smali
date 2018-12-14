.class Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$1;
.super Ljava/lang/Object;
.source "MyCacheActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;)Lcom/mh/movie/core/mvp/ui/adapter/q;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/q;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/fragment/d;

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;Lcom/mh/movie/core/mvp/ui/fragment/d;)V

    return-void
.end method
