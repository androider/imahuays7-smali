.class public Lcom/zhy/autolayout/attr/MinWidthAttr;
.super Lcom/zhy/autolayout/attr/AutoAttr;
.source "MinWidthAttr.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/autolayout/attr/AutoAttr;-><init>(III)V

    return-void
.end method

.method public static generate(II)Lcom/zhy/autolayout/attr/MinWidthAttr;
    .locals 2

    const/16 v0, 0x2000

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 72
    :pswitch_0
    new-instance p1, Lcom/zhy/autolayout/attr/MinWidthAttr;

    invoke-direct {p1, p0, v1, v1}, Lcom/zhy/autolayout/attr/MinWidthAttr;-><init>(III)V

    goto :goto_0

    .line 69
    :pswitch_1
    new-instance p1, Lcom/zhy/autolayout/attr/MinWidthAttr;

    invoke-direct {p1, p0, v1, v0}, Lcom/zhy/autolayout/attr/MinWidthAttr;-><init>(III)V

    goto :goto_0

    .line 66
    :pswitch_2
    new-instance p1, Lcom/zhy/autolayout/attr/MinWidthAttr;

    invoke-direct {p1, p0, v0, v1}, Lcom/zhy/autolayout/attr/MinWidthAttr;-><init>(III)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMinWidth(Landroid/view/View;)I
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    return p0

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected attrVal()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method protected defaultBaseWidth()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected execute(Landroid/view/View;I)V
    .locals 0

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method
