.class public Lcom/jess/arms/http/imageloader/glide/f;
.super Lcom/bumptech/glide/RequestBuilder;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/Glide;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/RequestManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 2
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

    .line 69
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/f;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/jess/arms/http/imageloader/glide/f;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object v1, Lcom/jess/arms/http/imageloader/glide/f;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 706
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(I)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lcom/jess/arms/http/imageloader/glide/e;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/e;-><init>()V

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 720
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 727
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 741
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/RequestBuilder;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 683
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/TransitionOptions;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/TransitionOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 663
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lcom/jess/arms/http/imageloader/glide/e;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 557
    :cond_0
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/e;-><init>()V

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lcom/jess/arms/http/imageloader/glide/e;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/e;-><init>()V

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/RequestListener;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
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
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 670
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestOptions;",
            ")",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 656
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 748
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 755
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 713
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 734
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

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
            "TTranscodeType;>;"
        }
    .end annotation

    .line 769
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public final varargs a([Lcom/bumptech/glide/RequestBuilder;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 699
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->b(Lcom/bumptech/glide/request/RequestListener;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lcom/jess/arms/http/imageloader/glide/e;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-virtual {v0}, Lcom/jess/arms/http/imageloader/glide/e;->d()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 459
    :cond_0
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/e;-><init>()V

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/http/imageloader/glide/e;->d()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public b(I)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lcom/jess/arms/http/imageloader/glide/e;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->b(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/e;-><init>()V

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->b(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/RequestBuilder;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
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
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 690
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/request/RequestListener;)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
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
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 677
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/f;

    return-object p1
.end method

.method public c()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lcom/jess/arms/http/imageloader/glide/e;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-virtual {v0}, Lcom/jess/arms/http/imageloader/glide/e;->j()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 543
    :cond_0
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/e;-><init>()V

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jess/arms/http/imageloader/glide/e;->j()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public c(I)Lcom/jess/arms/http/imageloader/glide/f;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    instance-of v0, v0, Lcom/jess/arms/http/imageloader/glide/e;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->getMutableOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->c(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/e;

    invoke-direct {v0}, Lcom/jess/arms/http/imageloader/glide/e;-><init>()V

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->c(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/f;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    :goto_0
    return-object p0
.end method

.method public synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->d()Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->d()Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/jess/arms/http/imageloader/glide/f;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/http/imageloader/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 775
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/f;

    return-object v0
.end method

.method public synthetic error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/RequestBuilder;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/f;->a()Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/request/RequestListener;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Landroid/graphics/Bitmap;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Landroid/net/Uri;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/io/File;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/lang/Integer;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/lang/String;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/net/URL;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a([B)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Landroid/graphics/Bitmap;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Landroid/net/Uri;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/io/File;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/lang/Integer;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/lang/String;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Ljava/net/URL;)Lcom/jess/arms/http/imageloader/glide/f;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a([B)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(F)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->b(Lcom/bumptech/glide/RequestBuilder;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/RequestBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a([Lcom/bumptech/glide/RequestBuilder;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .param p1    # Lcom/bumptech/glide/TransitionOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/TransitionOptions;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    return-object p1
.end method
