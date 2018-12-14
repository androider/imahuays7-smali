.class public final Lcom/google/zxing/qrcode/decoder/e;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/c;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/a;->e:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/c;-><init>(Lcom/google/zxing/common/reedsolomon/a;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/e;->a:Lcom/google/zxing/common/reedsolomon/c;

    return-void
.end method

.method private a(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lcom/google/zxing/common/d;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/a;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->b()Lcom/google/zxing/qrcode/decoder/h;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->a()Lcom/google/zxing/qrcode/decoder/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/f;->a()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->c()[B

    move-result-object p1

    .line 151
    invoke-static {p1, v0, v1}, Lcom/google/zxing/qrcode/decoder/b;->a([BLcom/google/zxing/qrcode/decoder/h;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/b;

    move-result-object p1

    .line 155
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    .line 156
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/b;->a()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-array v2, v5, [B

    .line 162
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    .line 163
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/b;->b()[B

    move-result-object v8

    .line 164
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/b;->a()I

    move-result v7

    .line 165
    invoke-direct {p0, v8, v7}, Lcom/google/zxing/qrcode/decoder/e;->a([BI)V

    move v9, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 167
    aget-byte v11, v8, v6

    aput-byte v11, v2, v9

    add-int/lit8 v6, v6, 0x1

    move v9, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_1

    .line 172
    :cond_2
    invoke-static {v2, v0, v1, p2}, Lcom/google/zxing/qrcode/decoder/d;->a([BLcom/google/zxing/qrcode/decoder/h;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 184
    array-length v0, p1

    .line 186
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 188
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/e;->a:Lcom/google/zxing/common/reedsolomon/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/c;->a([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 198
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 193
    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lcom/google/zxing/common/b;Ljava/util/Map;)Lcom/google/zxing/common/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/b;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/zxing/qrcode/decoder/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/a;-><init>(Lcom/google/zxing/common/b;)V

    const/4 p1, 0x0

    .line 93
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/e;->a(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    .line 103
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->d()V

    const/4 v2, 0x1

    .line 106
    invoke-virtual {v0, v2}, Lcom/google/zxing/qrcode/decoder/a;->a(Z)V

    .line 109
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->b()Lcom/google/zxing/qrcode/decoder/h;

    .line 112
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->a()Lcom/google/zxing/qrcode/decoder/f;

    .line 121
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->e()V

    .line 123
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/e;->a(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p2

    .line 126
    new-instance v0, Lcom/google/zxing/qrcode/decoder/g;

    invoke-direct {v0, v2}, Lcom/google/zxing/qrcode/decoder/g;-><init>(Z)V

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/d;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p2

    :catch_2
    move-exception p2

    if-eqz p1, :cond_0

    .line 133
    throw p1

    :cond_0
    if-eqz v1, :cond_1

    .line 136
    throw v1

    .line 138
    :cond_1
    throw p2
.end method
