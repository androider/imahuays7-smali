.class public Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;
.super Landroid/widget/ScrollView;
.source "HeadZoomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$a;
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

.field private i:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->a:F

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->b:I

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    .line 33
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->d:Z

    const p1, 0x3ecccccd    # 0.4f

    .line 43
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->f:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->g:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 57
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->h:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->a:F

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->b:I

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    .line 33
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->d:Z

    const p1, 0x3ecccccd    # 0.4f

    .line 43
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->f:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->g:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 57
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->h:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->a:F

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->b:I

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    .line 33
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->d:Z

    const p1, 0x3ecccccd    # 0.4f

    .line 43
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->f:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->g:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 57
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->h:F

    return-void
.end method

.method private a()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    .line 130
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->h:F

    mul-float v0, v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;F)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->setZoom(F)V

    return-void
.end method

.method private setZoom(F)V
    .locals 6

    .line 112
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-double v0, v0

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 114
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    mul-float v1, v1, v2

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->b:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 121
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 71
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 72
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->i:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->i:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$a;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 79
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    if-gtz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->b:I

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->c:I

    if-gtz v0, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->d:Z

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_5

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->a:F

    .line 95
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->f:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->d:Z

    int-to-float v0, v0

    .line 98
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->setZoom(F)V

    return p1

    :pswitch_1
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->d:Z

    .line 102
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->a()V

    .line 105
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 84
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnScrollListener(Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$a;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->i:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$a;

    return-void
.end method

.method public setZoomView(Landroid/view/View;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->e:Landroid/view/View;

    return-void
.end method

.method public setmReplyRatio(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->h:F

    return-void
.end method

.method public setmScaleRatio(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->f:F

    return-void
.end method

.method public setmScaleTimes(I)V
    .locals 0

    int-to-float p1, p1

    .line 53
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->g:F

    return-void
.end method
