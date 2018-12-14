.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;
.super Landroid/app/Dialog;
.source "PartnerDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->tv_enter_in:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->a:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->b:Landroid/widget/ImageView;

    return-void
.end method

.method private b()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/j;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/k;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/k;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final synthetic b(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makePartner(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 43
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_partner:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->a()V

    .line 27
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->b()V

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method
