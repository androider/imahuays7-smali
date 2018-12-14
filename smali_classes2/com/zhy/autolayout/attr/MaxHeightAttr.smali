.class public Lcom/zhy/autolayout/attr/MaxHeightAttr;
.super Lcom/zhy/autolayout/attr/AutoAttr;
.source "MaxHeightAttr.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/autolayout/attr/AutoAttr;-><init>(III)V

    return-void
.end method

.method public static generate(II)Lcom/zhy/autolayout/attr/MaxHeightAttr;
    .locals 2

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :pswitch_0
    new-instance p1, Lcom/zhy/autolayout/attr/MaxHeightAttr;

    invoke-direct {p1, p0, v1, v1}, Lcom/zhy/autolayout/attr/MaxHeightAttr;-><init>(III)V

    goto :goto_0

    .line 50
    :pswitch_1
    new-instance p1, Lcom/zhy/autolayout/attr/MaxHeightAttr;

    invoke-direct {p1, p0, v1, v0}, Lcom/zhy/autolayout/attr/MaxHeightAttr;-><init>(III)V

    goto :goto_0

    .line 47
    :pswitch_2
    new-instance p1, Lcom/zhy/autolayout/attr/MaxHeightAttr;

    invoke-direct {p1, p0, v0, v1}, Lcom/zhy/autolayout/attr/MaxHeightAttr;-><init>(III)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMaxHeight(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMaxHeight"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method protected attrVal()I
    .locals 1

    const/high16 v0, 0x10000

    return v0
.end method

.method protected defaultBaseWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected execute(Landroid/view/View;I)V
    .locals 6

    .line 34
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setMaxHeight"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
