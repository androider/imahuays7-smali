.class public Lcom/mh/movie/core/mvp/ui/widget/LabelsView;
.super Landroid/view/ViewGroup;
.source "LabelsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;,
        Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;,
        Lcom/mh/movie/core/mvp/ui/widget/LabelsView$d;,
        Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;,
        Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;
    }
.end annotation


# static fields
.field private static final m:I

.field private static final n:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/ColorStateList;

.field private c:F

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

.field private l:I

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;

.field private s:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$d;

.field private t:I

.field private u:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->tag_key_data:I

    sput v0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->m:I

    .line 43
    sget v0, Lcom/mh/movie/core/R$id;->tag_key_position:I

    sput v0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->o:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->t:I

    .line 104
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->o:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->t:I

    .line 109
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a:Landroid/content/Context;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->o:Ljava/util/ArrayList;

    .line 47
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    .line 50
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    const/4 p3, 0x4

    .line 55
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->t:I

    .line 115
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a:Landroid/content/Context;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(II)I
    .locals 2

    .line 203
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 204
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingLeft()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingRight()I

    move-result v1

    add-int/2addr p2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 211
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 1

    .line 880
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    .line 879
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private a()V
    .locals 6

    .line 456
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 458
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 459
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->r:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v5, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->NONE:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 121
    sget-object v0, Lcom/mh/movie/core/R$styleable;->labels_view:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 122
    sget v0, Lcom/mh/movie/core/R$styleable;->labels_view_selectType:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 123
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->a(I)Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    .line 125
    sget v0, Lcom/mh/movie/core/R$styleable;->labels_view_maxSelect:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    .line 126
    sget v0, Lcom/mh/movie/core/R$styleable;->labels_view_labelTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    .line 127
    sget v0, Lcom/mh/movie/core/R$styleable;->labels_view_labelTextSize:I

    const/high16 v2, 0x41600000    # 14.0f

    .line 128
    invoke-static {p1, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 127
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->c:F

    .line 129
    sget p1, Lcom/mh/movie/core/R$styleable;->labels_view_labelTextPaddingLeft:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->e:I

    .line 131
    sget p1, Lcom/mh/movie/core/R$styleable;->labels_view_labelTextPaddingTop:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->f:I

    .line 133
    sget p1, Lcom/mh/movie/core/R$styleable;->labels_view_labelTextPaddingRight:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->g:I

    .line 135
    sget p1, Lcom/mh/movie/core/R$styleable;->labels_view_labelTextPaddingBottom:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->h:I

    .line 137
    sget p1, Lcom/mh/movie/core/R$styleable;->labels_view_lineMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->j:I

    .line 138
    sget p1, Lcom/mh/movie/core/R$styleable;->labels_view_wordMargin:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->i:I

    .line 139
    sget p1, Lcom/mh/movie/core/R$styleable;->labels_view_labelBackground:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 143
    :cond_0
    sget p1, Lcom/mh/movie/core/R$styleable;->labels_view_labelBackground:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 144
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->d:Landroid/graphics/drawable/Drawable;

    .line 146
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 3

    .line 489
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 490
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p2, :cond_0

    .line 492
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    sget v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->n:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    sget v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->n:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 496
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->s:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$d;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->s:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$d;

    sget v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->m:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->n:I

    .line 498
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 497
    invoke-interface {v0, p1, v1, p2, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$d;->a(Landroid/widget/TextView;Ljava/lang/Object;ZI)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Object;ILcom/mh/movie/core/mvp/ui/widget/LabelsView$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I",
            "Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 437
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 438
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->e:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->f:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->g:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->h:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 439
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 440
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 443
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    sget v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->m:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 446
    sget v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->n:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 447
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->addView(Landroid/view/View;)V

    .line 449
    invoke-interface {p3, v0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;->a(Landroid/widget/TextView;ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(II)I
    .locals 2

    .line 220
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 221
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 228
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 4

    .line 517
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 519
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/widget/TextView;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 3

    .line 705
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->e:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->f:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->g:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->h:I

    if-eq v0, p4, :cond_1

    .line 707
    :cond_0
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->e:I

    .line 708
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->f:I

    .line 709
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->g:I

    .line 710
    iput p4, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->h:I

    .line 711
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 713
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 714
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b()V

    .line 409
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->removeAllViews()V

    .line 410
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 416
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Ljava/lang/Object;ILcom/mh/movie/core/mvp/ui/widget/LabelsView$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a()V

    .line 421
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object p2, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    .line 422
    new-array p1, p1, [I

    aput v0, p1, v0

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setSelects([I)V

    :cond_2
    return-void
.end method

.method public getCompulsorys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelTextSize()F
    .locals 1

    .line 752
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->c:F

    return v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLineMargin()I
    .locals 1

    .line 793
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->j:I

    return v0
.end method

.method public getMaxSelect()I
    .locals 1

    .line 853
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    return v0
.end method

.method public getSelectLabelDatas()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 653
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 655
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 656
    sget v4, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->m:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 658
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSelectLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectType()Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    return-object v0
.end method

.method public getTextPaddingBottom()I
    .locals 1

    .line 732
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->h:I

    return v0
.end method

.method public getTextPaddingLeft()I
    .locals 1

    .line 720
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->e:I

    return v0
.end method

.method public getTextPaddingRight()I
    .locals 1

    .line 728
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->g:I

    return v0
.end method

.method public getTextPaddingTop()I
    .locals 1

    .line 724
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->f:I

    return v0
.end method

.method public getWordMargin()I
    .locals 1

    .line 807
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->i:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 465
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 466
    check-cast p1, Landroid/widget/TextView;

    .line 467
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->NONE:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-eq v0, v1, :cond_4

    .line 468
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    sget v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->n:I

    .line 470
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/widget/TextView;Z)V

    goto :goto_1

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->SINGLE:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->MULTI:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    .line 477
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 478
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/widget/TextView;Z)V

    goto :goto_1

    .line 474
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b()V

    .line 475
    invoke-direct {p0, p1, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/widget/TextView;Z)V

    .line 482
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->r:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;

    if-eqz v0, :cond_5

    .line 483
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->r:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;

    sget v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->m:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->n:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;->a(Landroid/widget/TextView;Ljava/lang/Object;I)V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 238
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingLeft()I

    move-result p1

    .line 239
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p4, p2

    .line 244
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result p2

    const/4 p5, 0x0

    const/4 v0, 0x1

    move v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    move p3, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_3

    .line 246
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 248
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge p4, v5, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingLeft()I

    move-result p3

    .line 250
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->j:I

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    .line 255
    :cond_0
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->t:I

    if-le v3, v5, :cond_2

    const/16 p1, 0x8

    .line 256
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->u:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->u:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;->a(Z)V

    :cond_1
    return-void

    .line 262
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, p3, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 263
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr p3, v5

    .line 264
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->i:I

    add-int/2addr p3, v5

    .line 265
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 153
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result v0

    .line 154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_0
    if-ge v4, v0, :cond_3

    .line 163
    invoke-virtual {p0, v4}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 164
    invoke-virtual {p0, v11, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->measureChild(Landroid/view/View;II)V

    if-nez v5, :cond_0

    .line 167
    iget v12, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->i:I

    add-int/2addr v9, v12

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 172
    :goto_1
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v9

    if-gt v1, v12, :cond_1

    add-int/lit8 v10, v10, 0x1

    .line 174
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->j:I

    add-int/2addr v6, v5

    add-int/2addr v6, v7

    .line 177
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v8, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 181
    :cond_1
    iget v12, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->t:I

    if-gt v10, v12, :cond_2

    .line 182
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 183
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(II)I

    move-result p1

    .line 189
    invoke-direct {p0, p2, v6}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b(II)I

    move-result p2

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setMeasuredDimension(II)V

    return-void

    :cond_3
    add-int/2addr v6, v7

    .line 195
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(II)I

    move-result p1

    .line 198
    invoke-direct {p0, p2, v6}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b(II)I

    move-result p2

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 330
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 331
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "key_super_state"

    .line 333
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "key_text_color_state"

    .line 336
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setLabelTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    const-string v0, "key_text_size_state"

    .line 341
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->c:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setLabelTextSize(F)V

    const-string v0, "key_padding_state"

    .line 348
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 349
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 350
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(IIII)V

    :cond_1
    const-string v0, "key_word_margin_state"

    .line 353
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->i:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setWordMargin(I)V

    const-string v0, "key_line_margin_state"

    .line 355
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->j:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setLineMargin(I)V

    const-string v0, "key_select_type_state"

    .line 357
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->a:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->a(I)Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setSelectType(Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;)V

    const-string v0, "key_max_select_state"

    .line 359
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setMaxSelect(I)V

    const-string v0, "key_select_compulsory_state"

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 368
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setCompulsorys(Ljava/util/List;)V

    :cond_2
    const-string v0, "key_select_labels_state"

    .line 371
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 372
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 373
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 374
    new-array v2, v0, [I

    :goto_0
    if-ge v1, v0, :cond_3

    .line 376
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setSelects([I)V

    :cond_4
    return-void

    .line 382
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_super_state"

    .line 291
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    const-string v1, "key_text_color_state"

    .line 294
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v1, "key_text_size_state"

    .line 297
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "key_padding_state"

    const/4 v2, 0x4

    .line 301
    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->e:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->f:I

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->g:I

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->h:I

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "key_word_margin_state"

    .line 304
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_line_margin_state"

    .line 306
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_select_type_state"

    .line 308
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_max_select_state"

    .line 310
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_select_labels_state"

    .line 317
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "key_select_compulsory_state"

    .line 322
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-object v0
.end method

.method public setCompulsorys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->MULTI:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 596
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b()V

    .line 597
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setSelects(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public varargs setCompulsorys([I)V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->MULTI:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 609
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 610
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setCompulsorys(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setLabelBackgroundColor(I)V
    .locals 1

    .line 679
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 688
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->d:Landroid/graphics/drawable/Drawable;

    .line 689
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 691
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 692
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelBackgroundResource(I)V
    .locals 1

    .line 670
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setLabelBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 0

    .line 761
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setLabelTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 770
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    .line 771
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 773
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 774
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_0
    const/high16 v2, -0x1000000

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLabelTextSize(F)V
    .locals 4

    .line 741
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 742
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->c:F

    .line 743
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 745
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 746
    invoke-virtual {v3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 391
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/LabelsView;)V

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Ljava/util/List;Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;)V

    return-void
.end method

.method public setLineMargin(I)V
    .locals 1

    .line 786
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->j:I

    if-eq v0, p1, :cond_0

    .line 787
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->j:I

    .line 788
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxLine(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->t:I

    return-void
.end method

.method public setMaxSelect(I)V
    .locals 1

    .line 843
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    if-eq v0, p1, :cond_0

    .line 844
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    .line 845
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->MULTI:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-ne p1, v0, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b()V

    :cond_0
    return-void
.end method

.method public setOnLabelClickListener(Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->r:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;

    .line 863
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a()V

    return-void
.end method

.method public setOnLabelSelectChangeListener(Lcom/mh/movie/core/mvp/ui/widget/LabelsView$d;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->s:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$d;

    return-void
.end method

.method public setOnLinesCallBack(Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->u:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;

    return-void
.end method

.method public setSelectType(Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-eq v0, p1, :cond_2

    .line 817
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    .line 819
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->b()V

    .line 821
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 822
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v0, p1, v0

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setSelects([I)V

    .line 825
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->MULTI:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-eq p1, v0, :cond_1

    .line 826
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 829
    :cond_1
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a()V

    :cond_2
    return-void
.end method

.method public setSelects(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 544
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 545
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 547
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setSelects([I)V

    :cond_1
    return-void
.end method

.method public varargs setSelects([I)V
    .locals 9

    .line 559
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->NONE:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-eq v0, v1, :cond_6

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildCount()I

    move-result v1

    .line 562
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->SINGLE:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->k:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    sget-object v3, Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$SelectType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->l:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 564
    :goto_1
    array-length v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_4

    aget v7, p1, v6

    if-ge v7, v1, :cond_3

    .line 566
    invoke-virtual {p0, v7}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 567
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 568
    invoke-direct {p0, v7, v4}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/widget/TextView;Z)V

    .line 569
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-lez v2, :cond_3

    .line 571
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 p1, 0x0

    :goto_4
    if-ge p1, v1, :cond_6

    .line 578
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 579
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 580
    invoke-direct {p0, v2, v5}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Landroid/widget/TextView;Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public setWordMargin(I)V
    .locals 1

    .line 800
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->i:I

    if-eq v0, p1, :cond_0

    .line 801
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->i:I

    .line 802
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->requestLayout()V

    :cond_0
    return-void
.end method
