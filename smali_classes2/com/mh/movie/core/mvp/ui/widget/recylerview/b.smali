.class public Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderAndFooterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->b:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->c:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->d:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->b:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->c:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->d:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 64
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 74
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 75
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "your adapter must be a RecyclerView.Adapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->notifyItemRangeRemoved(II)V

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->d:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 83
    :cond_1
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->d:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 85
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    .line 105
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "footer is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->notifyDataSetChanged()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/high16 v0, -0x80000000

    add-int/2addr p1, v0

    return p1

    :cond_0
    if-gt v1, p1, :cond_2

    add-int v2, v1, v0

    if-ge p1, v2, :cond_2

    .line 193
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    const v0, 0x3fffffff    # 1.9999999f

    if-lt p1, v0, :cond_1

    .line 195
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "your adapter\'s return value of getViewTypeCount() must < Integer.MAX_VALUE / 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/2addr p1, v0

    return p1

    :cond_2
    const v2, -0x7fffffff

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 174
    instance-of p2, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz p2, :cond_1

    .line 175
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a()I

    move-result v0

    const/high16 v1, -0x80000000

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 159
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->b:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$a;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    const v1, -0x7fffffff

    if-lt p2, v1, :cond_1

    if-ge p2, v0, :cond_1

    .line 161
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->c:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b$a;-><init>(Landroid/view/View;)V

    return-object p1

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
