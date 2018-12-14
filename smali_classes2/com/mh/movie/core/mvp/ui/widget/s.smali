.class public Lcom/mh/movie/core/mvp/ui/widget/s;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "RecyclerViewDecoration.java"


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->a:I

    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->b:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->c:Z

    .line 19
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->a:I

    .line 20
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->b:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->a:I

    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->b:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->c:Z

    .line 13
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->a:I

    .line 14
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->b:I

    .line 15
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->c:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 25
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 26
    iget-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->c:Z

    if-eqz p3, :cond_0

    if-eqz p2, :cond_1

    .line 28
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 30
    :cond_0
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->a:I

    rem-int/2addr p2, p3

    if-eqz p2, :cond_1

    .line 31
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/s;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method
