.class public final Lcom/google/zxing/e;
.super Lcom/google/zxing/c;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 1

    .line 47
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/c;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_2

    add-int v0, p5, p7

    if-le v0, p3, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/google/zxing/e;->a:[B

    .line 54
    iput p2, p0, Lcom/google/zxing/e;->b:I

    .line 55
    iput p3, p0, Lcom/google/zxing/e;->c:I

    .line 56
    iput p4, p0, Lcom/google/zxing/e;->d:I

    .line 57
    iput p5, p0, Lcom/google/zxing/e;->e:I

    if-eqz p8, :cond_1

    .line 59
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/e;->a(II)V

    :cond_1
    return-void

    .line 50
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(II)V
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/google/zxing/e;->a:[B

    .line 158
    iget v1, p0, Lcom/google/zxing/e;->e:I

    iget v2, p0, Lcom/google/zxing/e;->b:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/google/zxing/e;->d:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 159
    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 161
    aget-byte v6, v0, v4

    .line 162
    aget-byte v7, v0, v5

    aput-byte v7, v0, v4

    .line 163
    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 158
    iget v3, p0, Lcom/google/zxing/e;->b:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcom/google/zxing/e;->b()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/google/zxing/e;->c()I

    move-result v1

    .line 84
    iget v2, p0, Lcom/google/zxing/e;->b:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/google/zxing/e;->c:I

    if-ne v1, v2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/zxing/e;->a:[B

    return-object v0

    :cond_0
    mul-int v2, v0, v1

    .line 89
    new-array v3, v2, [B

    .line 90
    iget v4, p0, Lcom/google/zxing/e;->e:I

    iget v5, p0, Lcom/google/zxing/e;->b:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/google/zxing/e;->d:I

    add-int/2addr v4, v5

    .line 93
    iget v5, p0, Lcom/google/zxing/e;->b:I

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/zxing/e;->a:[B

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v2, v6, v0

    .line 101
    iget-object v5, p0, Lcom/google/zxing/e;->a:[B

    invoke-static {v5, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v2, p0, Lcom/google/zxing/e;->b:I

    add-int/2addr v4, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public a(I[B)[B
    .locals 3

    if-ltz p1, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/google/zxing/e;->c()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/e;->b()I

    move-result v0

    if-eqz p2, :cond_1

    .line 69
    array-length v1, p2

    if-ge v1, v0, :cond_2

    .line 70
    :cond_1
    new-array p2, v0, [B

    .line 72
    :cond_2
    iget v1, p0, Lcom/google/zxing/e;->e:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/zxing/e;->b:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/google/zxing/e;->d:I

    add-int/2addr p1, v1

    .line 73
    iget-object v1, p0, Lcom/google/zxing/e;->a:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 66
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested row is outside the image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public f()[I
    .locals 13

    .line 125
    invoke-virtual {p0}, Lcom/google/zxing/e;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 126
    invoke-virtual {p0}, Lcom/google/zxing/e;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v0, v1

    .line 127
    new-array v2, v2, [I

    .line 128
    iget-object v3, p0, Lcom/google/zxing/e;->a:[B

    .line 129
    iget v4, p0, Lcom/google/zxing/e;->e:I

    iget v5, p0, Lcom/google/zxing/e;->b:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/google/zxing/e;->d:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    mul-int v7, v4, v0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_0

    shl-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v6

    .line 134
    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v7, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int v9, v9, v12

    or-int/2addr v9, v11

    .line 135
    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 137
    :cond_0
    iget v7, p0, Lcom/google/zxing/e;->b:I

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public g()I
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/google/zxing/e;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public h()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/google/zxing/e;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
