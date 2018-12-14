.class public Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "AccountActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/b$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/AccountPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/b$b;"
    }
.end annotation


# instance fields
.field llAccountPwd:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01bd
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvAccountTel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c039a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
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

    .line 52
    sget p1, Lcom/mh/movie/core/R$layout;->activity_account:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-static {}, Lcom/mh/movie/core/a/a/n;->a()Lcom/mh/movie/core/a/a/n$a;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/n$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/n$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/d;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/d;-><init>(Lcom/mh/movie/core/mvp/a/b$b;)V

    .line 45
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/n$a;->a(Lcom/mh/movie/core/a/b/d;)Lcom/mh/movie/core/a/a/n$a;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/n$a;->a()Lcom/mh/movie/core/a/a/b;

    move-result-object p1

    .line 47
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/b;->a(Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 58
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->tvAccountTel:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+86"

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/TextEmptyutils;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->phoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method public onClick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c01bd
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/AccountCheckTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
