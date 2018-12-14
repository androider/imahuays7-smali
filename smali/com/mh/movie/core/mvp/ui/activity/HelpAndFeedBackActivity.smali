.class public Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "HelpAndFeedBackActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/v$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/HelpAndFeedBackPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/v$b;"
    }
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvFeedback:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03da
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    sget p1, Lcom/mh/movie/core/R$layout;->activity_help_and_feed_back:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-static {}, Lcom/mh/movie/core/a/a/ah;->a()Lcom/mh/movie/core/a/a/ah$a;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ah$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ah$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/bf;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/bf;-><init>(Lcom/mh/movie/core/mvp/a/v$b;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ah$a;->a(Lcom/mh/movie/core/a/b/bf;)Lcom/mh/movie/core/a/a/ah$a;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ah$a;->a()Lcom/mh/movie/core/a/a/cf;

    move-result-object p1

    .line 53
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cf;->a(Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public onClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c03da
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    .line 96
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 43
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method
