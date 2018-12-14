.class public Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;
.super Landroid/widget/ScrollView;
.source "PullScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$a;,
        Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/PointF;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$a;

.field private n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->f:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    .line 53
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->h:Z

    .line 74
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->f:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    .line 53
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->h:Z

    .line 74
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    .line 47
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->f:Landroid/graphics/PointF;

    const/4 p3, 0x0

    .line 50
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    .line 53
    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->h:Z

    .line 74
    sget-object p3, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 8

    .line 272
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->i:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->k:I

    sub-int/2addr v1, v2

    .line 273
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0xc8

    .line 274
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 275
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->i:I

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->j:I

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 280
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-direct {v0, v2, v2, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 281
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 282
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 285
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 288
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->k:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->i:I

    add-int/lit8 v1, v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->m:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$a;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->m:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$a;->a()V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x2

    .line 93
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->setOverScrollMode(I)V

    if-eqz p2, :cond_0

    .line 96
    sget-object v0, Lcom/mh/movie/core/R$styleable;->PullScrollView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    sget p2, Lcom/mh/movie/core/R$styleable;->PullScrollView_headerHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->b:I

    .line 100
    sget p2, Lcom/mh/movie/core/R$styleable;->PullScrollView_headerVisibleHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->c:I

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    .line 209
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    .line 213
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->h:Z

    if-eqz v0, :cond_0

    .line 214
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->h:Z

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->f:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    if-ne v2, v3, :cond_1

    .line 223
    sget-object v2, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    iput-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    goto :goto_0

    :cond_1
    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    if-ne v2, v3, :cond_2

    .line 225
    sget-object v2, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    iput-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    .line 228
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->a:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    if-ne v2, v3, :cond_4

    cmpg-float v2, p1, v0

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 231
    :goto_1
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    goto :goto_2

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->b:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    if-ne v1, v2, :cond_7

    .line 234
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_5

    const/4 v1, 0x1

    .line 235
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    :cond_5
    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    .line 237
    :cond_6
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->b:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->b:I

    int-to-float p1, p1

    .line 240
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    .line 245
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 244
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    mul-float v0, v0, p1

    .line 250
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->i:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->k:I

    .line 251
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->j:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->l:I

    .line 257
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->l:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->c:I

    sub-int/2addr v0, v1

    .line 258
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    .line 259
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int p1, v2

    if-gt v1, v0, :cond_9

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/view/View;->layout(IIII)V

    .line 266
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->k:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->l:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_9
    return-void
.end method

.method private b()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 128
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 145
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 137
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->getScrollY()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->h:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 168
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 169
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a()V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_1

    .line 179
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;->c:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->n:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$b;

    :cond_1
    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->f:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 161
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->i:I

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->k:I

    .line 162
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->j:I

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->l:I

    .line 163
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 191
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    .line 192
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->g:Z

    if-nez v1, :cond_3

    .line 194
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "PullScrollView"

    .line 196
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move p1, v0

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->a:Landroid/view/View;

    return-void
.end method

.method public setOnTurnListener(Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$a;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView;->m:Lcom/mh/movie/core/mvp/ui/widget/banner/PullScrollView$a;

    return-void
.end method
