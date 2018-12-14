.class public final Lcom/google/zxing/datamatrix/a/d;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/c;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/a;->f:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/c;-><init>(Lcom/google/zxing/common/reedsolomon/a;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/a/d;->a:Lcom/google/zxing/common/reedsolomon/c;

    return-void
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 116
    array-length v0, p1

    .line 118
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 120
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/a/d;->a:Lcom/google/zxing/common/reedsolomon/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/c;->a([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 130
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 125
    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/d;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/google/zxing/datamatrix/a/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/a/a;-><init>(Lcom/google/zxing/common/b;)V

    .line 76
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/a/a;->a()Lcom/google/zxing/datamatrix/a/e;

    move-result-object p1

    .line 79
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/a/a;->b()[B

    move-result-object v0

    .line 81
    invoke-static {v0, p1}, Lcom/google/zxing/datamatrix/a/b;->a([BLcom/google/zxing/datamatrix/a/e;)[Lcom/google/zxing/datamatrix/a/b;

    move-result-object p1

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    .line 86
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/a/b;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-array v0, v3, [B

    .line 90
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 93
    aget-object v4, p1, v3

    .line 94
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/a/b;->b()[B

    move-result-object v5

    .line 95
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/a/b;->a()I

    move-result v4

    .line 96
    invoke-direct {p0, v5, v4}, Lcom/google/zxing/datamatrix/a/d;->a([BI)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    mul-int v7, v6, v2

    add-int/2addr v7, v3

    .line 99
    aget-byte v8, v5, v6

    aput-byte v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/datamatrix/a/c;->a([B)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method
