.class public Lcom/jess/arms/widget/autolayout/AutoTabLayout;
.super Landroid/support/design/widget/TabLayout;
.source "AutoTabLayout.java"


# static fields
.field private static final NO_VALID:I = -0x1


# instance fields
.field private mTextSize:I

.field private mTextSizeBaseWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/jess/arms/widget/autolayout/AutoTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/jess/arms/widget/autolayout/AutoTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->mTextSizeBaseWidth:Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->initTextSizeBaseWidth(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v0, Lcom/jess/arms/widget/autolayout/R$styleable;->TabLayout:[I

    sget v1, Lcom/jess/arms/widget/autolayout/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    sget p2, Lcom/jess/arms/widget/autolayout/R$styleable;->TabLayout_tabTextAppearance:I

    sget p3, Lcom/jess/arms/widget/autolayout/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 64
    invoke-direct {p0, p2}, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->loadTextSizeFromTextAppearance(I)I

    move-result p2

    iput p2, p0, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->mTextSize:I

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initTextSizeBaseWidth(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/jess/arms/widget/autolayout/R$styleable;->AutoTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    sget p2, Lcom/jess/arms/widget/autolayout/R$styleable;->AutoTabLayout_auto_textSize_base_width:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->mTextSizeBaseWidth:Z

    .line 71
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadTextSizeFromTextAppearance(I)I
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jess/arms/widget/autolayout/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    :try_start_0
    sget v0, Lcom/jess/arms/widget/autolayout/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0}, Lcom/zhy/autolayout/utils/DimenUtils;->isPxVal(Landroid/util/TypedValue;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    .line 81
    :cond_0
    :try_start_1
    sget v0, Lcom/jess/arms/widget/autolayout/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private setUpTabTextSize(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 100
    iget v0, p0, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->mTextSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 107
    invoke-static {p1}, Lcom/zhy/autolayout/utils/AutoUtils;->autoed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 111
    :cond_1
    iget-boolean v1, p0, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->mTextSizeBaseWidth:Z

    if-eqz v1, :cond_2

    .line 112
    iget v1, p0, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->mTextSize:I

    invoke-static {v1}, Lcom/zhy/autolayout/utils/AutoUtils;->getPercentWidthSize(I)I

    move-result v1

    goto :goto_0

    .line 114
    :cond_2
    iget v1, p0, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->mTextSize:I

    invoke-static {v1}, Lcom/zhy/autolayout/utils/AutoUtils;->getPercentHeightSize(I)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 90
    invoke-direct {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->setUpTabTextSize(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 96
    invoke-direct {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoTabLayout;->setUpTabTextSize(Landroid/support/design/widget/TabLayout$Tab;)V

    return-void
.end method
