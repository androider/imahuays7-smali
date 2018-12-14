.class public Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
.super Landroid/widget/FrameLayout;
.source "RecyclerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;
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

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View;

.field private h:Lin/srain/cube/views/ptr/PtrClassicFrameLayout;

.field private i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

.field private j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

.field private k:Lcom/mh/movie/core/mvp/ui/adapter/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/adapter/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private l:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;

.field private m:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private n:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    .line 33
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->c:I

    const/4 p3, 0x0

    .line 35
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d:Z

    .line 36
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e:Z

    const-string p3, "playRecord"

    .line 40
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f:Ljava/lang/String;

    .line 315
    new-instance p3, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;

    invoke-direct {p3, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->n:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;

    .line 343
    new-instance p3, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$4;

    invoke-direct {p3, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$4;-><init>(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b:Landroid/view/View$OnClickListener;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mh/movie/core/R$layout;->recycler_wrapper_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->g:Landroid/view/View;

    .line 90
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->g:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->ptr_frame:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->h:Lin/srain/cube/views/ptr/PtrClassicFrameLayout;

    .line 91
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->g:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->mv_state:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    .line 92
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->g:Landroid/view/View;

    sget v0, Lcom/mh/movie/core/R$id;->rv_list:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    .line 93
    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    .line 96
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->n:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->h:Lin/srain/cube/views/ptr/PtrClassicFrameLayout;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->ptrFrameAddHeader(Landroid/content/Context;Lin/srain/cube/views/ptr/PtrClassicFrameLayout;)V

    .line 100
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->h:Lin/srain/cube/views/ptr/PtrClassicFrameLayout;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)V

    invoke-virtual {p1, p2}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setPtrHandler(Lin/srain/cube/views/ptr/b;)V

    .line 119
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->g:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->l:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lcom/mh/movie/core/mvp/ui/adapter/r;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->k:Lcom/mh/movie/core/mvp/ui/adapter/r;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lin/srain/cube/views/ptr/PtrClassicFrameLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->h:Lin/srain/cube/views/ptr/PtrClassicFrameLayout;

    return-object p0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d:Z

    .line 359
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 251
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f()V

    .line 252
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 230
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f()V

    .line 231
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, p1, p2, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->handleErrorLayout(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 267
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f()V

    .line 268
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 269
    sget v1, Lcom/mh/movie/core/R$id;->iv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 270
    sget v2, Lcom/mh/movie/core/R$id;->tv_empty:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 271
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 241
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f()V

    .line 242
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;

    const/16 v1, 0x3e8

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;-><init>(Ljava/lang/Throwable;I)V

    const-string p1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 243
    iput-object p1, v0, Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;->message:Ljava/lang/String;

    .line 244
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b:Landroid/view/View$OnClickListener;

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->handleErrorLayout(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;Lcom/mh/movie/core/mvp/ui/utils/ExceptionHandle$ResponseThrowable;Landroid/view/View$OnClickListener;)V

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

    .line 199
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d:Z

    .line 200
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->k:Lcom/mh/movie/core/mvp/ui/adapter/r;

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/ui/adapter/r;->b(Ljava/util/List;)V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->c:I

    if-ge p1, v1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d:Z

    .line 215
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->k:Lcom/mh/movie/core/mvp/ui/adapter/r;

    invoke-virtual {v1, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/r;->a(Ljava/util/List;Z)V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->c:I

    if-ge p1, p2, :cond_0

    .line 217
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 258
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f()V

    .line 260
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 261
    sget v2, Lcom/mh/movie/core/R$id;->tv_empty:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->getEmptyText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->k:Lcom/mh/movie/core/mvp/ui/adapter/r;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/r;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e:Z

    .line 286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->h:Lin/srain/cube/views/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->c()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d:Z

    .line 294
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setVisibility(I)V

    return-void
.end method

.method public getEmptyText()Ljava/lang/String;
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x29c0908f

    if-eq v1, v2, :cond_1

    const v2, 0x5bcfaca5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "playRecord"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "no_record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "\u6682\u65e0\u6570\u636e"

    goto :goto_2

    :pswitch_0
    const-string v0, "\u6682\u65e0\u8bb0\u5f55\uff01"

    goto :goto_2

    :pswitch_1
    const-string v0, "\u4f60\u8fd8\u6ca1\u6709\u64ad\u653e\u8bb0\u5f55\u54df\uff0c\u5feb\u53bb\u89c2\u770b\u7cbe\u5f69\u5f71\u7247\u5427\uff01"

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->m:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->m:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->m:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 137
    instance-of v1, v0, Landroid/support/v7/widget/SimpleItemAnimator;

    if-eqz v1, :cond_1

    .line 138
    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 142
    :cond_1
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->k:Lcom/mh/movie/core/mvp/ui/adapter/r;

    .line 143
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

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

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->e:Z

    .line 173
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->d()V

    .line 174
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->k:Lcom/mh/movie/core/mvp/ui/adapter/r;

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/ui/adapter/r;->a(Ljava/util/List;)V

    .line 175
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b()V

    return-void

    .line 180
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->c:I

    if-ge p1, v1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->i:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setViewState(I)V

    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->m:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 153
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->m:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of p1, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->m:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    .line 155
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public setNoDataShow(Z)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->j:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setNoDataShow(Z)V

    return-void
.end method

.method public setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->l:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;

    return-void
.end method

.method public setTipsType(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f:Ljava/lang/String;

    return-void
.end method
