.class public Lcom/mh/movie/core/mvp/ui/utils/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"


# static fields
.field private static QRCODE_BLANK_WIDTH:I = 0x14

.field private static QRCODE_IMAGE_WIDTH:I = 0x4

.field public static QRCODE_WIDTH:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8

    .line 37
    :try_start_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 38
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/google/zxing/qrcode/b;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/b;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p0

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/b;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->deleteWhite(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/google/zxing/common/b;->f()I

    move-result v7

    mul-int p1, v7, v7

    .line 44
    new-array v1, p1, [I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_1

    .line 47
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    mul-int v3, v0, v7

    add-int/2addr v3, v2

    const/high16 v4, -0x1000000

    .line 48
    aput v4, v1, v3

    goto :goto_2

    :cond_0
    mul-int v3, v0, v7

    add-int/2addr v3, v2

    const/4 v4, -0x1

    .line 50
    aput v4, v1, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v7

    move v6, v7

    .line 57
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 60
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createQRCodeWithLogo(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17

    .line 77
    :try_start_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 78
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Lcom/google/zxing/qrcode/b;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/b;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/b;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->deleteWhite(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/google/zxing/common/b;->f()I

    move-result v9

    .line 90
    invoke-virtual {v1}, Lcom/google/zxing/common/b;->g()I

    move-result v2

    .line 92
    sget v3, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->QRCODE_IMAGE_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    div-int v3, v9, v3

    .line 93
    div-int/lit8 v4, v9, 0x2

    .line 94
    div-int/lit8 v2, v2, 0x2

    .line 96
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v5, 0x40000000    # 2.0f

    int-to-float v6, v3

    mul-float v6, v6, v5

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v6, v5

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 99
    invoke-virtual {v15, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    mul-int v6, v9, v9

    .line 105
    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    sub-int v11, v4, v3

    if-le v10, v11, :cond_0

    add-int v11, v4, v3

    if-ge v10, v11, :cond_0

    sub-int v11, v2, v3

    if-le v8, v11, :cond_0

    add-int v11, v2, v3

    if-ge v8, v11, :cond_0

    mul-int v11, v8, v9

    add-int/2addr v11, v10

    sub-int v12, v10, v4

    add-int/2addr v12, v3

    sub-int v13, v8, v2

    add-int/2addr v13, v3

    .line 111
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    aput v12, v6, v11

    goto :goto_2

    .line 113
    :cond_0
    invoke-virtual {v1, v10, v8}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_1

    mul-int v11, v8, v9

    add-int/2addr v11, v10

    const/high16 v12, -0x1000000

    .line 114
    aput v12, v6, v11

    goto :goto_2

    :cond_1
    mul-int v11, v8, v9

    add-int/2addr v11, v10

    const/4 v12, -0x1

    .line 116
    aput v12, v6, v11

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 121
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, v6

    move v5, v9

    move v6, v7

    move v7, v8

    move v8, v9

    .line 123
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 126
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static deleteWhite(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;
    .locals 11

    .line 132
    invoke-virtual {p0}, Lcom/google/zxing/common/b;->c()[I

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/common/b;->f()I

    move-result v1

    sget v2, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->QRCODE_BLANK_WIDTH:I

    div-int/2addr v1, v2

    .line 134
    invoke-virtual {p0}, Lcom/google/zxing/common/b;->g()I

    move-result v2

    sget v3, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->QRCODE_BLANK_WIDTH:I

    div-int/2addr v2, v3

    const/4 v3, 0x2

    .line 136
    aget v3, v0, v3

    const/4 v4, 0x3

    .line 137
    aget v4, v0, v4

    .line 139
    new-instance v5, Lcom/google/zxing/common/b;

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v3

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v4

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/common/b;-><init>(II)V

    .line 140
    invoke-virtual {v5}, Lcom/google/zxing/common/b;->a()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_2

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_1

    .line 143
    aget v9, v0, v6

    add-int/2addr v9, v7

    const/4 v10, 0x1

    aget v10, v0, v10

    add-int/2addr v10, v8

    invoke-virtual {p0, v9, v10}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int v9, v1, v7

    add-int v10, v8, v2

    .line 144
    invoke-virtual {v5, v9, v10}, Lcom/google/zxing/common/b;->b(II)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public static drawable2Bitmaop(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 156
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapFromResources(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 152
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
