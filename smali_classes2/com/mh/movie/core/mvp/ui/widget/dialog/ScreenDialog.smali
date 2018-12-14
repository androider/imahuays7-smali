.class public abstract Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;
.super Landroid/app/Dialog;
.source "ScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Dialog;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field protected b:I

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->b:I

    return-void
.end method

.method private b()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;Z)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/m;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/m;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->d:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->i:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 112
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/mh/movie/core/R$id;->recycler_view:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->c:Landroid/support/v7/widget/RecyclerView;

    .line 114
    sget v0, Lcom/mh/movie/core/R$id;->linear_dialog_cancel:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->d:Landroid/widget/LinearLayout;

    .line 115
    sget v0, Lcom/mh/movie/core/R$id;->rb_clarity_cancel:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 54
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x50

    .line 55
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->dismiss()V

    return-void
.end method

.method protected abstract a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/ui/holder/t;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->h:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->g:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->f:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 96
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->i:Z

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->d:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_screen:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 44
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a()V

    .line 45
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->c()V

    .line 46
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->b()V

    return-void
.end method
