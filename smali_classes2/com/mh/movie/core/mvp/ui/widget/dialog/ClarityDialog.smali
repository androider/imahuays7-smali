.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;
.super Landroid/app/Dialog;
.source "ClarityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->m:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->b:Landroid/content/Context;

    .line 55
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->m:I

    return-void
.end method

.method private c()V
    .locals 2

    .line 129
    sget v0, Lcom/mh/movie/core/R$id;->ll_clarity_0:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/d;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/d;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v0, Lcom/mh/movie/core/R$id;->ll_clarity_1:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/e;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/e;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget v0, Lcom/mh/movie/core/R$id;->ll_clarity_2:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/f;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/f;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v0, Lcom/mh/movie/core/R$id;->ll_clarity_3:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/g;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/g;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/h;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/h;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 76
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x50

    .line 77
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->c:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 116
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 120
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 122
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->dismiss()V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 84
    sget v0, Lcom/mh/movie/core/R$id;->iv_clarity_3:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->g:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/mh/movie/core/R$id;->iv_clarity_2:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->h:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/mh/movie/core/R$id;->iv_clarity_1:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->i:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/mh/movie/core/R$id;->iv_clarity_0:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->j:Landroid/widget/ImageView;

    .line 89
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_0:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->c:Landroid/widget/RadioButton;

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->c:Landroid/widget/RadioButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_1:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->d:Landroid/widget/RadioButton;

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->d:Landroid/widget/RadioButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_2:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->e:Landroid/widget/RadioButton;

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->e:Landroid/widget/RadioButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_3:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->f:Landroid/widget/RadioButton;

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->f:Landroid/widget/RadioButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_cancel:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->k:Landroid/widget/TextView;

    .line 98
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->m:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 149
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_0:I

    if-ne p1, v0, :cond_0

    .line 150
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->c:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_1:I

    if-ne p1, v0, :cond_1

    .line 153
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->d:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_2:I

    if-ne p1, v0, :cond_2

    .line 156
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->e:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_3:I

    if-ne p1, v0, :cond_3

    .line 159
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->f:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog$a;->a(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 142
    sget p1, Lcom/mh/movie/core/R$id;->rb_clarity_3:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->b(I)V

    return-void
.end method

.method public c(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final synthetic c(Landroid/view/View;)V
    .locals 0

    .line 138
    sget p1, Lcom/mh/movie/core/R$id;->rb_clarity_2:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->b(I)V

    return-void
.end method

.method final synthetic d(Landroid/view/View;)V
    .locals 0

    .line 134
    sget p1, Lcom/mh/movie/core/R$id;->rb_clarity_1:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->b(I)V

    return-void
.end method

.method final synthetic e(Landroid/view/View;)V
    .locals 0

    .line 130
    sget p1, Lcom/mh/movie/core/R$id;->rb_clarity_0:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->b(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mh/movie/core/R$id;->iv_clarity_close:I

    if-ne p1, v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_clarity:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->a()V

    .line 68
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->b()V

    .line 69
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityDialog;->c()V

    return-void
.end method
