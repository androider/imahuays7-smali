.class public final Lcom/paginate/a/d;
.super Lcom/paginate/a;
.source "RecyclerPaginate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paginate/a/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView;

.field private final b:Lcom/paginate/a$a;

.field private final c:I

.field private d:Lcom/paginate/a/e;

.field private e:Lcom/paginate/a/f;

.field private final f:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private final g:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/paginate/a$a;IZLcom/paginate/a/b;Lcom/paginate/a/c;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/paginate/a;-><init>()V

    .line 109
    new-instance v0, Lcom/paginate/a/d$1;

    invoke-direct {v0, p0}, Lcom/paginate/a/d$1;-><init>(Lcom/paginate/a/d;)V

    iput-object v0, p0, Lcom/paginate/a/d;->f:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 116
    new-instance v0, Lcom/paginate/a/d$2;

    invoke-direct {v0, p0}, Lcom/paginate/a/d$2;-><init>(Lcom/paginate/a/d;)V

    iput-object v0, p0, Lcom/paginate/a/d;->g:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 24
    iput-object p1, p0, Lcom/paginate/a/d;->a:Landroid/support/v7/widget/RecyclerView;

    .line 25
    iput-object p2, p0, Lcom/paginate/a/d;->b:Lcom/paginate/a$a;

    .line 26
    iput p3, p0, Lcom/paginate/a/d;->c:I

    .line 29
    iget-object p2, p0, Lcom/paginate/a/d;->f:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    if-eqz p4, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    .line 34
    new-instance p3, Lcom/paginate/a/e;

    invoke-direct {p3, p2, p5}, Lcom/paginate/a/e;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/paginate/a/b;)V

    iput-object p3, p0, Lcom/paginate/a/d;->d:Lcom/paginate/a/e;

    .line 35
    iget-object p3, p0, Lcom/paginate/a/d;->g:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 36
    iget-object p2, p0, Lcom/paginate/a/d;->d:Lcom/paginate/a/e;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 39
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p2, :cond_0

    .line 40
    new-instance p2, Lcom/paginate/a/f;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p3

    iget-object p4, p0, Lcom/paginate/a/d;->d:Lcom/paginate/a/e;

    invoke-direct {p2, p3, p6, p4}, Lcom/paginate/a/f;-><init>(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;Lcom/paginate/a/c;Lcom/paginate/a/e;)V

    iput-object p2, p0, Lcom/paginate/a/d;->e:Lcom/paginate/a/f;

    .line 44
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object p2, p0, Lcom/paginate/a/d;->e:Lcom/paginate/a/f;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/paginate/a/d;->a()V

    return-void
.end method

.method static synthetic a(Lcom/paginate/a/d;)Lcom/paginate/a/e;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/paginate/a/d;->d:Lcom/paginate/a/e;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/paginate/a/d;->d:Lcom/paginate/a/e;

    iget-object v1, p0, Lcom/paginate/a/d;->b:Lcom/paginate/a$a;

    invoke-interface {v1}, Lcom/paginate/a$a;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paginate/a/e;->a(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/paginate/a/d;->a()V

    return-void
.end method

.method static synthetic b(Lcom/paginate/a/d;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/paginate/a/d;->b()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/paginate/a/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/paginate/a/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/paginate/a/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/paginate/a/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    goto :goto_0

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/paginate/a/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_4

    .line 85
    iget-object v2, p0, Lcom/paginate/a/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/paginate/a/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v2

    aget v3, v2, v3

    :cond_1
    :goto_0
    sub-int v0, v1, v0

    .line 95
    iget v2, p0, Lcom/paginate/a/d;->c:I

    add-int/2addr v3, v2

    if-le v0, v3, :cond_2

    if-nez v1, :cond_3

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/paginate/a/d;->b:Lcom/paginate/a$a;

    invoke-interface {v0}, Lcom/paginate/a$a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/paginate/a/d;->b:Lcom/paginate/a$a;

    invoke-interface {v0}, Lcom/paginate/a$a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/paginate/a/d;->b:Lcom/paginate/a$a;

    invoke-interface {v0}, Lcom/paginate/a$a;->a()V

    :cond_3
    return-void

    .line 91
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayoutManager needs to subclass LinearLayoutManager or StaggeredGridLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/paginate/a/d;->d:Lcom/paginate/a/e;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/paginate/a/d;->d:Lcom/paginate/a/e;

    invoke-virtual {v0, p1}, Lcom/paginate/a/e;->a(Z)V

    :cond_0
    return-void
.end method
