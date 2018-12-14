.class public Lcom/mh/movie/core/mvp/ui/utils/a/b;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;
    .locals 1

    :try_start_0
    const-string v0, "DOMAIN_KEY_DOMAIN"

    .line 23
    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomain()Ljava/lang/String;

    move-result-object p0

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/a/b;->a(Ljava/lang/String;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/mh/movie/core/mvp/model/entity/Domain;
    .locals 2

    .line 50
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 51
    new-instance v1, Lcom/mh/movie/core/mvp/ui/utils/a/b$1;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/ui/utils/a/b$1;-><init>()V

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/a/b$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/model/entity/Domain;

    return-object p0
.end method
