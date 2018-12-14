.class public Lcom/jess/arms/http/imageloader/glide/a;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "BlurTransformation.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.jess.arms.http.imageloader.glide.a"

.field private static final b:[B


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget-object v0, Lcom/jess/arms/http/imageloader/glide/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/jess/arms/http/imageloader/glide/a;->b:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/16 v0, 0xf

    .line 42
    iput v0, p0, Lcom/jess/arms/http/imageloader/glide/a;->c:I

    .line 45
    iput p1, p0, Lcom/jess/arms/http/imageloader/glide/a;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 61
    instance-of p1, p1, Lcom/jess/arms/http/imageloader/glide/a;

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 66
    sget-object v0, Lcom/jess/arms/http/imageloader/glide/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget p1, p0, Lcom/jess/arms/http/imageloader/glide/a;->c:I

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/jess/arms/c/f;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    sget-object v0, Lcom/jess/arms/http/imageloader/glide/a;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
