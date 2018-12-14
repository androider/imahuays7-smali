.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;
.super Landroid/app/Dialog;
.source "ShareToFriendDialog.java"


# instance fields
.field a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

.field public b:Lcom/mh/movie/core/c/a;

.field tvDialogCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03c4
    .end annotation
.end field

.field tvDialogOk:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03c8
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mh/movie/core/c/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->b:Lcom/mh/movie/core/c/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c03c8,
            0x7f0c03c4
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 73
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_ok:I

    if-ne p1, v0, :cond_0

    .line 75
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->a:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->c(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    .line 77
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->dismiss()V

    goto :goto_0

    .line 79
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_cancel:I

    if-ne p1, v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_share_to_friend:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->setContentView(I)V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    return-void
.end method
