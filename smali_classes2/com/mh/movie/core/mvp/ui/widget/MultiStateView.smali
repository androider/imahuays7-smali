.class public Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;
.super Landroid/widget/FrameLayout;
.source "MultiStateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;,
        Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->i:Z

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    .line 77
    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->i:Z

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    .line 82
    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    return p0
.end method

.method private a()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tag_multistateview:I

    const-string v2, "loading"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;->a(ILandroid/view/View;)V

    .line 444
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    if-eq v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->d:Landroid/view/LayoutInflater;

    .line 87
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/R$styleable;->MultiStateView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    sget v0, Lcom/mh/movie/core/R$styleable;->MultiStateView_msv_loadingView:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a:I

    .line 91
    sget v0, Lcom/mh/movie/core/R$styleable;->MultiStateView_msv_emptyView:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b:I

    .line 93
    sget v0, Lcom/mh/movie/core/R$styleable;->MultiStateView_msv_errorView:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->c:I

    .line 95
    sget v0, Lcom/mh/movie/core/R$styleable;->MultiStateView_msv_viewState:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 96
    sget v3, Lcom/mh/movie/core/R$styleable;->MultiStateView_msv_animateViewChanges:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->i:Z

    packed-switch v0, :pswitch_data_0

    .line 117
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    .line 112
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    .line 108
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    goto :goto_0

    .line 100
    :pswitch_3
    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    .line 121
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;)Z
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    if-eq v0, p1, :cond_0

    return v1

    .line 314
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->tag_multistateview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 318
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 319
    check-cast p1, Ljava/lang/String;

    const-string v2, "empty"

    .line 320
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "error"

    .line 321
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "loading"

    .line 322
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;)Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->k:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    .line 453
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tag_multistateview:I

    const-string v2, "empty"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;->a(ILandroid/view/View;)V

    .line 457
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    if-eq v0, v1, :cond_1

    .line 458
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 420
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 424
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "alpha"

    const/4 v1, 0x2

    .line 425
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 426
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 434
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private c()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->c:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 465
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    .line 466
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tag_multistateview:I

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->k:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->btn_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;->a(ILandroid/view/View;)V

    .line 482
    :cond_1
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    if-eq v0, v1, :cond_2

    .line 483
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setView(I)V
    .locals 3

    .line 223
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    .line 285
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    if-nez v0, :cond_f

    .line 287
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Content View"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :pswitch_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a()V

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 229
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Loading View"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_3
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->i:Z

    if-eqz v0, :cond_4

    .line 237
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b(Landroid/view/View;)V

    goto/16 :goto_0

    .line 239
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 245
    :pswitch_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b()V

    .line 247
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    if-nez v0, :cond_5

    .line 248
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Empty View"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_7
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_8
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->i:Z

    if-eqz v0, :cond_9

    .line 257
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b(Landroid/view/View;)V

    goto/16 :goto_0

    .line 259
    :cond_9
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 265
    :pswitch_2
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->c()V

    .line 267
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    if-nez v0, :cond_a

    .line 268
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Error View"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_a
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_b
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_c
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_d
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->i:Z

    if-eqz v0, :cond_e

    .line 277
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b(Landroid/view/View;)V

    goto :goto_0

    .line 279
    :cond_e
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 291
    :cond_f
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_10
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_11
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_12
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->i:Z

    if-eqz v0, :cond_13

    .line 296
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b(Landroid/view/View;)V

    goto :goto_0

    .line 298
    :cond_13
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 181
    :pswitch_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a()V

    .line 183
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->f:Landroid/view/View;

    return-object p1

    .line 190
    :pswitch_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->b()V

    .line 192
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->h:Landroid/view/View;

    return-object p1

    .line 196
    :pswitch_2
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->c()V

    .line 198
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->g:Landroid/view/View;

    return-object p1

    .line 186
    :pswitch_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .line 136
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 142
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    .line 143
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .line 160
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    .line 161
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 148
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    .line 149
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 154
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    .line 155
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 166
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1

    .line 172
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    .line 173
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p1

    return p1
.end method

.method public getViewState()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->e:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content view is not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    .line 128
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setView(I)V

    return-void
.end method

.method public setAnimateLayoutChanges(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->i:Z

    return-void
.end method

.method public setRefershListener(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->k:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$a;

    return-void
.end method

.method public setStateListener(Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    return-void
.end method

.method public setViewState(I)V
    .locals 1

    .line 213
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    if-eq p1, v0, :cond_0

    .line 214
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    .line 215
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    .line 216
    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->setView(I)V

    .line 217
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->j:Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView;->l:I

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MultiStateView$b;->a(I)V

    :cond_0
    return-void
.end method
