.class public Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "MyCacheActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/mh/movie/core/mvp/a/ae;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/MyCachePresenter;",
        ">;",
        "Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;",
        "Lcom/mh/movie/core/mvp/a/ae;"
    }
.end annotation


# instance fields
.field private c:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

.field private d:Lcom/mh/movie/core/mvp/ui/adapter/q;

.field pager:Landroid/support/v4/view/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0289
    .end annotation
.end field

.field tabs:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0361
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    .line 55
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->c:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;)Lcom/mh/movie/core/mvp/ui/adapter/q;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/q;

    return-object p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;Lcom/mh/movie/core/mvp/ui/fragment/d;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->a(Lcom/mh/movie/core/mvp/ui/fragment/d;)V

    return-void
.end method

.method private a(Lcom/mh/movie/core/mvp/ui/fragment/d;)V
    .locals 2

    .line 154
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->c:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

    .line 155
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/d;->i()V

    return-void
.end method


# virtual methods
.method public TvToMain(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "tvDetailToMain"
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->finish()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    sget p1, Lcom/mh/movie/core/R$layout;->activity_my_cache:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/q;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/q;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/fragment/d;

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->c:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

    if-ne v0, v1, :cond_0

    .line 123
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->c:Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$a;

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/d;->h()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->a(Lcom/mh/movie/core/mvp/ui/fragment/d;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 0
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/q;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/q;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/q;

    .line 112
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/q;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 113
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    .line 113
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 116
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->tabs:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/af;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/af;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 85
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e()V

    :cond_0
    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    sget v0, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initMyTopbar(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/q;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/q;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onResume()V

    .line 79
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;->e()V

    :cond_0
    return-void
.end method
