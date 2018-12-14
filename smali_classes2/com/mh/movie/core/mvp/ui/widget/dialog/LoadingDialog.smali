.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/wang/avi/AVLoadingIndicatorView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->c:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_loading:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setContentView(I)V

    .line 30
    sget p1, Lcom/mh/movie/core/R$id;->tv_message:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->a:Landroid/widget/TextView;

    .line 34
    sget p1, Lcom/mh/movie/core/R$id;->avi:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 35
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->a()V

    .line 39
    invoke-virtual {p0, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->a()V

    return-void
.end method
