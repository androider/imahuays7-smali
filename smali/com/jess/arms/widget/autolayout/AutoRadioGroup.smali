.class public Lcom/jess/arms/widget/autolayout/AutoRadioGroup;
.super Landroid/widget/RadioGroup;
.source "AutoRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/widget/autolayout/AutoRadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/jess/arms/widget/autolayout/AutoRadioGroup;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-direct {p1, p0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/jess/arms/widget/autolayout/AutoRadioGroup;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/jess/arms/widget/autolayout/AutoRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/jess/arms/widget/autolayout/AutoRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/jess/arms/widget/autolayout/AutoRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/jess/arms/widget/autolayout/AutoRadioGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/jess/arms/widget/autolayout/AutoRadioGroup$LayoutParams;
    .locals 2

    .line 70
    new-instance v0, Lcom/jess/arms/widget/autolayout/AutoRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jess/arms/widget/autolayout/AutoRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 64
    invoke-super/range {p0 .. p5}, Landroid/widget/RadioGroup;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/jess/arms/widget/autolayout/AutoRadioGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jess/arms/widget/autolayout/AutoRadioGroup;->mHelper:Lcom/zhy/autolayout/utils/AutoLayoutHelper;

    invoke-virtual {v0}, Lcom/zhy/autolayout/utils/AutoLayoutHelper;->adjustChildren()V

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RadioGroup;->onMeasure(II)V

    return-void
.end method
