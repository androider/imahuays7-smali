.class public Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "QuestionStartActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/aq$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/QuestionStartPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/aq$b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    sget p1, Lcom/mh/movie/core/R$layout;->activity_question_start:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-static {}, Lcom/mh/movie/core/a/a/bb;->a()Lcom/mh/movie/core/a/a/bb$a;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bb$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bb$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/dk;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/dk;-><init>(Lcom/mh/movie/core/mvp/a/aq$b;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bb$a;->a(Lcom/mh/movie/core/a/b/dk;)Lcom/mh/movie/core/a/a/bb$a;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bb$a;->a()Lcom/mh/movie/core/a/a/cz;

    move-result-object p1

    .line 34
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cz;->a(Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;)V

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

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x123

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c017f,
            0x7f0c0180,
            0x7f0c043e
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 84
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_back:I

    if-ne p1, v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;->finish()V

    goto :goto_0

    .line 86
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_close:I

    if-ne p1, v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_question_start:I

    if-ne p1, v0, :cond_2

    .line 89
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/QuestionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x123

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method
