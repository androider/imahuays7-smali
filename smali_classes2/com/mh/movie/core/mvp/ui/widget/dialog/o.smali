.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/o;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;
    }
.end annotation


# instance fields
.field public a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->k:I

    .line 38
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->l:I

    .line 39
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->m:I

    .line 41
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->n:Z

    .line 51
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->o:Landroid/content/Context;

    .line 52
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->n:Z

    .line 53
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 68
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$layout;->dialog_portrait_share_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$layout;->dialog_landspace_share_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_moments:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->e:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->d:Landroid/widget/LinearLayout;

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_qq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->f:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_qzone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->g:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_web:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->h:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_copy_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->i:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->j:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/p;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/p;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/o;)V

    .line 93
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->o:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$style;->AppDialogStyle:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 114
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->n:Z

    if-nez v1, :cond_1

    const/16 v1, 0x50

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 116
    sget v1, Lcom/mh/movie/core/R$style;->AnimBottom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x11

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :goto_1
    const/high16 v1, 0x20000

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public a(III)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->k:I

    .line 58
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->l:I

    .line 59
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->m:I

    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->n:Z

    .line 64
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->c()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 153
    sget v0, Lcom/mh/movie/core/R$id;->cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_moments:I

    if-ne p1, v0, :cond_1

    .line 157
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    if-eqz p1, :cond_6

    .line 159
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;->a()V

    goto :goto_0

    .line 161
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_wechat:I

    if-ne p1, v0, :cond_2

    .line 163
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    if-eqz p1, :cond_6

    .line 165
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;->b()V

    goto :goto_0

    .line 167
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_qq:I

    if-ne p1, v0, :cond_3

    .line 169
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    if-eqz p1, :cond_6

    .line 171
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;->c()V

    goto :goto_0

    .line 173
    :cond_3
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_qzone:I

    if-ne p1, v0, :cond_4

    .line 175
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    if-eqz p1, :cond_6

    .line 177
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;->d()V

    goto :goto_0

    .line 179
    :cond_4
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_web:I

    if-ne p1, v0, :cond_5

    .line 181
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    if-eqz p1, :cond_6

    .line 183
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;->e()V

    goto :goto_0

    .line 185
    :cond_5
    sget v0, Lcom/mh/movie/core/R$id;->ll_copy_link:I

    if-ne p1, v0, :cond_6

    .line 187
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    if-eqz p1, :cond_6

    .line 189
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;->f()V

    .line 192
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
