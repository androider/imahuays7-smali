.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;
.super Landroid/app/Dialog;
.source "DownApkDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->b:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->tv_certain:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->c:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog$a;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_down_apk:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/DownApkDialog;->a()V

    return-void
.end method
