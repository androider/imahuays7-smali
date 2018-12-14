.class public Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "LikeActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/b/a$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/player/LikePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/b/a$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

.field d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->e:I

    const/4 v1, 0x1

    .line 44
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->f:I

    const/16 v2, 0xc

    .line 45
    iput v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->g:I

    .line 46
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->h:I

    .line 47
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->i:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    sget p1, Lcom/mh/movie/core/R$layout;->activity_more:I

    return p1
.end method

.method final synthetic a(I)V
    .locals 2

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "videoInfoId"

    .line 94
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    sget p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->setResult(ILandroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->finish()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Lcom/mh/movie/core/a/a/aj;->a()Lcom/mh/movie/core/a/a/aj$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/aj$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/aj$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/b/a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/b/a;-><init>(Lcom/mh/movie/core/mvp/a/b/a$b;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/aj$a;->a(Lcom/mh/movie/core/a/b/b/a;)Lcom/mh/movie/core/a/a/aj$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/aj$a;->a()Lcom/mh/movie/core/a/a/ch;

    move-result-object p1

    .line 56
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/ch;->a(Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->g:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->i:Z

    .line 135
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->h:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->h:I

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

    .line 72
    sget p1, Lcom/mh/movie/core/R$id;->topbar:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 73
    sget p1, Lcom/mh/movie/core/R$id;->mcv_more:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 76
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "videoInfoId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->e:I

    .line 77
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->f:I

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightButton()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->d:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const-string v1, "\u731c\u4f60\u559c\u6b22"

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->r:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->convertParams(ILandroid/content/Context;)[I

    move-result-object p1

    .line 82
    new-instance v3, Lcom/mh/movie/core/mvp/ui/adapter/n;

    aget v0, p1, v0

    aget p1, p1, v2

    invoke-direct {v3, v1, v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/n;-><init>(III)V

    .line 83
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->r:Landroid/content/Context;

    invoke-direct {p1, p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;Landroid/content/Context;I)V

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {p1, v3}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->g:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setPageSize(I)V

    .line 92
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/i;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/i;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;)V

    invoke-virtual {v3, p1}, Lcom/mh/movie/core/mvp/ui/adapter/n;->a(Lcom/mh/movie/core/mvp/ui/adapter/n$a;)V

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/s;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/s;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 99
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V

    .line 101
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/LikePresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->e:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->h:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->g:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->f:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/LikePresenter;->a(IIII)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 116
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 5

    .line 140
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->i:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->c:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/LikePresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->e:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->h:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->g:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LikeActivity;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/mvp/presenter/player/LikePresenter;->a(IIII)V

    :goto_0
    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
