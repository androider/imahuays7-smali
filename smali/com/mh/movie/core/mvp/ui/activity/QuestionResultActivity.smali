.class public Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "QuestionResultActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ap$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/QuestionResultPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ap$b;"
    }
.end annotation


# instance fields
.field tvResult:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c044e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
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

    .line 45
    sget p1, Lcom/mh/movie/core/R$layout;->activity_question_result:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    const/4 p1, -0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->finish()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-static {}, Lcom/mh/movie/core/a/a/ba;->a()Lcom/mh/movie/core/a/a/ba$a;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ba$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ba$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/dh;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/dh;-><init>(Lcom/mh/movie/core/mvp/a/ap$b;)V

    .line 38
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ba$a;->a(Lcom/mh/movie/core/a/b/dh;)Lcom/mh/movie/core/a/a/ba$a;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ba$a;->a()Lcom/mh/movie/core/a/a/cy;

    move-result-object p1

    .line 40
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cy;->a(Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;)V

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

    .line 50
    sget p1, Lcom/mh/movie/core/R$id;->tv_result:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget p1, Lcom/mh/movie/core/R$id;->tv_back:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 54
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 55
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/ap;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/ap;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c017f,
            0x7f0c0180
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 98
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_back:I

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->finish()V

    goto :goto_0

    .line 100
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_question_close:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 101
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QuestionResultActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
