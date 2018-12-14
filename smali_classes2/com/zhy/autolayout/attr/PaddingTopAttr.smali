.class public Lcom/zhy/autolayout/attr/PaddingTopAttr;
.super Lcom/zhy/autolayout/attr/AutoAttr;
.source "PaddingTopAttr.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/autolayout/attr/AutoAttr;-><init>(III)V

    return-void
.end method

.method public static generate(II)Lcom/zhy/autolayout/attr/PaddingTopAttr;
    .locals 2

    const/16 v0, 0x400

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 49
    :pswitch_0
    new-instance p1, Lcom/zhy/autolayout/attr/PaddingTopAttr;

    invoke-direct {p1, p0, v1, v1}, Lcom/zhy/autolayout/attr/PaddingTopAttr;-><init>(III)V

    goto :goto_0

    .line 46
    :pswitch_1
    new-instance p1, Lcom/zhy/autolayout/attr/PaddingTopAttr;

    invoke-direct {p1, p0, v1, v0}, Lcom/zhy/autolayout/attr/PaddingTopAttr;-><init>(III)V

    goto :goto_0

    .line 43
    :pswitch_2
    new-instance p1, Lcom/zhy/autolayout/attr/PaddingTopAttr;

    invoke-direct {p1, p0, v0, v1}, Lcom/zhy/autolayout/attr/PaddingTopAttr;-><init>(III)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected attrVal()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method protected defaultBaseWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected execute(Landroid/view/View;I)V
    .locals 3

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 34
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
