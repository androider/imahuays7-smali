.class public Lcom/a/a/c/a;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/a/a/c/c;->a(Landroid/content/Context;)Lcom/a/a/c/b;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/a/a/c/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/c/b;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "ffffffffffffffffffffffff"

    :goto_1
    return-object p0
.end method
