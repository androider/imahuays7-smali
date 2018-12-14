.class public Lcom/zhy/autolayout/widget/MetroLayout;
.super Landroid/view/ViewGroup;
.source "MetroLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;,
        Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;
    }
.end annotation


# instance fields
.field private mAvailablePos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mDivider:I

.field private final mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {v0, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/zhy/autolayout/R$styleable;->MetroLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    sget p2, Lcom/zhy/autolayout/R$styleable;->MetroLayout_metro_divider:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mDivider:I

    .line 44
    iget p2, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mDivider:I

    invoke-static {p2}, Lcom/zhy/autolayout/utils/AutoUtils;->getPercentWidthSizeBigger(I)I

    move-result p2

    iput p2, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mDivider:I

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private findAvailablePos(Landroid/view/View;)Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;
    .locals 4

    .line 164
    new-instance p1, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;-><init>(Lcom/zhy/autolayout/widget/MetroLayout$1;)V

    .line 165
    iget-object v0, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p1, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->left:I

    .line 168
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getPaddingTop()I

    move-result v0

    iput v0, p1, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    .line 169
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p1, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    return-object p1

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    iget p1, p1, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    .line 173
    iget-object v1, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    .line 174
    iget-object v1, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    .line 176
    iget v3, v2, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    if-ge v3, p1, :cond_1

    .line 178
    iget p1, v2, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initAvailablePosition()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    new-instance v0, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;-><init>(Lcom/zhy/autolayout/widget/MetroLayout$1;)V

    .line 156
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->left:I

    .line 157
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getPaddingTop()I

    move-result v1

    iput v1, v0, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    .line 158
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    .line 159
    iget-object v1, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private mergeAvailablePosition()V
    .locals 8

    .line 126
    iget-object v0, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v2, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    .line 131
    iget-object v3, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    .line 133
    iget-object v4, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v3

    move-object v3, v2

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v2, v6, :cond_2

    .line 135
    iget v6, v3, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    iget v7, v5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    if-ne v6, v7, :cond_1

    .line 137
    iget v6, v3, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    iget v7, v5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    .line 138
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget v6, v3, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->left:I

    iput v6, v5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->left:I

    .line 140
    iget-object v5, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    goto :goto_1

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    .line 144
    iget-object v5, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private randomColor()V
    .locals 8

    .line 66
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0xff

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 68
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 70
    invoke-virtual {p0, v2}, Lcom/zhy/autolayout/widget/MetroLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x64

    .line 72
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/zhy/autolayout/widget/MetroLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;
    .locals 2

    .line 189
    new-instance v0, Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zhy/autolayout/widget/MetroLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 81
    invoke-direct {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->initAvailablePosition()V

    .line 85
    iget p1, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mDivider:I

    .line 87
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 89
    invoke-virtual {p0, p3}, Lcom/zhy/autolayout/widget/MetroLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 90
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-ne p5, v0, :cond_0

    goto :goto_2

    .line 92
    :cond_0
    invoke-direct {p0, p4}, Lcom/zhy/autolayout/widget/MetroLayout;->findAvailablePos(Landroid/view/View;)Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    move-result-object p5

    .line 93
    iget v0, p5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->left:I

    .line 94
    iget v1, p5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    .line 96
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 97
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v4, v0, v2

    add-int/2addr v3, v1

    .line 102
    invoke-virtual {p4, v0, v1, v4, v3}, Landroid/view/View;->layout(IIII)V

    add-int p4, v2, p1

    .line 104
    iget v1, p5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    if-ge p4, v1, :cond_1

    .line 106
    iget v1, p5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->left:I

    add-int/2addr v1, p4

    iput v1, p5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->left:I

    .line 107
    iget v1, p5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    sub-int/2addr v1, p4

    iput v1, p5, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    goto :goto_1

    .line 110
    :cond_1
    iget-object p4, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {p4, p5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    :goto_1
    new-instance p4, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;-><init>(Lcom/zhy/autolayout/widget/MetroLayout$1;)V

    .line 114
    iput v0, p4, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->left:I

    add-int/2addr v3, p1

    .line 115
    iput v3, p4, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->top:I

    .line 116
    iput v2, p4, Lcom/zhy/autolayout/widget/MetroLayout$MetroBlock;->width:I

    .line 117
    iget-object p5, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mAvailablePos:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->mergeAvailablePosition()V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->randomColor()V

    .line 56
    invoke-virtual {p0}, Lcom/zhy/autolayout/widget/MetroLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zhy/autolayout/widget/MetroLayout;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-virtual {v0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->adjustChildren()V

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zhy/autolayout/widget/MetroLayout;->measureChildren(II)V

    .line 60
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method
