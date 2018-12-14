.class public Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "PartnerListActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ak$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/PartnerListPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ak$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field rwPartnerList:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0314
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ai;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/ai;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->rwPartnerList:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    .line 75
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->rwPartnerList:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setTipsType(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->rwPartnerList:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/PartnerListPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/PartnerListPresenter;->e()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    sget p1, Lcom/mh/movie/core/R$layout;->activity_partner_list:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->onBackPressed()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-static {}, Lcom/mh/movie/core/a/a/av;->a()Lcom/mh/movie/core/a/a/av$a;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/av$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/av$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/cp;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/cp;-><init>(Lcom/mh/movie/core/mvp/a/ak$b;)V

    .line 52
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/av$a;->a(Lcom/mh/movie/core/a/b/cp;)Lcom/mh/movie/core/a/a/av$a;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/av$a;->a()Lcom/mh/movie/core/a/a/ct;

    move-result-object p1

    .line 54
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/ct;->a(Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->rwPartnerList:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->g()V

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->h()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserIncomeResponse;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->rwPartnerList:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/PartnerListPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/PartnerListPresenter;->f()V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerListActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/PartnerListPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/PartnerListPresenter;->e()V

    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
