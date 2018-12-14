.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;
.super Landroid/app/Dialog;
.source "ClarityLandDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Dialog;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field a:Lcom/mh/movie/core/mvp/ui/adapter/a;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private c()V
    .locals 2

    .line 71
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/adapter/a;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->a:Lcom/mh/movie/core/mvp/ui/adapter/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 57
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x50

    .line 59
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x3f4ccccd    # 0.8f

    .line 60
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 66
    sget v0, Lcom/mh/movie/core/R$id;->recycler_view:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->c:Landroid/support/v7/widget/RecyclerView;

    .line 67
    sget v0, Lcom/mh/movie/core/R$id;->iv_clarity_close:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mh/movie/core/R$id;->iv_clarity_close:I

    if-ne p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_clarity_land:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->a()V

    .line 48
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->b()V

    .line 49
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->c()V

    .line 50
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ClarityLandDialog;->d()V

    return-void
.end method
