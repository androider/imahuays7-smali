.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;
.super Landroid/app/Dialog;
.source "PermissionSuccessDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog$a;


# direct methods
.method private a()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/l;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/l;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 55
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->a:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_message:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->b:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_ok:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog$a;

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog$a;->a()V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_permission_success:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 39
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->b()V

    .line 40
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PermissionSuccessDialog;->a()V

    return-void
.end method
