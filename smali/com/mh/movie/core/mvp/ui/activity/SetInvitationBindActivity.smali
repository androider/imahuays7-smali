.class public Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "SetInvitationBindActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ay$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ay$b;"
    }
.end annotation


# instance fields
.field etInvitationCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00c1
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvSubmit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c046f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
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

    .line 54
    sget p1, Lcom/mh/movie/core/R$layout;->activity_invitation_bind:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-static {}, Lcom/mh/movie/core/a/a/bi;->a()Lcom/mh/movie/core/a/a/bi$a;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bi$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bi$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ef;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ef;-><init>(Lcom/mh/movie/core/mvp/a/ay$b;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bi$a;->a(Lcom/mh/movie/core/a/b/ef;)Lcom/mh/movie/core/a/a/bi$a;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bi$a;->a()Lcom/mh/movie/core/a/a/dg;

    move-result-object p1

    .line 49
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dg;->a(Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public c()V
    .locals 4

    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    .line 99
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setInvitation(Z)V

    .line 101
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v2, ""

    const-string v3, "updateUserInfo"

    invoke-virtual {v0, v2, v3}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->d:Z

    .line 104
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;->finish()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c046f
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;->etInvitationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u9080\u8bf7\u7801"

    .line 90
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;->etInvitationCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/SetInvitationBindPresenter;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
