.class public Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyCacheActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->tabs:I

    const-string v1, "field \'tabs\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->tabs:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->pager:I

    const-string v1, "field \'pager\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    .line 40
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 41
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->tabs:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    .line 42
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    return-void
.end method
