.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ShareToFriendDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_ok:I

    const-string v1, "field \'tvDialogOk\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    sget v1, Lcom/mh/movie/core/R$id;->tv_dialog_ok:I

    const-string v2, "field \'tvDialogOk\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->tvDialogOk:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->b:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_cancel:I

    const-string v1, "field \'tvDialogCancel\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_cancel:I

    const-string v1, "field \'tvDialogCancel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->tvDialogCancel:Landroid/widget/TextView;

    .line 43
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->c:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    .line 59
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->tvDialogOk:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->tvDialogCancel:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->b:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
