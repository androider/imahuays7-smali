.class public Lcom/mh/movie/core/mvp/ui/widget/h;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "HeaderGridLayoutDecoration.java"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/h;->a:I

    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/h;->b:I

    .line 12
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/h;->a:I

    .line 13
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/h;->b:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 18
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 21
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/h;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 23
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/h;->a:I

    rem-int/2addr p2, p3

    if-eqz p2, :cond_1

    .line 24
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/h;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method
