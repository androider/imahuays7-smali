.class public Lcom/zhy/autolayout/attr/PaddingAttr;
.super Lcom/zhy/autolayout/attr/AutoAttr;
.source "PaddingAttr.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/autolayout/attr/AutoAttr;-><init>(III)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/PaddingAttr;->useDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/PaddingAttr;->getPercentWidthSize()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/PaddingAttr;->getPercentHeightSize()I

    move-result v1

    .line 29
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lcom/zhy/autolayout/attr/AutoAttr;->apply(Landroid/view/View;)V

    return-void
.end method

.method protected attrVal()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected defaultBaseWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected execute(Landroid/view/View;I)V
    .locals 0

    .line 44
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
