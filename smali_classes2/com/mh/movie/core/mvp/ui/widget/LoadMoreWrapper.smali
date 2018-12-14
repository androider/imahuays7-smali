.class public Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;
.super Landroid/widget/FrameLayout;
.source "LoadMoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView;

.field b:Landroid/view/View$OnClickListener;

.field private c:Z

.field private d:I

.field private e:Landroid/view/View;

.field private f:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

.field private g:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

.field private h:Lcom/mh/movie/core/mvp/ui/adapter/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/adapter/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private i:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;

.field private j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private k:Ljava/lang/String;

.field private l:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 31
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->c:Z

    const/16 p3, 0xa

    .line 38
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->d:I

    const-string p3, "playRecord"

    .line 48
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->k:Ljava/lang/String;

    .line 163
    new-instance p3, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;

    invoke-direct {p3, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->l:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;

    .line 184
    new-instance p3, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$4;

    invoke-direct {p3, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$4;-><init>(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->b:Landroid/view/View$OnClickListener;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Lcom/mh/movie/core/mvp/ui/adapter/r;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->h:Lcom/mh/movie/core/mvp/ui/adapter/r;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->load_more_recycler_wrapper:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->e:Landroid/view/View;

    .line 73
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->e:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->mv_state:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->f:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    .line 74
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->e:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->rv_list:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    .line 75
    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->g:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->l:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 77
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->e:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;)Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->g:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->h:Lcom/mh/movie/core/mvp/ui/adapter/r;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/r;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->b()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->c:Z

    .line 210
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->h:Lcom/mh/movie/core/mvp/ui/adapter/r;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/r;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->h:Lcom/mh/movie/core/mvp/ui/adapter/r;

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/ui/adapter/r;->b(Ljava/util/List;)V

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->d:I

    if-ge p1, v1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->g:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->g:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->c:Z

    .line 247
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->f:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 248
    sget v2, Lcom/mh/movie/core/R$id;->tv_empty:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->getEmptyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->f:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    return-void
.end method

.method public getEmptyText()Ljava/lang/String;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "downloaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "playRecord"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "downloading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "collection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "\u6682\u65e0\u6570\u636e"

    goto :goto_2

    :pswitch_0
    const-string v0, "\u770b\u5b98\uff0c\u672a\u641c\u7d22\u5230\u76f8\u5173\u5f71\u7247\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5\uff01"

    goto :goto_2

    :pswitch_1
    const-string v0, "\u6682\u65e0\u6536\u85cf\u8bb0\u5f55\uff0c\u8d76\u7d27\u53bb\u6536\u85cf\u5427\uff01"

    goto :goto_2

    :pswitch_2
    const-string v0, "\u4f60\u8fd8\u6ca1\u6709\u64ad\u653e\u8bb0\u5f55\u54df\uff0c\u5feb\u53bb\u89c2\u770b\u7cbe\u5f69\u5f71\u7247\u5427\uff01"

    goto :goto_2

    :pswitch_3
    const-string v0, "\u4f60\u8fd8\u6ca1\u6709\u7f13\u5b58\u89c6\u9891\u54e6\uff01\u7f13\u5b58\u540e\u6ca1\u7f51\u4e5f\u80fd\u770b\uff01"

    goto :goto_2

    :pswitch_4
    const-string v0, "\u6ca1\u6709\u7f13\u5b58\u4efb\u52a1\uff0c\u5feb\u53bb\u7f13\u5b58\u5427\uff01"

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x67ca5162 -> :sswitch_4
        -0x48305da6 -> :sswitch_3
        -0x36059a58 -> :sswitch_2
        0x5bcfaca5 -> :sswitch_1
        0x798ad327 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/ui/adapter/r<",
            "TT;>;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/support/v7/widget/SimpleItemAnimator;

    if-eqz v1, :cond_1

    .line 94
    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->h:Lcom/mh/movie/core/mvp/ui/adapter/r;

    .line 98
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->g:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-static {v0, v1, p1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->recycleViewLoadForMore(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->h:Lcom/mh/movie/core/mvp/ui/adapter/r;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/r;->a(Ljava/util/List;)V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->b()V

    return-void

    .line 199
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->d:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    .line 201
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->g:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->f:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    return-void
.end method

.method public setHeaderSpanLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 146
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 147
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    .line 149
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 130
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 131
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    .line 133
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public setNoDataShow(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->g:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setNoDataShow(Z)V

    return-void
.end method

.method public setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->d:I

    return-void
.end method

.method public setTipsType(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->k:Ljava/lang/String;

    return-void
.end method
