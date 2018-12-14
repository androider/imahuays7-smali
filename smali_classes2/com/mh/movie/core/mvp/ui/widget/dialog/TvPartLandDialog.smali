.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;
.super Landroid/app/Dialog;
.source "TvPartLandDialog.java"


# instance fields
.field a:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field b:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private c()V
    .locals 3

    .line 124
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 125
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->a:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 129
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 130
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->b:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 108
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 109
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x50

    .line 110
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x3f4ccccd    # 0.8f

    .line 111
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 117
    sget v0, Lcom/mh/movie/core/R$id;->recycler_view_pager:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->c:Landroid/support/v7/widget/RecyclerView;

    .line 118
    sget v0, Lcom/mh/movie/core/R$id;->recycler_view_tv_part:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->d:Landroid/support/v7/widget/RecyclerView;

    .line 120
    sget v0, Lcom/mh/movie/core/R$id;->iv_clarity_close:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/s;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/s;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_tv_part_land:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->a()V

    .line 47
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->b()V

    .line 48
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->c()V

    .line 49
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/TvPartLandDialog;->d()V

    return-void
.end method
