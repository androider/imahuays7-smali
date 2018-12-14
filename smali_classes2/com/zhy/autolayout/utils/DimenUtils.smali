.class public Lcom/zhy/autolayout/utils/DimenUtils;
.super Ljava/lang/Object;
.source "DimenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getComplexUnit(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static isPxVal(Landroid/util/TypedValue;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 17
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Lcom/zhy/autolayout/utils/DimenUtils;->getComplexUnit(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
