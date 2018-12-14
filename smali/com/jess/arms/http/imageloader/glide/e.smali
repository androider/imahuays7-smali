.class public final Lcom/jess/arms/http/imageloader/glide/e;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "GlideOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 426
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final a(F)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 308
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(I)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 357
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(II)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 406
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(J)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 461
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Landroid/content/res/Resources$Theme;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 392
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 447
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 350
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/Priority;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 343
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 468
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/Key;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 420
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/jess/arms/http/imageloader/glide/e;"
        }
    .end annotation

    .line 433
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
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
            "Lcom/jess/arms/http/imageloader/glide/e;"
        }
    .end annotation

    .line 552
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 336
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 482
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 605
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Ljava/lang/Class;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
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
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/jess/arms/http/imageloader/glide/e;"
        }
    .end annotation

    .line 440
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lcom/jess/arms/http/imageloader/glide/e;"
        }
    .end annotation

    .line 576
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final a(Z)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 315
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final varargs a([Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/jess/arms/http/imageloader/glide/e;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 561
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public synthetic apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/request/RequestOptions;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic autoClone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->n()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 475
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final b(I)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 371
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 364
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final b(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
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
            "Lcom/jess/arms/http/imageloader/glide/e;"
        }
    .end annotation

    .line 568
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final b(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)",
            "Lcom/jess/arms/http/imageloader/glide/e;"
        }
    .end annotation

    .line 584
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final b(Z)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 322
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final c()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 496
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final c(I)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 385
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 378
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final c(Z)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 329
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public synthetic centerCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->d()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic centerInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->h()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic circleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->j()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->a()Lcom/jess/arms/http/imageloader/glide/e;

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

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->a()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 503
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final d(I)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 413
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public final d(Z)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 399
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Ljava/lang/Class;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->b()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dontAnimate()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->l()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dontTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->k()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 510
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final e(I)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 454
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->e(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic error(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->c(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->c(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 517
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final f(I)Lcom/jess/arms/http/imageloader/glide/e;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 489
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/http/imageloader/glide/e;

    return-object p1
.end method

.method public synthetic fallback(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->b(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->b(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic fitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->f()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic frame(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/http/imageloader/glide/e;->a(J)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 524
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final h()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 531
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final i()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 538
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final j()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 545
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final k()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 591
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final l()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 598
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public synthetic lock()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->m()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 611
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public final n()Lcom/jess/arms/http/imageloader/glide/e;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 617
    invoke-super {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/http/imageloader/glide/e;

    return-object v0
.end method

.method public synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->c(Z)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->c()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->g()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->i()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/jess/arms/http/imageloader/glide/e;->e()Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->b(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/http/imageloader/glide/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic override(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->d(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic override(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/http/imageloader/glide/e;->a(II)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic placeholder(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Landroid/graphics/drawable/Drawable;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/Priority;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/Key;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(F)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->d(Z)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Landroid/content/res/Resources$Theme;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic timeout(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->f(I)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/http/imageloader/glide/e;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a([Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->b(Z)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/jess/arms/http/imageloader/glide/e;->a(Z)Lcom/jess/arms/http/imageloader/glide/e;

    move-result-object p1

    return-object p1
.end method
