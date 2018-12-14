.class public Lanet/channel/h/f;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public static a([B[B)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 16
    :try_start_0
    invoke-static {p0, p1}, Lanet/channel/h/f;->b([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lanet/channel/h/g;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "awcn.HMacUtil"

    const-string v0, "hmacSha1Hex"

    .line 17
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "result"

    aput-object v6, v5, v2

    aput-object p0, v5, v1

    invoke-static {p1, v0, v4, v5}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p0, v0

    :catch_1
    const-string p1, "awcn.HMacUtil"

    const-string v0, "hmacSha1Hex"

    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "result"

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-static {p1, v0, v4, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method private static b([B[B)[B
    .locals 2

    .line 25
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    const-string p0, "HmacSHA256"

    .line 29
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 31
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
