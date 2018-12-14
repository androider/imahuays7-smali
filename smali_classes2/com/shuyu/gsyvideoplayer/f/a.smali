.class public Lcom/shuyu/gsyvideoplayer/f/a;
.super Ljava/lang/Object;
.source "SmallVideoTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/f/a;->c:I

    .line 23
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/f/a;->d:I

    .line 24
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/f/a;->g:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/f/a;->g:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 50
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/f/a;->e:I

    sub-int/2addr p1, v2

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 53
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/f/a;->f:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 55
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/f/a;->c:I

    if-lt p1, v0, :cond_0

    .line 56
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/f/a;->c:I

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 59
    :cond_0
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/f/a;->d:I

    if-lt p1, v0, :cond_1

    .line 60
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/f/a;->d:I

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 63
    :cond_1
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_2

    .line 64
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 67
    :cond_2
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-gtz p1, :cond_3

    .line 68
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/f/a;->g:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/f/a;->b:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_4

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/f/a;->a:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v0, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 33
    :pswitch_2
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/f/a;->a:I

    .line 34
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/f/a;->b:I

    .line 36
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/f/a;->g:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 37
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/f/a;->e:I

    .line 39
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/f/a;->f:I

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
