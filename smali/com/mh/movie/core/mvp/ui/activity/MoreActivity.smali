.class public Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "MoreActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ab$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/MorePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ab$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;"
    }
.end annotation


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0254
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

    .line 37
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->c:I

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    sget p1, Lcom/mh/movie/core/R$layout;->activity_refresh_more:I

    return p1
.end method

.method final synthetic a(I)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->r:Landroid/content/Context;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->d:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget v2, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_RECOMMEND_INFO:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget v2, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_MOVIE_INFO:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_TV_INFO:I

    :goto_0
    invoke-static {v0, v1, p1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-static {}, Lcom/mh/movie/core/a/a/ao;->a()Lcom/mh/movie/core/a/a/ao$a;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ao$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ao$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/bx;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/bx;-><init>(Lcom/mh/movie/core/mvp/a/ab$b;)V

    .line 56
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ao$a;->a(Lcom/mh/movie/core/a/b/bx;)Lcom/mh/movie/core/a/a/ao$a;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ao$a;->a()Lcom/mh/movie/core/a/a/cm;

    move-result-object p1

    .line 58
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cm;->a(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 139
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setContent(Ljava/util/List;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 69
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "card_column"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->c:I

    .line 70
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "card_columnid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->d:I

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)V

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "card_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 85
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->e:I

    .line 86
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "card_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x3

    .line 88
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->e:I

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->a(I)V

    .line 91
    :cond_0
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->e:I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->r:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->convertParams(ILandroid/content/Context;)[I

    move-result-object p1

    .line 92
    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/n;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->e:I

    aget v0, p1, v0

    aget p1, p1, v2

    invoke-direct {v1, v3, v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/n;-><init>(III)V

    .line 93
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$2;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->r:Landroid/content/Context;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->e:I

    invoke-direct {p1, p0, v0, v3}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;Landroid/content/Context;I)V

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 101
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/ae;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/ae;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)V

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/ui/adapter/n;->a(Lcom/mh/movie/core/mvp/ui/adapter/n$a;)V

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/s;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->e:I

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lcom/mh/movie/core/mvp/ui/widget/s;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->c:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->d:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->a(IIZ)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->c:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->a(IIZ)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/MorePresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->c:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->d:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/MorePresenter;->a(IIZ)V

    return-void
.end method
