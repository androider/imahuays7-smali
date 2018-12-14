.class public Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "TagActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/b/d$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/b/d$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;"
    }
.end annotation


# instance fields
.field c:I

.field d:I

.field e:I

.field f:Z

.field public g:Ljava/lang/String;

.field mcvMore:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;
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
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x4

    .line 39
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->c:I

    const/16 v0, 0xa

    .line 40
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->d:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->e:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    sget p1, Lcom/mh/movie/core/R$layout;->activity_more:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-static {}, Lcom/mh/movie/core/a/a/b/c;->a()Lcom/mh/movie/core/a/a/b/c$a;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/b/c$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/b/c$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/b/j;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/b/j;-><init>(Lcom/mh/movie/core/mvp/a/b/d$b;)V

    .line 50
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/b/c$a;->a(Lcom/mh/movie/core/a/b/b/j;)Lcom/mh/movie/core/a/a/b/c$a;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/b/c$a;->a()Lcom/mh/movie/core/a/a/b/f;

    move-result-object p1

    .line 52
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/b/f;->a(Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->d:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->f:Z

    .line 119
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->e:I

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

    .line 62
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightButton()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->g:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    .line 67
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/u;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/u;-><init>()V

    .line 68
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/u;->a(Lcom/mh/movie/core/mvp/ui/adapter/u$a;)V

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 78
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->g:Ljava/lang/String;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->e:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->d:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->a(Ljava/lang/String;III)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 5

    .line 124
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->f:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->g:Ljava/lang/String;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->e:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->d:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/mvp/presenter/player/TagPresenter;->a(Ljava/lang/String;III)V

    :goto_0
    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
