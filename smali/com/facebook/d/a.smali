.class public Lcom/facebook/d/a;
.super Ljava/lang/Object;
.source "DefaultImageFormatChecker.java"

# interfaces
.implements Lcom/facebook/d/c$a;


# static fields
.field private static final b:[B

.field private static final c:I

.field private static final d:[B

.field private static final e:I

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:I

.field private static final j:[B

.field private static final k:I

.field private static final l:[Ljava/lang/String;

.field private static final m:I


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 131
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/facebook/d/a;->b:[B

    .line 132
    sget-object v1, Lcom/facebook/d/a;->b:[B

    array-length v1, v1

    sput v1, Lcom/facebook/d/a;->c:I

    const/16 v1, 0x8

    .line 154
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/facebook/d/a;->d:[B

    .line 158
    sget-object v1, Lcom/facebook/d/a;->d:[B

    array-length v1, v1

    sput v1, Lcom/facebook/d/a;->e:I

    const-string v1, "GIF87a"

    .line 178
    invoke-static {v1}, Lcom/facebook/d/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/d/a;->f:[B

    const-string v1, "GIF89a"

    .line 179
    invoke-static {v1}, Lcom/facebook/d/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/d/a;->g:[B

    const-string v1, "BM"

    .line 201
    invoke-static {v1}, Lcom/facebook/d/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/d/a;->h:[B

    .line 202
    sget-object v1, Lcom/facebook/d/a;->h:[B

    array-length v1, v1

    sput v1, Lcom/facebook/d/a;->i:I

    const/4 v1, 0x4

    .line 220
    new-array v2, v1, [B

    fill-array-data v2, :array_2

    sput-object v2, Lcom/facebook/d/a;->j:[B

    .line 223
    sget-object v2, Lcom/facebook/d/a;->j:[B

    array-length v2, v2

    sput v2, Lcom/facebook/d/a;->k:I

    const/4 v2, 0x6

    .line 248
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "heic"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "heix"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "hevc"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "hevx"

    aput-object v3, v2, v0

    const-string v0, "mif1"

    aput-object v0, v2, v1

    const-string v0, "msf1"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/d/a;->l:[Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ftyp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/d/a;->l:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/facebook/d/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/facebook/d/a;->m:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 27
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget v1, Lcom/facebook/d/a;->c:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/facebook/d/a;->e:I

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v2, Lcom/facebook/d/a;->i:I

    const/4 v3, 0x5

    aput v2, v0, v3

    sget v2, Lcom/facebook/d/a;->k:I

    aput v2, v0, v1

    sget v1, Lcom/facebook/d/a;->m:I

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 28
    invoke-static {v0}, Lcom/facebook/common/internal/e;->a([I)I

    move-result v0

    iput v0, p0, Lcom/facebook/d/a;->a:I

    return-void
.end method

.method private static b([BI)Lcom/facebook/d/c;
    .locals 2

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, p1}, Lcom/facebook/common/f/c;->b([BII)Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 106
    invoke-static {p0, v0}, Lcom/facebook/common/f/c;->b([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    sget-object p0, Lcom/facebook/d/b;->f:Lcom/facebook/d/c;

    return-object p0

    .line 110
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/common/f/c;->c([BI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    sget-object p0, Lcom/facebook/d/b;->g:Lcom/facebook/d/c;

    return-object p0

    .line 114
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/facebook/common/f/c;->a([BII)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    invoke-static {p0, v0}, Lcom/facebook/common/f/c;->a([BI)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    sget-object p0, Lcom/facebook/d/b;->j:Lcom/facebook/d/c;

    return-object p0

    .line 118
    :cond_2
    invoke-static {p0, v0}, Lcom/facebook/common/f/c;->d([BI)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 119
    sget-object p0, Lcom/facebook/d/b;->i:Lcom/facebook/d/c;

    return-object p0

    .line 121
    :cond_3
    sget-object p0, Lcom/facebook/d/b;->h:Lcom/facebook/d/c;

    return-object p0

    .line 124
    :cond_4
    sget-object p0, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    return-object p0
.end method

.method private static c([BI)Z
    .locals 1

    .line 146
    sget-object v0, Lcom/facebook/d/a;->b:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    sget-object p1, Lcom/facebook/d/a;->b:[B

    .line 147
    invoke-static {p0, p1}, Lcom/facebook/d/e;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d([BI)Z
    .locals 1

    .line 170
    sget-object v0, Lcom/facebook/d/a;->d:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    sget-object p1, Lcom/facebook/d/a;->d:[B

    .line 171
    invoke-static {p0, p1}, Lcom/facebook/d/e;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e([BI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    return v0

    .line 194
    :cond_0
    sget-object p1, Lcom/facebook/d/a;->f:[B

    invoke-static {p0, p1}, Lcom/facebook/d/e;->a([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/facebook/d/a;->g:[B

    .line 195
    invoke-static {p0, p1}, Lcom/facebook/d/e;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static f([BI)Z
    .locals 1

    .line 213
    sget-object v0, Lcom/facebook/d/a;->h:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 216
    :cond_0
    sget-object p1, Lcom/facebook/d/a;->h:[B

    invoke-static {p0, p1}, Lcom/facebook/d/e;->a([B[B)Z

    move-result p0

    return p0
.end method

.method private static g([BI)Z
    .locals 1

    .line 235
    sget-object v0, Lcom/facebook/d/a;->j:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 238
    :cond_0
    sget-object p1, Lcom/facebook/d/a;->j:[B

    invoke-static {p0, p1}, Lcom/facebook/d/e;->a([B[B)Z

    move-result p0

    return p0
.end method

.method private static h([BI)Z
    .locals 7

    .line 264
    sget v0, Lcom/facebook/d/a;->m:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x3

    .line 268
    aget-byte p1, p0, p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    return v1

    .line 273
    :cond_1
    sget-object p1, Lcom/facebook/d/a;->l:[Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 274
    array-length v4, p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ftyp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-static {v3}, Lcom/facebook/d/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    sget v5, Lcom/facebook/d/a;->m:I

    .line 275
    invoke-static {p0, v4, v3, v5}, Lcom/facebook/d/e;->a([BI[BI)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/facebook/d/a;->a:I

    return v0
.end method

.method public final a([BI)Lcom/facebook/d/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 54
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0, p2}, Lcom/facebook/common/f/c;->b([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1, p2}, Lcom/facebook/d/a;->b([BI)Lcom/facebook/d/c;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/d/a;->c([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object p1, Lcom/facebook/d/b;->a:Lcom/facebook/d/c;

    return-object p1

    .line 64
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/d/a;->d([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    sget-object p1, Lcom/facebook/d/b;->b:Lcom/facebook/d/c;

    return-object p1

    .line 68
    :cond_2
    invoke-static {p1, p2}, Lcom/facebook/d/a;->e([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-object p1, Lcom/facebook/d/b;->c:Lcom/facebook/d/c;

    return-object p1

    .line 72
    :cond_3
    invoke-static {p1, p2}, Lcom/facebook/d/a;->f([BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    sget-object p1, Lcom/facebook/d/b;->d:Lcom/facebook/d/c;

    return-object p1

    .line 76
    :cond_4
    invoke-static {p1, p2}, Lcom/facebook/d/a;->g([BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    sget-object p1, Lcom/facebook/d/b;->e:Lcom/facebook/d/c;

    return-object p1

    .line 80
    :cond_5
    invoke-static {p1, p2}, Lcom/facebook/d/a;->h([BI)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 81
    sget-object p1, Lcom/facebook/d/b;->k:Lcom/facebook/d/c;

    return-object p1

    .line 84
    :cond_6
    sget-object p1, Lcom/facebook/d/c;->a:Lcom/facebook/d/c;

    return-object p1
.end method
