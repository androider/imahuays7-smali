.class public Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;
.super Lcom/jess/arms/a/b;
.source "RuleActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/at$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/b<",
        "Lcom/mh/movie/core/mvp/presenter/RulePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/at$b;"
    }
.end annotation


# instance fields
.field imgPull:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0123
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/jess/arms/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    sget p1, Lcom/mh/movie/core/R$layout;->activity_rule:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-static {}, Lcom/mh/movie/core/a/a/be;->a()Lcom/mh/movie/core/a/a/be$a;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/be$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/be$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/dt;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/dt;-><init>(Lcom/mh/movie/core/mvp/a/at$b;)V

    .line 37
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/be$a;->a(Lcom/mh/movie/core/a/b/dt;)Lcom/mh/movie/core/a/a/be$a;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/be$a;->a()Lcom/mh/movie/core/a/a/dc;

    move-result-object p1

    .line 39
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dc;->a(Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;)V

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

    .line 49
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;->imgPull:Landroid/widget/ImageView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/RuleActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/RuleActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/jess/arms/a/b;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
