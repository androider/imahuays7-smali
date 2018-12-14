.class public Lcom/zhy/autolayout/AutoLayoutInfo;
.super Ljava/lang/Object;
.source "AutoLayoutInfo.java"


# instance fields
.field private autoAttrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zhy/autolayout/attr/AutoAttr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhy/autolayout/AutoLayoutInfo;->autoAttrs:Ljava/util/List;

    return-void
.end method

.method public static getAttrFromView(Landroid/view/View;II)Lcom/zhy/autolayout/AutoLayoutInfo;
    .locals 4

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    new-instance v1, Lcom/zhy/autolayout/AutoLayoutInfo;

    invoke-direct {v1}, Lcom/zhy/autolayout/AutoLayoutInfo;-><init>()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 54
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_1

    .line 56
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, p2}, Lcom/zhy/autolayout/attr/WidthAttr;->generate(II)Lcom/zhy/autolayout/attr/WidthAttr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    .line 59
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_2

    .line 61
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, p2}, Lcom/zhy/autolayout/attr/HeightAttr;->generate(II)Lcom/zhy/autolayout/attr/HeightAttr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    .line 65
    :cond_2
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_7

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_3

    .line 69
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v3, p2}, Lcom/zhy/autolayout/attr/MarginLeftAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginLeftAttr;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    .line 70
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v3, p2}, Lcom/zhy/autolayout/attr/MarginTopAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginTopAttr;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    .line 71
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v3, p2}, Lcom/zhy/autolayout/attr/MarginRightAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginRightAttr;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    .line 72
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v2, p2}, Lcom/zhy/autolayout/attr/MarginBottomAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginBottomAttr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_3
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_4

    .line 76
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v2, p2}, Lcom/zhy/autolayout/attr/MarginLeftAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginLeftAttr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_4
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_5

    .line 80
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v2, p2}, Lcom/zhy/autolayout/attr/MarginTopAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginTopAttr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_5
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_6

    .line 84
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v2, p2}, Lcom/zhy/autolayout/attr/MarginRightAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginRightAttr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_6
    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_7

    .line 88
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MarginBottomAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginBottomAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_8

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/PaddingLeftAttr;->generate(II)Lcom/zhy/autolayout/attr/PaddingLeftAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/PaddingTopAttr;->generate(II)Lcom/zhy/autolayout/attr/PaddingTopAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/PaddingRightAttr;->generate(II)Lcom/zhy/autolayout/attr/PaddingRightAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/PaddingBottomAttr;->generate(II)Lcom/zhy/autolayout/attr/PaddingBottomAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_8
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_9

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MarginLeftAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginLeftAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_9
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_a

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MarginTopAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginTopAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_a
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MarginRightAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginRightAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_b
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_c

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MarginBottomAttr;->generate(II)Lcom/zhy/autolayout/attr/MarginBottomAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_c
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_d

    .line 120
    invoke-static {p0}, Lcom/zhy/autolayout/attr/MinWidthAttr;->getMinWidth(Landroid/view/View;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MinWidthAttr;->generate(II)Lcom/zhy/autolayout/attr/MinWidthAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_d
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_e

    .line 124
    invoke-static {p0}, Lcom/zhy/autolayout/attr/MaxWidthAttr;->getMaxWidth(Landroid/view/View;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MaxWidthAttr;->generate(II)Lcom/zhy/autolayout/attr/MaxWidthAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_e
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_f

    .line 128
    invoke-static {p0}, Lcom/zhy/autolayout/attr/MinHeightAttr;->getMinHeight(Landroid/view/View;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MinHeightAttr;->generate(II)Lcom/zhy/autolayout/attr/MinHeightAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_f
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_10

    .line 132
    invoke-static {p0}, Lcom/zhy/autolayout/attr/MaxHeightAttr;->getMaxHeight(Landroid/view/View;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/zhy/autolayout/attr/MaxHeightAttr;->generate(II)Lcom/zhy/autolayout/attr/MaxHeightAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    .line 137
    :cond_10
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_11

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_11

    .line 141
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0, p2}, Lcom/zhy/autolayout/attr/TextSizeAttr;->generate(II)Lcom/zhy/autolayout/attr/TextSizeAttr;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/zhy/autolayout/AutoLayoutInfo;->addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V

    :cond_11
    return-object v1
.end method


# virtual methods
.method public addAttr(Lcom/zhy/autolayout/attr/AutoAttr;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/zhy/autolayout/AutoLayoutInfo;->autoAttrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fillAttrs(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/zhy/autolayout/AutoLayoutInfo;->autoAttrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhy/autolayout/attr/AutoAttr;

    .line 42
    invoke-virtual {v1, p1}, Lcom/zhy/autolayout/attr/AutoAttr;->apply(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoLayoutInfo{autoAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zhy/autolayout/AutoLayoutInfo;->autoAttrs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
