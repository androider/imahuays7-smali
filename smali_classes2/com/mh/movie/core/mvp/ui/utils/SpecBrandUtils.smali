.class public Lcom/mh/movie/core/mvp/ui/utils/SpecBrandUtils;
.super Ljava/lang/Object;
.source "SpecBrandUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSpecialBrand()Z
    .locals 4

    .line 7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x5608ffe0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "smartisan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static notFullForPlayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
