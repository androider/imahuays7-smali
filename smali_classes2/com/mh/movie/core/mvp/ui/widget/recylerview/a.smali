.class public Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FloatingItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:F

.field private j:F

.field private k:Landroid/content/Context;

.field private l:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 32
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IFF)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->e:Ljava/util/Map;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->m:Z

    .line 91
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->b:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->d:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v0, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->c:I

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .line 99
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->k:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->g:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/mh/movie/core/R$color;->grey_66:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 106
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->i:F

    .line 107
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->j:F

    .line 109
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->h:Landroid/graphics/Paint;

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->h:Landroid/graphics/Paint;

    const-string v0, "#f8f8f8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 12

    .line 190
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 191
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 194
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 195
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 197
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->e:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->c:I

    sub-int/2addr v3, v4

    .line 200
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->c:I

    add-int/2addr v4, v3

    .line 201
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 205
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    sub-int/2addr v3, v5

    .line 206
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    add-int/2addr v5, v3

    int-to-float v7, v0

    int-to-float v8, v3

    int-to-float v9, v1

    int-to-float v3, v5

    .line 207
    iget-object v11, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->h:Landroid/graphics/Paint;

    move-object v6, p1

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41a80000    # 21.0f

    .line 209
    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->k:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 210
    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    int-to-float v6, v6

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->i:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->j:F

    sub-float/2addr v3, v6

    .line 212
    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->e:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    :goto_0
    if-ltz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->l:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 223
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 166
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 167
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 168
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 170
    :cond_0
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->c:I

    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 11

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 123
    iget-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->m:Z

    if-nez p3, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return-void

    .line 130
    :cond_1
    invoke-direct {p0, p3}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->l:Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;

    invoke-interface {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a$a;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    add-int/lit8 v2, p3, 0x1

    .line 137
    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->b(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 140
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p3

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 141
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    if-ge v2, v3, :cond_3

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr v2, p3

    iget p3, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    sub-int/2addr v2, p3

    int-to-float p3, v2

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x1

    .line 149
    :cond_3
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    .line 150
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 151
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result p2

    .line 152
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    add-int/2addr v3, p2

    int-to-float v6, p3

    int-to-float v7, p2

    int-to-float v8, v2

    int-to-float p2, v3

    .line 153
    iget-object v10, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->h:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 p3, 0x41a80000    # 21.0f

    .line 154
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, p3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 155
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->i:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->j:F

    sub-float/2addr p2, v2

    .line 156
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method
