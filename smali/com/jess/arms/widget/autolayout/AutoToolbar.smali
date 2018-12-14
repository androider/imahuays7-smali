.class public Lcom/jess/arms/widget/autolayout/AutoToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "AutoToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;
    }
.end annotation


# static fields
.field private static final NO_VALID:I = -0x1


# instance fields
.field private final mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

.field private mSubTextSize:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/jess/arms/widget/autolayout/AutoToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/jess/arms/widget/autolayout/AutoToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {v0, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    .line 53
    sget-object v0, Lcom/jess/arms/widget/autolayout/R$styleable;->Toolbar:[I

    sget v1, Lcom/jess/arms/widget/autolayout/R$style;->Widget_AppCompat_Toolbar:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    sget p2, Lcom/jess/arms/widget/autolayout/R$styleable;->Toolbar_titleTextAppearance:I

    sget p3, Lcom/jess/arms/widget/autolayout/R$style;->TextAppearance_Widget_AppCompat_Toolbar_Title:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 59
    sget p3, Lcom/jess/arms/widget/autolayout/R$styleable;->Toolbar_subtitleTextAppearance:I

    sget v0, Lcom/jess/arms/widget/autolayout/R$style;->TextAppearance_Widget_AppCompat_Toolbar_Subtitle:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 62
    invoke-direct {p0, p2}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->loadTextSizeFromTextAppearance(I)I

    move-result p2

    iput p2, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar;->mTextSize:I

    .line 63
    invoke-direct {p0, p3}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->loadTextSizeFromTextAppearance(I)I

    move-result p2

    iput p2, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar;->mSubTextSize:I

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadTextSizeFromTextAppearance(I)I
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/jess/arms/widget/autolayout/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
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

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    .line 82
    :cond_0
    :try_start_1
    sget v0, Lcom/jess/arms/widget/autolayout/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private setUpTitleTextSize()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar;->mTextSize:I

    if-eq v0, v1, :cond_0

    const-string v0, "mTitleTextView"

    .line 91
    iget v2, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar;->mTextSize:I

    invoke-direct {p0, v0, v2}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->setUpTitleTextSize(Ljava/lang/String;I)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar;->mSubTextSize:I

    if-eq v0, v1, :cond_1

    const-string v0, "mSubtitleTextView"

    .line 94
    iget v1, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar;->mSubTextSize:I

    invoke-direct {p0, v0, v1}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->setUpTitleTextSize(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private setUpTitleTextSize(Ljava/lang/String;I)V
    .locals 1

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 104
    invoke-static {p2}, Lcom/zhy/autolayout/utils/AutoUtils;->getPercentHeightSize(I)I

    move-result p2

    const/4 v0, 0x0

    int-to-float p2, p2

    .line 105
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;
    .locals 2

    .line 128
    new-instance v0, Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;

    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jess/arms/widget/autolayout/AutoToolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 123
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/Toolbar;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/jess/arms/widget/autolayout/AutoToolbar;->setUpTitleTextSize()V

    .line 116
    iget-object v0, p0, Lcom/jess/arms/widget/autolayout/AutoToolbar;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-virtual {v0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->adjustChildren()V

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;->onMeasure(II)V

    return-void
.end method
