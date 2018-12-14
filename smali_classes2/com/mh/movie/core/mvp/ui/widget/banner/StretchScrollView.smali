.class public Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;
.super Landroid/widget/ScrollView;
.source "StretchScrollView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c:Z

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d:I

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->e:I

    .line 33
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->f:Landroid/os/Handler;

    .line 55
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c:Z

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d:I

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->e:I

    .line 33
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->f:Landroid/os/Handler;

    .line 61
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c:Z

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d:I

    .line 31
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->e:I

    .line 33
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->f:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d:I

    return p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 114
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->b:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    .line 115
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->b:F

    .line 116
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    const/16 v1, 0x190

    if-ge p1, v1, :cond_0

    const/16 v1, -0x190

    if-le p1, v1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a:Landroid/view/View;

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->scrollBy(II)V

    .line 120
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c:Z

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d:I

    .line 105
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c:Z

    .line 107
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->e:I

    .line 108
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 132
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 134
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->e:I

    return p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;)Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->b:F

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/StretchScrollView;->a(Landroid/view/MotionEvent;)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
