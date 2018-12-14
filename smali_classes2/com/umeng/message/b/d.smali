.class public abstract Lcom/umeng/message/b/d;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# instance fields
.field private final a:I

.field protected final b:B

.field protected final c:I

.field protected d:[B

.field protected e:I

.field protected f:Z

.field protected g:I

.field protected h:I

.field private final i:I

.field private final j:I

.field private k:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    .line 70
    iput-byte v0, p0, Lcom/umeng/message/b/d;->b:B

    .line 132
    iput p1, p0, Lcom/umeng/message/b/d;->a:I

    .line 133
    iput p2, p0, Lcom/umeng/message/b/d;->i:I

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 134
    div-int/2addr p3, p2

    mul-int p3, p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lcom/umeng/message/b/d;->c:I

    .line 135
    iput p4, p0, Lcom/umeng/message/b/d;->j:I

    return-void
.end method

.method private c()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/umeng/message/b/d;->b()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    .line 169
    iput v1, p0, Lcom/umeng/message/b/d;->e:I

    .line 170
    iput v1, p0, Lcom/umeng/message/b/d;->k:I

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 173
    iget-object v2, p0, Lcom/umeng/message/b/d;->d:[B

    iget-object v3, p0, Lcom/umeng/message/b/d;->d:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iput-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/umeng/message/b/d;->e:I

    .line 239
    iput v0, p0, Lcom/umeng/message/b/d;->k:I

    .line 240
    iput v0, p0, Lcom/umeng/message/b/d;->g:I

    .line 241
    iput v0, p0, Lcom/umeng/message/b/d;->h:I

    .line 242
    iput-boolean v0, p0, Lcom/umeng/message/b/d;->f:Z

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/umeng/message/b/d;->e:I

    iget v1, p0, Lcom/umeng/message/b/d;->k:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected a(I)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    array-length v0, v0

    iget v1, p0, Lcom/umeng/message/b/d;->e:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/umeng/message/b/d;->c()V

    :cond_1
    return-void
.end method

.method abstract a([BII)V
.end method

.method protected abstract a(B)Z
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method abstract b([BII)V
.end method

.method c([BII)I
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/umeng/message/b/d;->a()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 204
    iget-object v0, p0, Lcom/umeng/message/b/d;->d:[B

    iget v1, p0, Lcom/umeng/message/b/d;->k:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget p1, p0, Lcom/umeng/message/b/d;->k:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/umeng/message/b/d;->k:I

    .line 206
    iget p1, p0, Lcom/umeng/message/b/d;->k:I

    iget p2, p0, Lcom/umeng/message/b/d;->e:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/umeng/message/b/d;->d:[B

    :cond_0
    return p3

    .line 211
    :cond_1
    iget-boolean p1, p0, Lcom/umeng/message/b/d;->f:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c([B)[B
    .locals 2

    .line 312
    invoke-direct {p0}, Lcom/umeng/message/b/d;->d()V

    if-eqz p1, :cond_1

    .line 313
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/b/d;->b([BII)V

    const/4 v0, -0x1

    .line 317
    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/b/d;->b([BII)V

    .line 318
    iget p1, p0, Lcom/umeng/message/b/d;->e:I

    new-array p1, p1, [B

    .line 319
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/b/d;->c([BII)I

    return-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public d([B)[B
    .locals 2

    .line 331
    invoke-direct {p0}, Lcom/umeng/message/b/d;->d()V

    if-eqz p1, :cond_1

    .line 332
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/b/d;->a([BII)V

    const/4 v0, -0x1

    .line 336
    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/b/d;->a([BII)V

    .line 337
    iget p1, p0, Lcom/umeng/message/b/d;->e:I

    iget v0, p0, Lcom/umeng/message/b/d;->k:I

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 338
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/message/b/d;->c([BII)I

    return-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected e([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 413
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    const/16 v2, 0x3d

    .line 414
    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_2

    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/umeng/message/b/d;->a(B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public f([B)J
    .locals 8

    .line 432
    array-length p1, p1

    iget v0, p0, Lcom/umeng/message/b/d;->a:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/umeng/message/b/d;->a:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lcom/umeng/message/b/d;->i:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 433
    iget p1, p0, Lcom/umeng/message/b/d;->c:I

    if-lez p1, :cond_0

    .line 435
    iget p1, p0, Lcom/umeng/message/b/d;->c:I

    int-to-long v2, p1

    add-long v4, v0, v2

    const-wide/16 v2, 0x1

    sub-long v6, v4, v2

    iget p1, p0, Lcom/umeng/message/b/d;->c:I

    int-to-long v2, p1

    div-long/2addr v6, v2

    iget p1, p0, Lcom/umeng/message/b/d;->j:I

    int-to-long v2, p1

    mul-long v6, v6, v2

    add-long v2, v0, v6

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method
