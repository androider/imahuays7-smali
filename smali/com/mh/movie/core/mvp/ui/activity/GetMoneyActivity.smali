.class public Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "GetMoneyActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/t$b;
.implements Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/t$b;",
        "Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;"
    }
.end annotation


# instance fields
.field public c:Landroid/widget/LinearLayout;

.field private d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

.field private e:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 85
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 86
    sget v0, Lcom/mh/movie/core/R$id;->tabs:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    .line 87
    sget v0, Lcom/mh/movie/core/R$id;->pager:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->f:Landroid/support/v4/view/ViewPager;

    .line 88
    sget v0, Lcom/mh/movie/core/R$id;->ll_container:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->c:Landroid/widget/LinearLayout;

    .line 89
    sget v0, Lcom/mh/movie/core/R$id;->tv_money_balance:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->g:Landroid/widget/TextView;

    return-void
.end method

.method private l()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->r:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$color;->text_99:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/aa;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/aa;-><init>(Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;)V

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/ab;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/ab;-><init>(Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;)V

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "balance"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    sget p1, Lcom/mh/movie/core/R$layout;->activity_get_money:I

    return p1
.end method

.method public a(I)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->scrollBy(II)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 97
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/ExchangeRecordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-static {}, Lcom/mh/movie/core/a/a/af;->a()Lcom/mh/movie/core/a/a/af$a;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/af$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/af$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/az;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/az;-><init>(Lcom/mh/movie/core/mvp/a/t$b;)V

    .line 67
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/af$a;->a(Lcom/mh/movie/core/a/b/az;)Lcom/mh/movie/core/a/a/af$a;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/af$a;->a()Lcom/mh/movie/core/a/a/cd;

    move-result-object p1

    .line 69
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cd;->a(Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;)V
    .locals 3

    .line 127
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->h:Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;->bank:Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;)Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    move-result-object v0

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;)V

    .line 135
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;->ali:Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;)Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    move-result-object v0

    .line 136
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;)V

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->f:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/p;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/p;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 141
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->k()V

    .line 80
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->l()V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->onBackPressed()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()D
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/GetMoneyPresenter;->a(Z)V

    return-void
.end method

.method public g()Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->h:Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    return-object v0
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 166
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->r:Landroid/content/Context;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->r:Landroid/content/Context;

    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
