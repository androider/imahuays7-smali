.class public Lcom/zhy/autolayout/utils/AutoUtils;
.super Ljava/lang/Object;
.source "AutoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auto(Landroid/view/View;)V
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/zhy/autolayout/utils/AutoUtils;->autoSize(Landroid/view/View;)V

    .line 25
    invoke-static {p0}, Lcom/zhy/autolayout/utils/AutoUtils;->autoPadding(Landroid/view/View;)V

    .line 26
    invoke-static {p0}, Lcom/zhy/autolayout/utils/AutoUtils;->autoMargin(Landroid/view/View;)V

    const/4 v0, 0x3

    .line 27
    invoke-static {p0, v0}, Lcom/zhy/autolayout/utils/AutoUtils;->autoTextSize(Landroid/view/View;I)V

    return-void
.end method

.method public static auto(Landroid/view/View;II)V
    .locals 0

    .line 37
    invoke-static {p0, p1, p2}, Lcom/zhy/autolayout/AutoLayoutInfo;->getAttrFromView(Landroid/view/View;II)Lcom/zhy/autolayout/AutoLayoutInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1, p0}, Lcom/zhy/autolayout/AutoLayoutInfo;->fillAttrs(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static autoMargin(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x3

    .line 54
    invoke-static {p0, v0, v1}, Lcom/zhy/autolayout/utils/AutoUtils;->auto(Landroid/view/View;II)V

    return-void
.end method

.method public static autoMargin(Landroid/view/View;I)V
    .locals 1

    const/16 v0, 0x10

    .line 59
    invoke-static {p0, v0, p1}, Lcom/zhy/autolayout/utils/AutoUtils;->auto(Landroid/view/View;II)V

    return-void
.end method

.method public static autoPadding(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x3

    .line 64
    invoke-static {p0, v0, v1}, Lcom/zhy/autolayout/utils/AutoUtils;->auto(Landroid/view/View;II)V

    return-void
.end method

.method public static autoPadding(Landroid/view/View;I)V
    .locals 1

    const/16 v0, 0x8

    .line 69
    invoke-static {p0, v0, p1}, Lcom/zhy/autolayout/utils/AutoUtils;->auto(Landroid/view/View;II)V

    return-void
.end method

.method public static autoSize(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    .line 74
    invoke-static {p0, v0, v0}, Lcom/zhy/autolayout/utils/AutoUtils;->auto(Landroid/view/View;II)V

    return-void
.end method

.method public static autoSize(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x3

    .line 79
    invoke-static {p0, v0, p1}, Lcom/zhy/autolayout/utils/AutoUtils;->auto(Landroid/view/View;II)V

    return-void
.end method

.method public static autoTextSize(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 44
    invoke-static {p0, v0, v1}, Lcom/zhy/autolayout/utils/AutoUtils;->auto(Landroid/view/View;II)V

    return-void
.end method

.method public static autoTextSize(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x4

    .line 49
    invoke-static {p0, v0, p1}, Lcom/zhy/autolayout/utils/AutoUtils;->auto(Landroid/view/View;II)V

    return-void
.end method

.method public static autoed(Landroid/view/View;)Z
    .locals 2

    .line 84
    sget v0, Lcom/zhy/autolayout/R$id;->id_tag_autolayout_size:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 86
    :cond_0
    sget v0, Lcom/zhy/autolayout/R$id;->id_tag_autolayout_size:I

    const-string v1, "Just Identify"

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getPercentHeight1px()F
    .locals 3

    .line 99
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getScreenHeight()I

    move-result v0

    .line 100
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getDesignHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getPercentHeightSize(I)I
    .locals 3

    .line 146
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getScreenHeight()I

    move-result v0

    .line 147
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getDesignHeight()I

    move-result v1

    int-to-float p0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p0, p0, v2

    int-to-float v1, v1

    div-float/2addr p0, v1

    int-to-float v0, v0

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getPercentHeightSizeBigger(I)I
    .locals 2

    .line 131
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getScreenHeight()I

    move-result v0

    .line 132
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getDesignHeight()I

    move-result v1

    mul-int p0, p0, v0

    .line 135
    rem-int v0, p0, v1

    if-nez v0, :cond_0

    .line 137
    div-int/2addr p0, v1

    return p0

    .line 140
    :cond_0
    div-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getPercentWidth1px()F
    .locals 3

    .line 92
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getScreenWidth()I

    move-result v0

    .line 93
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getDesignWidth()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getPercentWidthSize(I)I
    .locals 3

    .line 107
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getScreenWidth()I

    move-result v0

    .line 108
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getDesignWidth()I

    move-result v1

    int-to-float p0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p0, p0, v2

    int-to-float v1, v1

    div-float/2addr p0, v1

    int-to-float v0, v0

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getPercentWidthSizeBigger(I)I
    .locals 2

    .line 115
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getScreenWidth()I

    move-result v0

    .line 116
    invoke-static {}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getInstance()Lcom/zhy/autolayout/config/AutoLayoutConifg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhy/autolayout/config/AutoLayoutConifg;->getDesignWidth()I

    move-result v1

    mul-int p0, p0, v0

    .line 119
    rem-int v0, p0, v1

    if-nez v0, :cond_0

    .line 121
    div-int/2addr p0, v1

    return p0

    .line 124
    :cond_0
    div-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
