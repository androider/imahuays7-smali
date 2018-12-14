.class public Lorg/seamless/util/io/MD5Crypt;
.super Ljava/lang/Object;
.source "MD5Crypt.java"


# static fields
.field private static final SALTCHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

.field private static final itoa64:Ljava/lang/String; = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final bytes2u(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static final clearbits([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 50
    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 73
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    add-int/lit8 v4, v2, 0x1

    .line 75
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$1$"

    invoke-static {p0, v0, v1}, Lorg/seamless/util/io/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$1$"

    .line 90
    invoke-static {p0, p1, v0}, Lorg/seamless/util/io/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "md5"

    .line 113
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "md5"

    .line 114
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v3, 0x24

    .line 130
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 131
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_2

    .line 135
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    const/16 v5, 0x10

    if-lez v3, :cond_4

    if-le v3, v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v3

    .line 156
    :goto_1
    invoke-virtual {v1, v2, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v3, v3, -0x10

    goto :goto_0

    .line 163
    :cond_4
    invoke-static {v2}, Lorg/seamless/util/io/MD5Crypt;->clearbits([B)V

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    const/4 v7, 0x1

    if-eqz v3, :cond_6

    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_5

    .line 169
    invoke-virtual {v1, v2, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_3

    .line 171
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    :goto_3
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 175
    :cond_6
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x0

    :goto_4
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_b

    :try_start_1
    const-string v3, "md5"

    .line 185
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_7

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_5

    .line 194
    :cond_7
    invoke-virtual {v3, v2, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 197
    :goto_5
    rem-int/lit8 v9, v1, 0x3

    if-eqz v9, :cond_8

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    :cond_8
    rem-int/lit8 v9, v1, 0x7

    if-eqz v9, :cond_9

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/security/MessageDigest;->update([B)V

    :cond_9
    if-eqz v8, :cond_a

    .line 206
    invoke-virtual {v3, v2, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_6

    .line 208
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 211
    :goto_6
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_0
    return-object v0

    .line 216
    :cond_b
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "$"

    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    aget-byte p1, v2, v6

    invoke-static {p1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p1

    shl-int/2addr p1, v5

    const/4 p2, 0x6

    aget-byte p2, v2, p2

    invoke-static {p2}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p2

    shl-int/2addr p2, v4

    or-int/2addr p1, p2

    const/16 p2, 0xc

    aget-byte p2, v2, p2

    invoke-static {p2}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p2

    or-int/2addr p1, p2

    int-to-long p1, p1

    const/4 v0, 0x4

    .line 227
    invoke-static {p1, p2, v0}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    aget-byte p1, v2, v7

    invoke-static {p1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p1

    shl-int/2addr p1, v5

    const/4 p2, 0x7

    aget-byte p2, v2, p2

    invoke-static {p2}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p2

    shl-int/2addr p2, v4

    or-int/2addr p1, p2

    const/16 p2, 0xd

    aget-byte p2, v2, p2

    invoke-static {p2}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p2

    or-int/2addr p1, p2

    int-to-long p1, p1

    .line 231
    invoke-static {p1, p2, v0}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x2

    .line 233
    aget-byte p2, v2, p1

    invoke-static {p2}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p2

    shl-int/2addr p2, v5

    aget-byte v1, v2, v4

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    shl-int/2addr v1, v4

    or-int/2addr p2, v1

    const/16 v1, 0xe

    aget-byte v1, v2, v1

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    or-int/2addr p2, v1

    int-to-long v6, p2

    .line 235
    invoke-static {v6, v7, v0}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p2, 0x3

    .line 237
    aget-byte p2, v2, p2

    invoke-static {p2}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p2

    shl-int/2addr p2, v5

    const/16 v1, 0x9

    aget-byte v1, v2, v1

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    shl-int/2addr v1, v4

    or-int/2addr p2, v1

    const/16 v1, 0xf

    aget-byte v1, v2, v1

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    or-int/2addr p2, v1

    int-to-long v6, p2

    .line 239
    invoke-static {v6, v7, v0}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    aget-byte p2, v2, v0

    invoke-static {p2}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p2

    shl-int/2addr p2, v5

    const/16 v1, 0xa

    aget-byte v1, v2, v1

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    shl-int/2addr v1, v4

    or-int/2addr p2, v1

    const/4 v1, 0x5

    aget-byte v1, v2, v1

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    or-int/2addr p2, v1

    int-to-long v3, p2

    .line 243
    invoke-static {v3, v4, v0}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0xb

    .line 245
    aget-byte p2, v2, p2

    invoke-static {p2}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result p2

    int-to-long v0, p2

    .line 246
    invoke-static {v0, v1, p1}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-static {v2}, Lorg/seamless/util/io/MD5Crypt;->clearbits([B)V

    .line 251
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 117
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1}, Lorg/seamless/util/io/MD5Crypt;->isEqual([CLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEqual([CLjava/lang/String;)Z
    .locals 5

    const-string v0, "\\$"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 260
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    return v2

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 263
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    const/4 p0, 0x2

    aget-object p0, v0, p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lorg/seamless/util/io/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p1, :cond_5

    if-nez p0, :cond_1

    goto :goto_2

    .line 267
    :cond_1
    array-length v0, p1

    array-length v1, p0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 269
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_4

    if-eqz v1, :cond_4

    .line 270
    aget-char v1, p1, v0

    aget-char v3, p0, v0

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    return v1

    :cond_5
    :goto_2
    if-ne p1, p0, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method private static final to64(JI)Ljava/lang/String;
    .locals 6

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    const-string v1, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    const-wide/16 v2, 0x3f

    and-long v4, p0, v2

    long-to-int v2, v4

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x6

    ushr-long/2addr p0, v1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
