.class public Lcom/zhy/autolayout/attr/MarginTopAttr;
.super Lcom/zhy/autolayout/attr/AutoAttr;
.source "MarginTopAttr.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/autolayout/attr/AutoAttr;-><init>(III)V

    return-void
.end method

.method public static generate(II)Lcom/zhy/autolayout/attr/MarginTopAttr;
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :pswitch_0
    new-instance p1, Lcom/zhy/autolayout/attr/MarginTopAttr;

    invoke-direct {p1, p0, v1, v1}, Lcom/zhy/autolayout/attr/MarginTopAttr;-><init>(III)V

    goto :goto_0

    .line 50
    :pswitch_1
    new-instance p1, Lcom/zhy/autolayout/attr/MarginTopAttr;

    invoke-direct {p1, p0, v1, v0}, Lcom/zhy/autolayout/attr/MarginTopAttr;-><init>(III)V

    goto :goto_0

    .line 47
    :pswitch_2
    new-instance p1, Lcom/zhy/autolayout/attr/MarginTopAttr;

    invoke-direct {p1, p0, v0, v1}, Lcom/zhy/autolayout/attr/MarginTopAttr;-><init>(III)V

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

    const/16 v0, 0x40

    return v0
.end method

.method protected defaultBaseWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected execute(Landroid/view/View;I)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method
