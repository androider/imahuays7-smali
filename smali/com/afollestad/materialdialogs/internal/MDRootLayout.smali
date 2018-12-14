.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "MDRootLayout.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private final e:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/afollestad/materialdialogs/GravityEnum;

.field private o:I

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    .line 44
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    const/4 v1, 0x3

    .line 45
    new-array v1, v1, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 47
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Z

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    .line 56
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, v1, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    .line 44
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    const/4 v1, 0x3

    .line 45
    new-array v1, v1, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 47
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Z

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    .line 56
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    .line 44
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    const/4 v1, 0x3

    .line 45
    new-array v1, v1, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 47
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    .line 56
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 43
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    .line 44
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 47
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Z

    const/4 p4, 0x1

    .line 48
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    .line 56
    sget-object p4, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 567
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 570
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 571
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 572
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private a()V
    .locals 2

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 365
    sget-object v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->a:[I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    goto :goto_0

    .line 367
    :pswitch_1
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 93
    sget p3, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout_md_reduce_padding_no_title_no_buttons:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    .line 94
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_notitle_vertical_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:I

    .line 97
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_frame_vertical_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    .line 99
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_padding_frame_side:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:I

    .line 100
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    .line 102
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Landroid/graphics/Paint;

    .line 103
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:I

    .line 104
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Landroid/graphics/Paint;

    sget p3, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {p1, p3}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Landroid/view/View;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 386
    :cond_0
    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 387
    check-cast p1, Landroid/widget/ScrollView;

    .line 388
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/widget/ScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 392
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    :cond_2
    if-eqz p3, :cond_a

    .line 394
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    goto :goto_0

    .line 396
    :cond_3
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_6

    .line 397
    check-cast p1, Landroid/widget/AdapterView;

    .line 398
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/widget/AdapterView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 402
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    :cond_5
    if-eqz p3, :cond_a

    .line 404
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    goto :goto_0

    .line 406
    :cond_6
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 424
    :cond_7
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 428
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result p1

    if-eqz p2, :cond_8

    .line 430
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    :cond_8
    if-eqz p3, :cond_a

    .line 432
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    goto :goto_0

    .line 433
    :cond_9
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 434
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 435
    invoke-direct {p0, v0, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;ZZ)V

    .line 436
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eq p1, v0, :cond_a

    const/4 p2, 0x1

    .line 438
    invoke-direct {p0, p1, v1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;ZZ)V

    :cond_a
    :goto_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ZZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 444
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_3

    .line 446
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    if-nez p3, :cond_2

    .line 465
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 466
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0

    .line 468
    :cond_2
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 469
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 471
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    :cond_3
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ZZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 476
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 477
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    :cond_1
    if-eqz p3, :cond_3

    .line 483
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3

    if-eqz p4, :cond_2

    .line 484
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    :cond_3
    return-void
.end method

.method private a(Landroid/webkit/WebView;ZZZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 491
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 498
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result p1

    mul-float p3, p3, p1

    cmpg-float p1, p2, p3

    if-gez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/ViewGroup;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/webkit/WebView;ZZZ)V

    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 510
    instance-of v3, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_5

    .line 511
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 512
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 521
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-le v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    .line 514
    :cond_5
    new-instance p0, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;

    const-string v0, "Material Dialogs currently only supports LinearLayoutManager. Please report any new layout managers."

    invoke-direct {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v0
.end method

.method private static a(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 222
    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    if-eqz v3, :cond_2

    .line 223
    check-cast p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method

.method static synthetic a(Landroid/webkit/WebView;)Z
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/webkit/WebView;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/widget/AdapterView;)Z
    .locals 5

    .line 539
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 543
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 544
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 546
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 548
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_3

    return v2

    .line 551
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    if-le v0, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method private static a(Landroid/widget/ScrollView;)Z
    .locals 4

    .line 526
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 528
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 529
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-ge v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    return p1
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p0
.end method

.method private static b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 582
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 585
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 586
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 587
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static b(Landroid/webkit/WebView;)Z
    .locals 2

    .line 534
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result p0

    mul-float v1, v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    return p1
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 229
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x0

    .line 234
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v2, 0x0

    int-to-float v3, v0

    .line 239
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 114
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 116
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->titleFrame:I

    if-ne v3, v4, :cond_0

    .line 118
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNeutral:I

    if-ne v3, v4, :cond_1

    .line 120
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v2, v3, v0

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNegative:I

    if-ne v3, v4, :cond_2

    .line 122
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultPositive:I

    if-ne v3, v4, :cond_3

    .line 124
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x2

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v2, v3, v4

    goto :goto_1

    .line 126
    :cond_3
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 246
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 248
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    add-int/2addr p1, p3

    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    move p3, p1

    goto :goto_0

    .line 250
    :cond_0
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    if-eqz p1, :cond_1

    .line 251
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:I

    add-int/2addr p3, p1

    .line 254
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 255
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 257
    :cond_2
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 258
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    sub-int/2addr p5, p1

    .line 259
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_10

    aget-object v2, p1, v0

    .line 260
    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v3

    sub-int v3, p5, v3

    invoke-virtual {v2, p2, v3, p4, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 262
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p5, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_4
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    if-eqz p1, :cond_5

    .line 269
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    sub-int/2addr p5, p1

    .line 270
    :cond_5
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    sub-int p1, p5, p1

    .line 282
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:I

    .line 288
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_7

    .line 290
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v5, :cond_6

    add-int v2, p2, v1

    .line 292
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, -0x1

    goto :goto_2

    :cond_6
    sub-int v5, p4, v1

    .line 295
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v5, v2

    move v6, v2

    .line 298
    :goto_2
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, v3

    invoke-virtual {v7, v2, p1, v5, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 299
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_7
    const/4 v6, -0x1

    .line 302
    :goto_3
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 304
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v5, :cond_8

    add-int/2addr v1, p2

    .line 306
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    :goto_4
    const/4 v5, -0x1

    goto :goto_5

    .line 307
    :cond_8
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v5, :cond_9

    sub-int v2, p4, v1

    .line 309
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v2, v1

    goto :goto_4

    .line 311
    :cond_9
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:I

    add-int/2addr v1, p2

    .line 312
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    move v5, v2

    .line 315
    :goto_5
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, p3

    invoke-virtual {v7, v1, p1, v2, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    goto :goto_6

    :cond_a
    const/4 v5, -0x1

    .line 318
    :goto_6
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 320
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v2, :cond_b

    .line 321
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:I

    sub-int/2addr p4, p2

    .line 322
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    goto :goto_8

    .line 323
    :cond_b
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v2, :cond_c

    .line 324
    iget p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:I

    add-int/2addr p2, p4

    .line 325
    iget-object p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p4, p4, v0

    invoke-virtual {p4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    goto :goto_8

    :cond_c
    if-ne v5, v4, :cond_e

    if-eq v6, v4, :cond_e

    .line 328
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    sub-int v5, v6, p2

    :cond_d
    :goto_7
    move p2, v5

    move p4, v6

    goto :goto_8

    :cond_e
    if-ne v6, v4, :cond_f

    if-eq v5, v4, :cond_f

    .line 330
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    add-int v6, v5, p2

    goto :goto_7

    :cond_f
    if-ne v6, v4, :cond_d

    sub-int/2addr p4, p2

    .line 332
    div-int/2addr p4, v3

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v3

    sub-int v5, p4, p2

    .line 333
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    add-int v6, v5, p2

    goto :goto_7

    .line 339
    :goto_8
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p1, p4, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 343
    :cond_10
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-direct {p0, p1, p3, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 11

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 136
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    .line 140
    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 142
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v9, v3, v6

    if-eqz v9, :cond_0

    .line 143
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 144
    invoke-virtual {v9, v4, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    .line 145
    invoke-virtual {p0, v9, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 146
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/afollestad/materialdialogs/R$dimen;->md_neutral_button_margin:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    if-le v7, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 160
    :goto_1
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Z

    if-eqz v3, :cond_5

    .line 162
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v9, v3, v6

    if-eqz v9, :cond_4

    .line 163
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 164
    invoke-virtual {v9, v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    .line 165
    invoke-virtual {p0, v9, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 166
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :cond_6
    if-eqz v8, :cond_8

    .line 176
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Z

    if-eqz p1, :cond_7

    sub-int p1, v1, v7

    .line 178
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v4

    .line 179
    iget v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    goto :goto_4

    .line 181
    :cond_7
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    sub-int p1, v1, p1

    .line 182
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v4

    goto :goto_3

    .line 187
    :cond_8
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p1, 0x0

    move p1, v1

    :goto_3
    const/4 v3, 0x0

    .line 190
    :goto_4
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_9

    .line 191
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v7, v4}, Landroid/view/View;->measure(II)V

    .line 193
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr p1, v5

    goto :goto_5

    .line 194
    :cond_9
    iget-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    if-nez v5, :cond_a

    .line 195
    iget v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:I

    add-int/2addr p2, v5

    .line 198
    :cond_a
    :goto_5
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 199
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    sub-int v7, p1, v3

    const/high16 v9, -0x80000000

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 202
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v6, p1, p2

    if-gt v5, v6, :cond_d

    .line 203
    iget-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:Landroid/view/View;

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_c

    if-eqz v8, :cond_b

    goto :goto_6

    .line 207
    :cond_b
    iput-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    .line 208
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v3

    sub-int v4, p1, p2

    goto :goto_7

    .line 204
    :cond_c
    :goto_6
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    .line 205
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v4, p1, v2

    goto :goto_7

    .line 211
    :cond_d
    iput-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    goto :goto_7

    :cond_e
    move v4, p1

    :goto_7
    sub-int/2addr v1, v4

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 358
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a()V

    return-void
.end method

.method public setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    return-void
.end method

.method public setForceStack(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 348
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    return-void
.end method
