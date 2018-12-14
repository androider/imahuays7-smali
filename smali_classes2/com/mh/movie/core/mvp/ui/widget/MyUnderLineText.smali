.class public Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;
.super Landroid/widget/LinearLayout;
.source "MyUnderLineText.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    sget-object v0, Lcom/mh/movie/core/R$styleable;->MyUnderLineText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 53
    sget v0, Lcom/mh/movie/core/R$styleable;->MyUnderLineText_ul_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->a:Ljava/lang/String;

    .line 54
    sget v0, Lcom/mh/movie/core/R$styleable;->MyUnderLineText_ul_left_margin:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->b:F

    .line 55
    sget v0, Lcom/mh/movie/core/R$styleable;->MyUnderLineText_ul_visibility:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->c:Z

    .line 56
    sget v0, Lcom/mh/movie/core/R$styleable;->MyUnderLineText_ul_enable_right_arrow:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->d:Z

    .line 57
    sget v0, Lcom/mh/movie/core/R$styleable;->MyUnderLineText_ul_title_color:I

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->e:I

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->under_line_text:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->f:Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->f:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->tv_:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->g:Landroid/widget/TextView;

    .line 62
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->f:Landroid/view/View;

    sget p2, Lcom/mh/movie/core/R$id;->under_line_:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->h:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->g:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->g:Landroid/widget/TextView;

    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->e:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->d:Z

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->b:F

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->h:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->h:Landroid/view/View;

    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->c:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->f:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
