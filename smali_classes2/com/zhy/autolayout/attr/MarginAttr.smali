.class public Lcom/zhy/autolayout/attr/MarginAttr;
.super Lcom/zhy/autolayout/attr/AutoAttr;
.source "MarginAttr.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/autolayout/attr/AutoAttr;-><init>(III)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/MarginAttr;->useDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/MarginAttr;->getPercentWidthSize()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 39
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/MarginAttr;->getPercentHeightSize()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void

    .line 42
    :cond_1
    invoke-super {p0, p1}, Lcom/zhy/autolayout/attr/AutoAttr;->apply(Landroid/view/View;)V

    return-void
.end method

.method protected attrVal()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected defaultBaseWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected execute(Landroid/view/View;I)V
    .locals 0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void
.end method
