.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;
.super Landroid/widget/FrameLayout;
.source "VideoLoadingView.java"


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/View;

.field private f:[Ljava/lang/String;

.field private g:Landroid/animation/ValueAnimator;

.field private h:Lcom/mh/movie/core/mvp/ui/widget/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->a:Z

    const/4 p2, 0x4

    .line 27
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "     "

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, ".    "

    aput-object v0, p2, p1

    const-string p1, ". .  "

    const/4 v0, 0x2

    aput-object p1, p2, v0

    const-string p1, ". . ."

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->f:[Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->layout_video_loading_view:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->addView(Landroid/view/View;)V

    .line 37
    sget p1, Lcom/mh/movie/core/R$id;->tv_play_load_3point:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->b:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/mh/movie/core/R$id;->rl_loading:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->d:Landroid/widget/RelativeLayout;

    .line 39
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->b()V

    .line 40
    sget p1, Lcom/mh/movie/core/R$id;->tv_player_video_loading_speed:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->c:Landroid/widget/TextView;

    .line 41
    sget p1, Lcom/mh/movie/core/R$id;->progress:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->e:Landroid/view/View;

    .line 42
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/w;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/widget/w;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->h:Lcom/mh/movie/core/mvp/ui/widget/w;

    .line 43
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->e:Landroid/view/View;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->h:Lcom/mh/movie/core/mvp/ui/widget/w;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;)[Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->f:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;)Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->b:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->h:Lcom/mh/movie/core/mvp/ui/widget/w;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/w;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->h:Lcom/mh/movie/core/mvp/ui/widget/w;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/w;->stop()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->g:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 88
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->g:Landroid/animation/ValueAnimator;

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->g:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->invalidate()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->a()V

    if-nez p1, :cond_2

    .line 54
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->a:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->a:Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->h:Lcom/mh/movie/core/mvp/ui/widget/w;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/w;->start()V

    :cond_2
    :goto_0
    return-void
.end method
