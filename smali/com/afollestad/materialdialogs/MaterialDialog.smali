.class public Lcom/afollestad/materialdialogs/MaterialDialog;
.super Lcom/afollestad/materialdialogs/DialogBase;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/MaterialDialog$c;,
        Lcom/afollestad/materialdialogs/MaterialDialog$g;,
        Lcom/afollestad/materialdialogs/MaterialDialog$b;,
        Lcom/afollestad/materialdialogs/MaterialDialog$e;,
        Lcom/afollestad/materialdialogs/MaterialDialog$f;,
        Lcom/afollestad/materialdialogs/MaterialDialog$d;,
        Lcom/afollestad/materialdialogs/MaterialDialog$ListType;,
        Lcom/afollestad/materialdialogs/MaterialDialog$a;,
        Lcom/afollestad/materialdialogs/MaterialDialog$DialogException;,
        Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;
    }
.end annotation


# instance fields
.field protected final b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/EditText;

.field protected e:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(Landroid/view/View;)Z
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->k:Lcom/afollestad/materialdialogs/MaterialDialog$f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 308
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    aget-object v0, v0, v1

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->k:Lcom/afollestad/materialdialogs/MaterialDialog$f;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    invoke-interface {v1, p0, p1, v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$f;->a(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private d()Z
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Lcom/afollestad/materialdialogs/MaterialDialog$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b:[Ljava/lang/CharSequence;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_2

    goto :goto_0

    .line 319
    :cond_2
    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b:[Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v3, v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_3
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Lcom/afollestad/materialdialogs/MaterialDialog$e;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-interface {v1, p0, v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$e;->a(Lcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    return-object v0
.end method

.method public final a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    return-object v0
.end method

.method public final c()Landroid/widget/EditText;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/a/a;->b(Landroid/content/DialogInterface;Lcom/afollestad/materialdialogs/MaterialDialog$a;)V

    .line 1811
    :cond_0
    invoke-super {p0}, Lcom/afollestad/materialdialogs/DialogBase;->dismiss()V

    return-void
.end method

.method public bridge synthetic findViewById(I)Landroid/view/View;
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/DialogBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/DialogAction;

    .line 329
    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:[I

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/DialogAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 331
    :pswitch_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    invoke-virtual {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$b;->a(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 333
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    invoke-virtual {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$b;->b(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->f:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->f:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    invoke-interface {v1, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$g;->onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->o:Z

    if-nez v1, :cond_2

    .line 338
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->a(Landroid/view/View;)Z

    .line 339
    :cond_2
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->n:Z

    if-nez p1, :cond_3

    .line 340
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->d()Z

    .line 341
    :cond_3
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->u:Lcom/afollestad/materialdialogs/MaterialDialog$c;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->v:Z

    if-nez p1, :cond_4

    .line 342
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->u:Lcom/afollestad/materialdialogs/MaterialDialog$c;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$c;->a(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    .line 343
    :cond_4
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->q:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    if-eqz p1, :cond_5

    .line 348
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$b;->a(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 349
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$b;->c(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 351
    :cond_5
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->g:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    if-eqz p1, :cond_6

    .line 352
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->g:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    invoke-interface {p1, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$g;->onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    .line 353
    :cond_6
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->q:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_0

    .line 357
    :pswitch_2
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    if-eqz p1, :cond_7

    .line 358
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$b;->a(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 359
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/MaterialDialog$b;

    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$b;->d(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 361
    :cond_7
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->h:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    if-eqz p1, :cond_8

    .line 362
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->h:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    invoke-interface {p1, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$g;->onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    .line 363
    :cond_8
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->q:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 367
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->i:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    if-eqz p1, :cond_a

    .line 368
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->i:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    invoke-interface {p1, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$g;->onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->m:Lcom/afollestad/materialdialogs/MaterialDialog$d;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 169
    instance-of p4, p2, Landroid/widget/TextView;

    if-eqz p4, :cond_0

    .line 170
    move-object p1, p2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 171
    :cond_0
    iget-object p4, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p4, p4, Lcom/afollestad/materialdialogs/MaterialDialog$a;->m:Lcom/afollestad/materialdialogs/MaterialDialog$d;

    invoke-interface {p4, p0, p2, p3, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->e:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->e:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object p4, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne p1, p4, :cond_2

    goto/16 :goto_1

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->e:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object p4, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-ne p1, p4, :cond_6

    .line 184
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->f:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 185
    sget p4, Lcom/afollestad/materialdialogs/R$id;->control:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    if-eqz p1, :cond_5

    .line 188
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->f:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->n:Z

    if-eqz p1, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->f:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 199
    :cond_4
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 203
    :cond_5
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->f:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p2, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->n:Z

    if-eqz p1, :cond_b

    .line 206
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->d()Z

    goto :goto_2

    .line 208
    :cond_6
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->e:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object p4, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne p1, p4, :cond_b

    .line 210
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->s:Landroid/widget/ListAdapter;

    check-cast p1, Lcom/afollestad/materialdialogs/a;

    .line 211
    sget p4, Lcom/afollestad/materialdialogs/R$id;->control:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RadioButton;

    .line 213
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->q:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    .line 215
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 219
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iput p3, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    .line 220
    invoke-direct {p0, p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->a(Landroid/view/View;)Z

    const/4 p2, 0x0

    goto :goto_0

    .line 221
    :cond_7
    iget-object p5, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p5, p5, Lcom/afollestad/materialdialogs/MaterialDialog$a;->o:Z

    if-eqz p5, :cond_8

    .line 222
    iget-object p5, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget p5, p5, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    .line 224
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iput p3, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    .line 226
    invoke-direct {p0, p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->a(Landroid/view/View;)Z

    move-result p2

    .line 228
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iput p5, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    goto :goto_0

    :cond_8
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_b

    .line 232
    iget-object p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iput p3, p2, Lcom/afollestad/materialdialogs/MaterialDialog$a;->p:I

    .line 233
    invoke-virtual {p4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 234
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/a;->notifyDataSetChanged()V

    goto :goto_2

    .line 174
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->q:Z

    if-eqz p1, :cond_a

    .line 176
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 178
    :cond_a
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->j:Lcom/afollestad/materialdialogs/MaterialDialog$d;

    if-eqz p1, :cond_b

    .line 179
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->j:Lcom/afollestad/materialdialogs/MaterialDialog$d;

    iget-object p4, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object p4, p4, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b:[Ljava/lang/CharSequence;

    aget-object p4, p4, p3

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1752
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    invoke-static {p0, v0}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/DialogInterface;Lcom/afollestad/materialdialogs/MaterialDialog$a;)V

    .line 1754
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1757
    :cond_0
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/DialogBase;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public bridge synthetic setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/DialogBase;->setContentView(I)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/DialogBase;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1, p2}, Lcom/afollestad/materialdialogs/DialogBase;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1498
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1492
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 1350
    :try_start_0
    invoke-super {p0}, Lcom/afollestad/materialdialogs/DialogBase;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1352
    :catch_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$DialogException;

    const-string v1, "Bad window token, you cannot show a dialog before an Activity is created or after it\'s hidden."

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$DialogException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
