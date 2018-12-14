.class public Lorg/eclipse/jetty/server/ssl/ServletSSL;
.super Ljava/lang/Object;
.source "ServletSSL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deduceKeyLength(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "WITH_AES_256_"

    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/16 p0, 0x100

    return p0

    :cond_1
    const-string v1, "WITH_RC4_128_"

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x80

    if-ltz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "WITH_AES_128_"

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    return v2

    :cond_3
    const-string v1, "WITH_RC4_40_"

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x28

    if-ltz v1, :cond_4

    return v3

    :cond_4
    const-string v1, "WITH_3DES_EDE_CBC_"

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    const/16 p0, 0xa8

    return p0

    :cond_5
    const-string v1, "WITH_IDEA_CBC_"

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    return v2

    :cond_6
    const-string v1, "WITH_RC2_CBC_40_"

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    return v3

    :cond_7
    const-string v1, "WITH_DES40_CBC_"

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8

    return v3

    :cond_8
    const-string v1, "WITH_DES_CBC_"

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_9

    const/16 p0, 0x38

    return p0

    :cond_9
    return v0
.end method
