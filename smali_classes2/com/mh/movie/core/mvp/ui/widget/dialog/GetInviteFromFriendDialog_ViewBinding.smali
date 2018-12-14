.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;
.super Ljava/lang/Object;
.source "GetInviteFromFriendDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_ok:I

    const-string v1, "field \'tvDialogOk\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    sget v1, Lcom/mh/movie/core/R$id;->tv_dialog_ok:I

    const-string v2, "field \'tvDialogOk\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->tvDialogOk:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->b:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_more:I

    const-string v1, "field \'tvDialogMore\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    sget v1, Lcom/mh/movie/core/R$id;->tv_dialog_more:I

    const-string v2, "field \'tvDialogMore\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->tvDialogMore:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->c:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_cancel:I

    const-string v1, "field \'tvDialogCancel\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 54
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_cancel:I

    const-string v1, "field \'tvDialogCancel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->tvDialogCancel:Landroid/widget/TextView;

    .line 55
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->d:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    .line 71
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->tvDialogOk:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->tvDialogMore:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->tvDialogCancel:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->b:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->c:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
