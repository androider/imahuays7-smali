.class public Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "AccountCheckTypeActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/AccountCheckTypePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/a$b;"
    }
.end annotation


# instance fields
.field llPhoneCheck:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01fa
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

    .line 47
    sget p1, Lcom/mh/movie/core/R$layout;->activity_account_check_type:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-static {}, Lcom/mh/movie/core/a/a/m;->a()Lcom/mh/movie/core/a/a/m$a;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/m$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/m$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/a;-><init>(Lcom/mh/movie/core/mvp/a/a$b;)V

    .line 40
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/m$a;->a(Lcom/mh/movie/core/a/b/a;)Lcom/mh/movie/core/a/a/m$a;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/m$a;->a()Lcom/mh/movie/core/a/a/a;

    move-result-object p1

    .line 42
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/a;->a(Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;)V

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

    .line 52
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public onClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c01fa
        }
    .end annotation

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
