.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;
.super Landroid/app/Dialog;
.source "GetInviteFromFriendDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;
    }
.end annotation


# instance fields
.field a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;

.field tvDialogCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03c4
    .end annotation
.end field

.field tvDialogMore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03c7
    .end annotation
.end field

.field tvDialogOk:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03c8
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c03c8,
            0x7f0c03c7,
            0x7f0c03c4
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_ok:I

    if-ne p1, v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;

    if-eqz p1, :cond_2

    .line 47
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;->onClick()V

    goto :goto_0

    .line 49
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_more:I

    if-ne p1, v0, :cond_1

    .line 50
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;

    if-eqz p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;->a()V

    goto :goto_0

    .line 53
    :cond_1
    sget p1, Lcom/mh/movie/core/R$id;->tv_dialog_cancel:I

    .line 56
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_get_invite_from_friend:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->setContentView(I)V

    .line 39
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    return-void
.end method
