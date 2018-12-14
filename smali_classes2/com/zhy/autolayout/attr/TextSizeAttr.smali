.class public Lcom/zhy/autolayout/attr/TextSizeAttr;
.super Lcom/zhy/autolayout/attr/AutoAttr;
.source "TextSizeAttr.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/autolayout/attr/AutoAttr;-><init>(III)V

    return-void
.end method

.method public static generate(II)Lcom/zhy/autolayout/attr/TextSizeAttr;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 51
    :pswitch_0
    new-instance p1, Lcom/zhy/autolayout/attr/TextSizeAttr;

    invoke-direct {p1, p0, v1, v1}, Lcom/zhy/autolayout/attr/TextSizeAttr;-><init>(III)V

    goto :goto_0

    .line 48
    :pswitch_1
    new-instance p1, Lcom/zhy/autolayout/attr/TextSizeAttr;

    invoke-direct {p1, p0, v1, v0}, Lcom/zhy/autolayout/attr/TextSizeAttr;-><init>(III)V

    goto :goto_0

    .line 45
    :pswitch_2
    new-instance p1, Lcom/zhy/autolayout/attr/TextSizeAttr;

    invoke-direct {p1, p0, v0, v1}, Lcom/zhy/autolayout/attr/TextSizeAttr;-><init>(III)V

    :goto_0
    return-object p1

    nop

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

    const/4 v0, 0x4

    return v0
.end method

.method protected defaultBaseWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected execute(Landroid/view/View;I)V
    .locals 1

    .line 33
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    int-to-float p2, p2

    .line 36
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
