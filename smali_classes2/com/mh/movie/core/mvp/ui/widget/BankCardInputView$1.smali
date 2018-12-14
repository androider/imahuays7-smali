.class Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;
.super Ljava/lang/Object;
.source "BankCardInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 119
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    if-le v1, v3, :cond_f

    .line 123
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    const-string v5, ""

    .line 124
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 127
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    add-int/lit8 v7, v5, 0x1

    .line 128
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    invoke-static {v8, v5}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, " "

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    :cond_4
    move v5, v7

    goto :goto_2

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v5}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->c(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)Landroid/text/TextWatcher;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v2, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    if-eqz v0, :cond_d

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v0

    if-le v0, v3, :cond_6

    goto/16 :goto_5

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v0

    if-nez v0, :cond_a

    .line 144
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    sub-int v2, v0, v1

    :cond_7
    invoke-virtual {p1, v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setSelection(I)V

    goto/16 :goto_7

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v1, v2, :cond_9

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v3

    :goto_3
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setSelection(I)V

    goto/16 :goto_7

    .line 152
    :cond_a
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v3

    goto :goto_4

    :cond_b
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_4
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setSelection(I)V

    goto :goto_7

    .line 155
    :cond_c
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->e(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setSelection(I)V

    goto :goto_7

    .line 139
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result v2

    if-gt v1, v2, :cond_e

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    goto :goto_6

    :cond_e
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->d(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)I

    move-result p1

    :goto_6
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setSelection(I)V

    .line 159
    :goto_7
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->c(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_f
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->a(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)I

    .line 106
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->b(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)I

    .line 107
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {p1, p4}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->c(Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;I)I

    return-void
.end method
