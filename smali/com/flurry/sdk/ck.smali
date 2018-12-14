.class public final Lcom/flurry/sdk/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/flurry/android/Consent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/Consent;->isGdprScope()Z

    move-result v1

    .line 16
    invoke-virtual {p0}, Lcom/flurry/android/Consent;->getConsentStrings()Ljava/util/Map;

    move-result-object v2

    .line 18
    instance-of v3, p0, Lcom/flurry/sdk/fa;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 19
    check-cast p0, Lcom/flurry/sdk/fa;

    invoke-virtual {p0}, Lcom/flurry/sdk/fa;->isLICNEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v4

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    .line 23
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v4
.end method
