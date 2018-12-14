.class public Lcom/umeng/commonsdk/framework/d;
.super Ljava/lang/Object;
.source "UMEnvelopeBuildImpl.java"


# direct methods
.method public static a(Landroid/content/Context;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/e;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p2

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/b/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/b/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/b/b;->b()Lcom/umeng/commonsdk/statistics/b/b$a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "--->>> buildEnvelopeFile Enter."

    .line 77
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/i;->a(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/umeng/commonsdk/statistics/e;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/e;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/e;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/e;->b(Landroid/content/Context;)Z

    move-result v1

    .line 47
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/e;->c(Landroid/content/Context;)I

    move-result v2

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 51
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/framework/e;->a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    .line 61
    invoke-static {}, Lcom/umeng/commonsdk/framework/f;->b()V

    :cond_2
    return v0
.end method
