.class public final Lcom/google/zxing/b/a;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"

# interfaces
.implements Lcom/google/zxing/f;


# static fields
.field private static final a:[Lcom/google/zxing/h;


# instance fields
.field private final b:Lcom/google/zxing/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Lcom/google/zxing/h;

    sput-object v0, Lcom/google/zxing/b/a;->a:[Lcom/google/zxing/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/zxing/b/a/c;

    invoke-direct {v0}, Lcom/google/zxing/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/b/a;->b:Lcom/google/zxing/b/a/c;

    return-void
.end method

.method private static a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/zxing/common/b;->c()[I

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 v1, 0x0

    .line 106
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 107
    aget v3, v0, v3

    const/4 v4, 0x2

    .line 108
    aget v5, v0, v4

    const/4 v6, 0x3

    .line 109
    aget v0, v0, v6

    .line 112
    new-instance v6, Lcom/google/zxing/common/b;

    const/16 v7, 0x21

    const/16 v8, 0x1e

    invoke-direct {v6, v8, v7}, Lcom/google/zxing/common/b;-><init>(II)V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_3

    mul-int v10, v9, v0

    .line 114
    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v10, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_2

    mul-int v12, v11, v5

    .line 116
    div-int/lit8 v13, v5, 0x2

    add-int/2addr v12, v13

    and-int/lit8 v13, v9, 0x1

    mul-int v13, v13, v5

    div-int/2addr v13, v4

    add-int/2addr v12, v13

    div-int/2addr v12, v8

    add-int/2addr v12, v2

    .line 117
    invoke-virtual {p0, v12, v10}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 118
    invoke-virtual {v6, v11, v9}, Lcom/google/zxing/common/b;->b(II)V

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    return-object v6
.end method


# virtual methods
.method public a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/b;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 69
    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/b;->c()Lcom/google/zxing/common/b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/b/a;->a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/b;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/google/zxing/b/a;->b:Lcom/google/zxing/b/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/b/a/c;->a(Lcom/google/zxing/common/b;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1

    .line 76
    new-instance p2, Lcom/google/zxing/g;

    invoke-virtual {p1}, Lcom/google/zxing/common/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/common/d;->a()[B

    move-result-object v1

    sget-object v2, Lcom/google/zxing/b/a;->a:[Lcom/google/zxing/h;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/zxing/g;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/h;Lcom/google/zxing/BarcodeFormat;)V

    .line 78
    invoke-virtual {p1}, Lcom/google/zxing/common/d;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p2, v0, p1}, Lcom/google/zxing/g;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_0
    return-object p2

    .line 73
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public a()V
    .locals 0

    return-void
.end method
