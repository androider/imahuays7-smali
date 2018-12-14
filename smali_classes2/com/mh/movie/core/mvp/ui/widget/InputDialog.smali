.class public Lcom/mh/movie/core/mvp/ui/widget/InputDialog;
.super Landroid/app/Dialog;
.source "InputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/InputDialog$a;,
        Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;
    }
.end annotation


# instance fields
.field public a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/view/inputmethod/InputMethodManager;

.field f:Z

.field private g:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$a;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->f:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->h:Z

    .line 49
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/mh/movie/core/mvp/ui/widget/InputDialog$b;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->f:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->h:Z

    .line 42
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;

    .line 43
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->dismiss()V

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;->a(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a()V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->dismiss()V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/InputDialog$a;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->g:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->d:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 163
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    if-eqz p2, :cond_1

    .line 164
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    if-eqz p2, :cond_1

    .line 168
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u590d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->show()V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->setSelection(I)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->show()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/i;->b(Landroid/view/View;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->f:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/mh/movie/core/R$layout;->dialog_input_comment_new:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_input_comment:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 80
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    .line 81
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v1, -0x1

    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x50

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    sget p1, Lcom/mh/movie/core/R$id;->et_play_commend:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    .line 87
    sget p1, Lcom/mh/movie/core/R$id;->iv_comment:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->d:Landroid/widget/ImageView;

    .line 88
    sget p1, Lcom/mh/movie/core/R$id;->tv_commend_input_send:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->b:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0, p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->setBackListener(Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;)V

    .line 92
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    invoke-virtual {p0, p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/j;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/j;-><init>(Lcom/mh/movie/core/mvp/ui/widget/InputDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/InputDialog;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 114
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 192
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;->a()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 181
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    sget p1, Lcom/mh/movie/core/R$drawable;->item_player_tv_part_selected:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/mh/movie/core/R$drawable;->item_player_tv_part_unselected:I

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 139
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
