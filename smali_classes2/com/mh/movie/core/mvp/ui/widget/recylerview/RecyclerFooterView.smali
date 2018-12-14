.class public Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;
.super Landroid/widget/RelativeLayout;
.source "RecyclerFooterView.java"


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/RelativeLayout;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->c:Z

    .line 22
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->c:Z

    .line 27
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->c:Z

    .line 32
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->loading_for_more:I

    invoke-static {v0, v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    sget v1, Lcom/mh/movie/core/R$id;->rl_loading_for_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->a:Landroid/widget/RelativeLayout;

    .line 38
    sget v1, Lcom/mh/movie/core/R$id;->rl_no_data:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->b:Landroid/widget/RelativeLayout;

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setNoDataShow(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->c:Z

    return-void
.end method

.method public setShowLoadView(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setVisibility(I)V

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 51
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->c:Z

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
