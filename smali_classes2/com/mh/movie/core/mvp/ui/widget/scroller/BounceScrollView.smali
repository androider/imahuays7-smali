.class public Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;
.super Landroid/widget/ScrollView;
.source "BounceScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroid/view/View;

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$a;

.field private k:Landroid/view/View;

.field private l:Landroid/graphics/Rect;

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->a:F

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b:I

    .line 20
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c:I

    .line 22
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->d:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->f:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 38
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->g:F

    .line 45
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->h:F

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->n:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 9

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 133
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->a:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->f:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 134
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->m:I

    sub-int v3, v1, v3

    .line 135
    iget-boolean v4, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->n:Z

    if-eqz v4, :cond_0

    .line 137
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->n:Z

    goto :goto_0

    :cond_0
    move v2, v3

    .line 140
    :goto_0
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->m:I

    .line 141
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->a()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    .line 144
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 143
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    mul-int/lit8 v6, v2, 0x2

    div-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    .line 148
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v6

    .line 147
    invoke-virtual {v1, v4, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 149
    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->j:Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$a;

    if-eqz v1, :cond_2

    .line 151
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->i:Z

    if-nez v1, :cond_2

    .line 152
    iput-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->i:Z

    .line 153
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c()V

    .line 154
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->j:Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$a;

    invoke-interface {v1}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$a;->a()V

    .line 160
    :cond_2
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->d:Z

    if-nez v1, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_6

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->a:F

    :cond_3
    if-gez v0, :cond_4

    goto :goto_1

    .line 169
    :cond_4
    iput-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->d:Z

    int-to-float p1, v0

    .line 170
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->setZoom(F)V

    goto :goto_1

    .line 174
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 175
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c()V

    .line 177
    :cond_5
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->d:Z

    .line 178
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b()V

    :cond_6
    :goto_1
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;F)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->setZoom(F)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    if-lez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    .line 113
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->h:F

    mul-float v0, v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 120
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private c()V
    .locals 6

    .line 190
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 194
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 197
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->n:Z

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->i:Z

    return-void
.end method

.method private setZoom(F)V
    .locals 6

    .line 95
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-double v0, v0

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 97
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 100
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    mul-float v1, v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 104
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 203
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    :cond_0
    const/4 v0, 0x2

    .line 72
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->setOverScrollMode(I)V

    .line 73
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c:I

    if-gtz v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b:I

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c:I

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->b:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->c:I

    if-gtz v0, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 86
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->a(Landroid/view/MotionEvent;)V

    .line 88
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 83
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCallBack(Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$a;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->j:Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView$a;

    return-void
.end method

.method public setZoomView(Landroid/view/View;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->e:Landroid/view/View;

    return-void
.end method

.method public setmReplyRatio(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->h:F

    return-void
.end method

.method public setmScaleRatio(F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->f:F

    return-void
.end method

.method public setmScaleTimes(I)V
    .locals 0

    int-to-float p1, p1

    .line 41
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->g:F

    return-void
.end method

.method public setmView(Landroid/view/View;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/BounceScrollView;->k:Landroid/view/View;

    return-void
.end method
