.class public abstract Lcom/yanzhenjie/andserver/f/b;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 30
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yanzhenjie/andserver/f/b;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/yanzhenjie/andserver/f/b;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    const-string v0, "MD5"

    .line 79
    invoke-static {v0, p0}, Lcom/yanzhenjie/andserver/f/b;->b(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;[B)[B
    .locals 0

    .line 130
    invoke-static {p0}, Lcom/yanzhenjie/andserver/f/b;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 144
    invoke-static {p0, p1}, Lcom/yanzhenjie/andserver/f/b;->c(Ljava/lang/String;[B)[C

    move-result-object p0

    .line 145
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4

    .line 123
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find MessageDigest with algorithm \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b([B)[C
    .locals 5

    const/16 v0, 0x20

    .line 176
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 177
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 178
    div-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    .line 179
    sget-object v3, Lcom/yanzhenjie/andserver/f/b;->a:[C

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 180
    sget-object v4, Lcom/yanzhenjie/andserver/f/b;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c(Ljava/lang/String;[B)[C
    .locals 0

    .line 166
    invoke-static {p0, p1}, Lcom/yanzhenjie/andserver/f/b;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    .line 167
    invoke-static {p0}, Lcom/yanzhenjie/andserver/f/b;->b([B)[C

    move-result-object p0

    return-object p0
.end method
