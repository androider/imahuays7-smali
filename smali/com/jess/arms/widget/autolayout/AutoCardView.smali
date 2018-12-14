.class public Lcom/jess/arms/widget/autolayout/AutoCardView;
.super Landroid/support/v7/widget/CardView;
.source "AutoCardView.java"


# instance fields
.field private final mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/jess/arms/widget/autolayout/AutoCardView;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/jess/arms/widget/autolayout/AutoCardView;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/jess/arms/widget/autolayout/AutoCardView;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;
    .locals 2

    .line 59
    new-instance v0, Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zhy/autolayout/AutoFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoCardView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jess/arms/widget/autolayout/AutoCardView;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-virtual {v0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->adjustChildren()V

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/CardView;->onMeasure(II)V

    return-void
.end method
