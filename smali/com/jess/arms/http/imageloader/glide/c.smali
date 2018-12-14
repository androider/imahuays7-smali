.class public final Lcom/jess/arms/http/imageloader/glide/c;
.super Ljava/lang/Object;
.source "GlideArms.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/jess/arms/http/imageloader/glide/g;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lcom/jess/arms/http/imageloader/glide/g;

    return-object p0
.end method
