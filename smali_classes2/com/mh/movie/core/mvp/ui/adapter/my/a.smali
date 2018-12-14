.class public Lcom/mh/movie/core/mvp/ui/adapter/my/a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->b:Z

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->c:Z

    .line 14
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->d:Z

    .line 21
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    .line 22
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->c:Z

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->b:Z

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->c:Z

    .line 14
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->d:Z

    .line 26
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    .line 27
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->c:Z

    .line 28
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->d:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 34
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 36
    iget-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->c:Z

    if-eqz p3, :cond_0

    .line 37
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 38
    :cond_0
    iget-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->d:Z

    if-eqz p3, :cond_2

    .line 39
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    .line 40
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 41
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 43
    :cond_1
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 44
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 47
    :cond_2
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 48
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 49
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/my/a;->a:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method
