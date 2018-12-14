.class public abstract Lcom/zhy/autolayout/attr/AutoAttr;
.super Ljava/lang/Object;
.source "AutoAttr.java"


# static fields
.field public static final BASE_DEFAULT:I = 0x3

.field public static final BASE_HEIGHT:I = 0x2

.field public static final BASE_WIDTH:I = 0x1


# instance fields
.field protected baseHeight:I

.field protected baseWidth:I

.field protected pxVal:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/zhy/autolayout/attr/AutoAttr;->pxVal:I

    .line 42
    iput p2, p0, Lcom/zhy/autolayout/attr/AutoAttr;->baseWidth:I

    .line 43
    iput p3, p0, Lcom/zhy/autolayout/attr/AutoAttr;->baseHeight:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 4

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pxVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zhy/autolayout/attr/AutoAttr;->pxVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->useDefault()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->defaultBaseWidth()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->getPercentWidthSize()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->getPercentHeightSize()I

    move-result v2

    :goto_1
    if-eqz v0, :cond_5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " useDefault val= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->baseWidth()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->getPercentWidthSize()I

    move-result v2

    if-eqz v0, :cond_5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " baseWidth val= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->getPercentHeightSize()I

    move-result v2

    if-eqz v0, :cond_5

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " baseHeight val= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhy/autolayout/utils/L;->e(Ljava/lang/String;)V

    :cond_5
    :goto_2
    if-lez v2, :cond_6

    .line 80
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 81
    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/zhy/autolayout/attr/AutoAttr;->execute(Landroid/view/View;I)V

    return-void
.end method

.method protected abstract attrVal()I
.end method

.method protected baseWidth()Z
    .locals 2

    .line 97
    iget v0, p0, Lcom/zhy/autolayout/attr/AutoAttr;->baseWidth:I

    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->attrVal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zhy/autolayout/attr/AutoAttr;->contains(II)Z

    move-result v0

    return v0
.end method

.method protected contains(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract defaultBaseWidth()Z
.end method

.method protected abstract execute(Landroid/view/View;I)V
.end method

.method protected getPercentHeightSize()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/zhy/autolayout/attr/AutoAttr;->pxVal:I

    invoke-static {v0}, Lcom/zhy/autolayout/utils/AutoUtils;->getPercentHeightSizeBigger(I)I

    move-result v0

    return v0
.end method

.method protected getPercentWidthSize()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/zhy/autolayout/attr/AutoAttr;->pxVal:I

    invoke-static {v0}, Lcom/zhy/autolayout/utils/AutoUtils;->getPercentWidthSizeBigger(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoAttr{pxVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zhy/autolayout/attr/AutoAttr;->pxVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->baseWidth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBaseWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->defaultBaseWidth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected useDefault()Z
    .locals 2

    .line 102
    iget v0, p0, Lcom/zhy/autolayout/attr/AutoAttr;->baseHeight:I

    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->attrVal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zhy/autolayout/attr/AutoAttr;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zhy/autolayout/attr/AutoAttr;->baseWidth:I

    invoke-virtual {p0}, Lcom/zhy/autolayout/attr/AutoAttr;->attrVal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zhy/autolayout/attr/AutoAttr;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
