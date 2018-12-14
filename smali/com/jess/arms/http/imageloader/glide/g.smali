.class public Lcom/jess/arms/http/imageloader/glide/g;
.super Lcom/bumptech/glide/RequestManager;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/Glide;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/Lifecycle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/RequestManagerTreeNode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/f;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Ljava/io/File;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TResourceType;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/f;

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/g;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/jess/arms/http/imageloader/glide/g;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/jess/arms/http/imageloader/glide/f;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Ljava/net/URL;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a([B)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/g;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/g;

    return-object p1
.end method

.method public synthetic applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/lang/Class;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/g;->a()Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/g;->c()Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic asFile()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/g;->e()Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic asGif()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/g;->b()Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/f;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/g;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 57
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/g;

    return-object p1
.end method

.method public c()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/f;

    return-object v0
.end method

.method public d()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/f;

    return-object v0
.end method

.method public synthetic download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->b(Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/g;->d()Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/f;

    return-object v0
.end method

.method public synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Landroid/graphics/Bitmap;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Landroid/net/Uri;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/io/File;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/lang/Integer;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/lang/String;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/net/URL;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a([B)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Landroid/graphics/Bitmap;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Landroid/net/Uri;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/io/File;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/lang/Integer;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/lang/String;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/net/URL;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic load([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->a([B)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/g;->b(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/g;

    move-result-object p1

    return-object p1
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    instance-of v0, p1, Lcom/jess/arms/http/imageloader/glide/e;

    if-eqz v0, :cond_0

    .line 168
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    :goto_0
    return-void
.end method
