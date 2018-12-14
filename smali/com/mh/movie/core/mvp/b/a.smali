.class public Lcom/mh/movie/core/mvp/b/a;
.super Ljava/lang/Object;
.source "SharedPreferenceConstant.java"


# direct methods
.method public static a()Z
    .locals 2

    .line 26
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
