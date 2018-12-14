.class public Lcom/bumptech/glide/request/RequestOptions;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DISK_CACHE_STRATEGY:I = 0x4

.field private static final ERROR_ID:I = 0x20

.field private static final ERROR_PLACEHOLDER:I = 0x10

.field private static final FALLBACK:I = 0x2000

.field private static final FALLBACK_ID:I = 0x4000

.field private static final IS_CACHEABLE:I = 0x100

.field private static final ONLY_RETRIEVE_FROM_CACHE:I = 0x80000

.field private static final OVERRIDE:I = 0x200

.field private static final PLACEHOLDER:I = 0x40

.field private static final PLACEHOLDER_ID:I = 0x80

.field private static final PRIORITY:I = 0x8

.field private static final RESOURCE_CLASS:I = 0x1000

.field private static final SIGNATURE:I = 0x400

.field private static final SIZE_MULTIPLIER:I = 0x2

.field private static final THEME:I = 0x8000

.field private static final TRANSFORMATION:I = 0x800

.field private static final TRANSFORMATION_ALLOWED:I = 0x10000

.field private static final TRANSFORMATION_REQUIRED:I = 0x20000

.field private static final UNSET:I = -0x1

.field private static final USE_ANIMATION_POOL:I = 0x100000

.field private static final USE_UNLIMITED_SOURCE_GENERATORS_POOL:I = 0x40000

.field private static centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fallbackId:I

.field private fields:I

.field private isAutoCloneEnabled:Z

.field private isCacheable:Z

.field private isLocked:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationAllowed:Z

.field private isTransformationRequired:Z

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/bumptech/glide/load/Options;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private placeholderId:I

.field private priority:Lcom/bumptech/glide/Priority;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private resourceClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private sizeMultiplier:F

.field private theme:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorsPool:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 86
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 88
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    const/4 v1, -0x1

    .line 97
    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 98
    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 100
    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 102
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 106
    new-instance v1, Lcom/bumptech/glide/load/Options;

    invoke-direct {v1}, Lcom/bumptech/glide/load/Options;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 108
    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 110
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 118
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    return-void
.end method

.method public static bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Transformation;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static centerCropTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 274
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 276
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 279
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 259
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 261
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 264
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->centerInsideOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 289
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 291
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 294
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->circleCropOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Ljava/lang/Class;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 138
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static downsampleOf(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 368
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 399
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static encodeQualityOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 388
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 184
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 175
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static fitCenterTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 244
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 246
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 249
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->fitCenterOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 348
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static frameOf(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 358
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method private isSet(I)Z
    .locals 1

    .line 1708
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result p1

    return p1
.end method

.method private static isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static noAnimation()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 410
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 412
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 415
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noAnimationOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static noTransformation()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 314
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 316
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 319
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/RequestOptions;->noTransformOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public static option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method private optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1184
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public static overrideOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 226
    invoke-static {p0, p0}, Lcom/bumptech/glide/request/RequestOptions;->overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 215
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 166
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 157
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static priorityOf(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 148
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method private scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1178
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method private scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1193
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 1194
    iput-boolean p2, p1, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    return-object p1
.end method

.method private selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1587
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    if-eqz v0, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 235
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 129
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    .line 194
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez p0, :cond_0

    .line 195
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 197
    :cond_0
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0

    .line 199
    :cond_1
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez p0, :cond_2

    .line 200
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 202
    :cond_2
    sget-object p0, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method public static timeoutOf(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 377
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->timeout(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method private transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1263
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1267
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Z)V

    .line 1269
    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 1270
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 1275
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/DrawableTransformation;->asBitmapDrawable()Lcom/bumptech/glide/load/Transformation;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 1276
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 1277
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method private transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
            "TT;>;Z)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1309
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1313
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x1

    .line 1317
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1318
    iget p2, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    iput p2, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p2, 0x0

    .line 1321
    iput-boolean p2, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    if-eqz p3, :cond_1

    .line 1323
    iget p2, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1324
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1326
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 4
    .param p1    # Lcom/bumptech/glide/request/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1403
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1407
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 1410
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    .line 1413
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1414
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool:Z

    .line 1416
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1417
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1419
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1420
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    .line 1422
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1423
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 1424
    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    .line 1425
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1427
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1428
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    .line 1429
    iput-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 1430
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1432
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1433
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1434
    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    .line 1435
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1437
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1438
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    .line 1439
    iput-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1440
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1442
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1443
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    .line 1445
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1446
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 1447
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 1449
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1450
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 1452
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1453
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 1455
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1456
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1457
    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    .line 1458
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1460
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1461
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    .line 1462
    iput-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1463
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1465
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1466
    iget-object v0, p1, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 1468
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1469
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1471
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1472
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1474
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1475
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1476
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1478
    :cond_13
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1479
    iget-boolean v0, p1, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    .line 1483
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    if-nez v0, :cond_15

    .line 1484
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1485
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1486
    iput-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1487
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v0, 0x1

    .line 1488
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1491
    :cond_15
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    iget v1, p1, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1492
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object p1, p1, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    .line 1494
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public autoClone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1576
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-nez v0, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 1580
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    .line 1581
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1048
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1114
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1143
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .line 852
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 853
    new-instance v1, Lcom/bumptech/glide/load/Options;

    invoke-direct {v1}, Lcom/bumptech/glide/load/Options;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 854
    iget-object v1, v0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    .line 855
    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 856
    iget-object v1, v0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 857
    iput-boolean v1, v0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    .line 858
    iput-boolean v1, v0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 861
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 881
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 885
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 886
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 887
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public disallowHardwareConfig()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 988
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 533
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 536
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 537
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 539
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public dontAnimate()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1382
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifOptions;->DISABLE_ANIMATION:Lcom/bumptech/glide/load/Option;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/request/RequestOptions;
    .locals 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1356
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->dontTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1361
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v0, 0x0

    .line 1362
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    .line 1363
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 1364
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    .line 1365
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 v0, 0x1

    .line 1366
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    .line 1367
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1001
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 909
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeQuality(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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

    .line 919
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1500
    instance-of v0, p1, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1501
    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 1502
    iget v0, p1, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    iget v2, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 1504
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1506
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1508
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iget v2, p1, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 1516
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    .line 1518
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    .line 1519
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    .line 1520
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v2, p1, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 1521
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 1522
    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public error(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 707
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 710
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    .line 711
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x0

    .line 713
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 714
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 716
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 683
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 687
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 688
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x0

    .line 690
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    .line 691
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 693
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 659
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 663
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    .line 664
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x0

    .line 666
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 667
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 669
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 628
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 632
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 633
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x0

    .line 635
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    .line 636
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 638
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1082
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 963
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/resource/gif/GifOptions;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 965
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public frame(J)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 935
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/bumptech/glide/load/Option;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public final getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1627
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method public final getErrorId()I
    .locals 1

    .line 1638
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    return v0
.end method

.method public final getErrorPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1633
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1660
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackId()I
    .locals 1

    .line 1654
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    return v0
.end method

.method public final getOnlyRetrieveFromCache()Z
    .locals 1

    .line 1726
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    return v0
.end method

.method public final getOptions()Lcom/bumptech/glide/load/Options;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1617
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    return-object v0
.end method

.method public final getOverrideHeight()I
    .locals 1

    .line 1696
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    return v0
.end method

.method public final getOverrideWidth()I
    .locals 1

    .line 1688
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    return v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1649
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPlaceholderId()I
    .locals 1

    .line 1643
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    return v0
.end method

.method public final getPriority()Lcom/bumptech/glide/Priority;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1684
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSignature()Lcom/bumptech/glide/load/Key;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1675
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public final getSizeMultiplier()F
    .locals 1

    .line 1700
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    return v0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1665
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    return-object v0
.end method

.method public final getUseAnimationPool()Z
    .locals 1

    .line 1720
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool:Z

    return v0
.end method

.method public final getUseUnlimitedSourceGeneratorsPool()Z
    .locals 1

    .line 1714
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1529
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->hashCode(F)I

    move-result v0

    .line 1530
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1531
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1532
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1533
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1534
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackId:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1535
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1536
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1537
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1538
    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    .line 1539
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1540
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1541
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1542
    iget-boolean v1, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(ZI)I

    move-result v0

    .line 1543
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1544
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1545
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1546
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->transformations:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1547
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->resourceClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1548
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    .line 1549
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected isAutoCloneEnabled()Z
    .locals 1

    .line 1594
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    return v0
.end method

.method public final isDiskCacheStrategySet()Z
    .locals 1

    const/4 v0, 0x4

    .line 1598
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isLocked()Z
    .locals 1

    .line 899
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    return v0
.end method

.method public final isMemoryCacheable()Z
    .locals 1

    .line 1670
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    return v0
.end method

.method public final isPrioritySet()Z
    .locals 1

    const/16 v0, 0x8

    .line 1679
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method isScaleOnlyOrNoTransform()Z
    .locals 1

    .line 1704
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method public final isSkipMemoryCacheSet()Z
    .locals 1

    const/16 v0, 0x100

    .line 1602
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isTransformationAllowed()Z
    .locals 1

    .line 891
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationAllowed:Z

    return v0
.end method

.method public final isTransformationRequired()Z
    .locals 1

    .line 1612
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isTransformationRequired:Z

    return v0
.end method

.method public final isTransformationSet()Z
    .locals 1

    const/16 v0, 0x800

    .line 895
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isValidOverride()Z
    .locals 2

    .line 1692
    iget v0, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    return v0
.end method

.method public lock()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 1561
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isLocked:Z

    return-object p0
.end method

.method public onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 506
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 510
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache:Z

    .line 511
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 513
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public optionalCenterCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1033
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1098
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1128
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1065
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->optionalScaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1257
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method final optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1152
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->optionalTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    const/4 p1, 0x0

    .line 1157
    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1301
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public override(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 806
    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 784
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 788
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideWidth:I

    .line 789
    iput p2, p0, Lcom/bumptech/glide/request/RequestOptions;->overrideHeight:I

    .line 790
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 792
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 597
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 601
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    .line 602
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x0

    .line 604
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 605
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 607
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 572
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 576
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 577
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/4 p1, 0x0

    .line 579
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->placeholderId:I

    .line 580
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 582
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 551
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 555
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->priority:Lcom/bumptech/glide/Priority;

    .line 556
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 558
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 868
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 872
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestOptions;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/Options;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;

    .line 875
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 823
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 827
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/Key;

    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->signature:Lcom/bumptech/glide/load/Key;

    .line 828
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 829
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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

    .line 435
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier:F

    .line 443
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 445
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 440
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 762
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 766
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->isCacheable:Z

    .line 767
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 769
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 740
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 744
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestOptions;->theme:Landroid/content/res/Resources$Theme;

    .line 745
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 747
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1018
    sget-object v0, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;->TIMEOUT:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1216
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method final transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
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
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1167
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 1171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1172
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1345
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public varargs transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
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
            "Lcom/bumptech/glide/request/RequestOptions;"
        }
    .end annotation

    .line 1237
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 489
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 493
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->useAnimationPool:Z

    .line 494
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 496
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 463
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1

    .line 467
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/RequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    .line 468
    iget p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/RequestOptions;->fields:I

    .line 470
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;->selfOrThrowIfLocked()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    return-object p1
.end method
