.class public Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerOnScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;
    }
.end annotation


# instance fields
.field private a:[I

.field private b:I

.field protected c:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->d:I

    return-void
.end method

.method private a([I)I
    .locals 4

    const/4 v0, 0x0

    .line 92
    aget v1, p1, v0

    .line 93
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 75
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 76
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->d:I

    .line 77
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 79
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    if-lez v0, :cond_0

    .line 80
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->b:I

    add-int/lit8 p2, p2, -0x1

    if-lt v0, p2, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 40
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->c:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    if-nez p2, :cond_3

    .line 43
    instance-of p2, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p2, :cond_0

    .line 44
    sget-object p2, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->LinearLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->c:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    goto :goto_0

    .line 45
    :cond_0
    instance-of p2, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p2, :cond_1

    .line 46
    sget-object p2, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->GridLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->c:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    goto :goto_0

    .line 47
    :cond_1
    instance-of p2, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_2

    .line 48
    sget-object p2, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->StaggeredGridLayout:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->c:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    goto :goto_0

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_3
    :goto_0
    sget-object p2, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$1;->a:[I

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->c:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener$LayoutManagerType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 63
    :pswitch_0
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 64
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->a:[I

    if-nez p2, :cond_4

    .line 65
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->a:[I

    .line 67
    :cond_4
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->a:[I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->a:[I

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->a([I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->b:I

    goto :goto_1

    .line 60
    :pswitch_1
    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->b:I

    goto :goto_1

    .line 57
    :pswitch_2
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;->b:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
