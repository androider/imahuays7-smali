.class public Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$SavedState;,
        Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;,
        Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Landroid/graphics/Typeface;

.field private E:I

.field private F:I

.field private G:I

.field private H:Ljava/util/Locale;

.field public a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private b:Landroid/widget/LinearLayout$LayoutParams;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private final d:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance p3, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;)V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->d:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;

    const/4 p3, 0x0

    .line 77
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->i:I

    .line 78
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->j:I

    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->k:F

    const v1, -0x99999a

    .line 84
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->n:I

    const/high16 v1, 0x1a000000

    .line 85
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->o:I

    .line 86
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->p:I

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->q:Z

    .line 89
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->r:Z

    .line 90
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->s:Z

    const/16 v2, 0x34

    .line 92
    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->t:I

    const/16 v2, 0x8

    .line 93
    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->u:I

    const/4 v2, 0x2

    .line 94
    iput v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->v:I

    const/16 v3, 0x1e

    .line 95
    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->w:I

    const/16 v3, 0xc

    .line 96
    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    const/16 v3, 0x18

    .line 97
    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    .line 98
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->z:I

    const/16 v3, 0xe

    .line 100
    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->A:I

    const v3, -0x7d7a75

    .line 101
    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->B:I

    const/high16 v3, -0x79000000

    .line 102
    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->C:I

    .line 103
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->D:Landroid/graphics/Typeface;

    .line 104
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->E:I

    .line 106
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->F:I

    .line 108
    sget v0, Lcom/mh/movie/core/R$drawable;->pager_tab_pressed_background:I

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->G:I

    .line 124
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 125
    invoke-virtual {p0, p3}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 127
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->t:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->t:I

    .line 135
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->u:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->u:I

    .line 136
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->w:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->w:I

    .line 137
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    .line 138
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    .line 139
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->z:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->z:I

    .line 140
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->A:I

    int-to-float v3, v3

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->A:I

    .line 144
    sget-object v0, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 146
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->n:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->n:I

    .line 147
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->o:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->o:I

    .line 148
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->p:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->p:I

    .line 149
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->u:I

    .line 150
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->u:I

    .line 151
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsIndicatorWidth:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->w:I

    .line 152
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->w:I

    .line 153
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->v:I

    .line 154
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->v:I

    .line 156
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    .line 157
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    .line 158
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->G:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->G:I

    .line 159
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->q:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->q:Z

    .line 160
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->t:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->t:I

    .line 161
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsTextAllCaps:I

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->r:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->r:Z

    .line 162
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsTextClick:I

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->s:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->s:Z

    .line 163
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_pstsSelectedTabTextColor:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->C:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->C:I

    .line 165
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_android_textColor:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->B:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->B:I

    .line 166
    sget p2, Lcom/mh/movie/core/R$styleable;->PagerSlidingTabStrip_android_textSize:I

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->A:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->A:I

    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    .line 171
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    .line 175
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->z:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->H:Ljava/util/Locale;

    if-nez p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->H:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->k:F

    return p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->i:I

    return p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->f:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private a(II)V
    .locals 5

    .line 274
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 281
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 283
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    add-int/lit8 v4, p1, 0x64

    .line 285
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setId(I)V

    .line 286
    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 287
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 293
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 294
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 296
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 303
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 305
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->s:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 315
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->q:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    .line 240
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 241
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 247
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 249
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v5, p1, 0x64

    .line 250
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 251
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 252
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 253
    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 254
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->h:I

    .line 257
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 259
    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    .line 260
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 261
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 262
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 264
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b(II)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->i:I

    return p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->j:I

    return p1
.end method

.method private b()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 344
    :goto_0
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->g:I

    if-ge v1, v2, :cond_3

    .line 345
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 346
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 348
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->G:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 352
    check-cast v2, Landroid/widget/TextView;

    .line 353
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->A:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 355
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->B:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 360
    iget-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->r:Z

    if-eqz v3, :cond_1

    .line 361
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    .line 362
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_1

    .line 364
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->H:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_1
    :goto_1
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->j:I

    if-ne v1, v3, :cond_2

    .line 368
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->C:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(II)V
    .locals 1

    .line 377
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->g:I

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 384
    :cond_1
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->t:I

    sub-int/2addr v0, p1

    .line 387
    :cond_2
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->F:I

    if-eq v0, p1, :cond_3

    .line 388
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->F:I

    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 206
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->g:I

    const/4 v0, 0x0

    .line 208
    :goto_0
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->g:I

    if-ge v0, v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$a;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$a;

    invoke-interface {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$a;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(II)V

    goto :goto_1

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    .line 220
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .line 528
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->p:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 546
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->n:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->u:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->t:I

    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    .line 609
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->C:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->q:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 624
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->G:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 633
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 595
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->B:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->A:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->o:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->v:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 396
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 398
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->g:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getHeight()I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->o:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    .line 406
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->v:I

    sub-int v1, v0, v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    int-to-float v11, v0

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    move-object v3, p1

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 410
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 415
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 419
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->k:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->i:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->g:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 421
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->i:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 422
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 423
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 425
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->k:F

    mul-float v5, v5, v4

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->k:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    mul-float v4, v4, v2

    add-float v2, v5, v4

    .line 426
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->k:F

    mul-float v4, v4, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->k:F

    sub-float/2addr v6, v3

    mul-float v6, v6, v1

    add-float v1, v4, v6

    :cond_1
    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 430
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->w:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v8, v2, v1

    .line 431
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->w:I

    int-to-float v1, v1

    add-float v10, v8, v1

    .line 432
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->u:I

    sub-int v1, v0, v1

    int-to-float v9, v1

    iget-object v12, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 435
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->p:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 436
    :goto_0
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 438
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 638
    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$SavedState;

    .line 639
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 640
    iget p1, p1, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$SavedState;->a:I

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->i:I

    .line 641
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 646
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 647
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 648
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->i:I

    iput v0, v1, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$SavedState;->a:I

    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .line 572
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->r:Z

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 518
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->p:I

    .line 519
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->p:I

    .line 524
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 541
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->x:I

    .line 542
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 481
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->n:I

    .line 482
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->n:I

    .line 487
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->u:I

    .line 496
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 550
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->t:I

    .line 551
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0

    .line 599
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->C:I

    .line 600
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    return-void
.end method

.method public setSelectedTextColorResource(I)V
    .locals 1

    .line 604
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->C:I

    .line 605
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->q:Z

    .line 560
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a()V

    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 619
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->G:I

    .line 620
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 628
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->y:I

    .line 629
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 585
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->B:I

    .line 586
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->B:I

    .line 591
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 576
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->A:I

    .line 577
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->b()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 504
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->o:I

    .line 505
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->o:I

    .line 510
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 532
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->v:I

    .line 533
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 187
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->f:Landroid/support/v4/view/ViewPager;

    .line 189
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->d:Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip$b;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 195
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PagerSlidingTabStrip;->a()V

    return-void
.end method
