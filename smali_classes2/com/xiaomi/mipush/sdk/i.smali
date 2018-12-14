.class public Lcom/xiaomi/mipush/sdk/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mipush/sdk/i;->a:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x17t
        0x54t
        0x72t
        0x48t
        0x0t
        0x4t
        0x61t
        0x49t
        0x61t
        0x2t
        0x34t
        0x54t
        0x66t
        0x12t
        0x20t
    .end array-data
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/h;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/h;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/h;"
        }
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/u;->a(Lorg/apache/thrift/a;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "invoke convertThriftObjectToBytes method, return null."

    :goto_0
    invoke-static {p0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/h;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/h;-><init>()V

    if-eqz p3, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/e;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "regSecret is empty, return null"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/a/a/e/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/i;->b([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "encryption error. "

    invoke-static {p0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    :cond_2
    move-object p0, p1

    :goto_1
    new-instance p1, Lcom/xiaomi/xmpush/thrift/d;

    invoke-direct {p1}, Lcom/xiaomi/xmpush/thrift/d;-><init>()V

    const-wide/16 v2, 0x5

    iput-wide v2, p1, Lcom/xiaomi/xmpush/thrift/d;->a:J

    const-string v0, "fakeid"

    iput-object v0, p1, Lcom/xiaomi/xmpush/thrift/d;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/h;->a(Lcom/xiaomi/xmpush/thrift/d;)Lcom/xiaomi/xmpush/thrift/h;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/h;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1, p2}, Lcom/xiaomi/xmpush/thrift/h;->a(Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/h;

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/h;->c(Z)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1, p4}, Lcom/xiaomi/xmpush/thrift/h;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/h;->a(Z)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1, p5}, Lcom/xiaomi/xmpush/thrift/h;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/h;

    return-object v1
.end method

.method private static a([BI)Ljavax/crypto/Cipher;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/xiaomi/mipush/sdk/i;->a:[B

    invoke-direct {p0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/h;)Lorg/apache/thrift/a;
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/e;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/a/a/e/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->f()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/i;->a([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/thrift/d;

    const-string v0, "the aes decrypt failed."

    invoke-direct {p1, v0, p0}, Lorg/apache/thrift/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->f()[B

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/i;->a(Lcom/xiaomi/xmpush/thrift/a;)Lorg/apache/thrift/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, p0}, Lcom/xiaomi/xmpush/thrift/u;->a(Lorg/apache/thrift/a;[B)V

    :cond_1
    return-object p1
.end method

.method private static a(Lcom/xiaomi/xmpush/thrift/a;)Lorg/apache/thrift/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/i$1;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/xiaomi/xmpush/thrift/g;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/g;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/xiaomi/xmpush/thrift/m;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/m;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/xiaomi/xmpush/thrift/g;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/g;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/e;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/xiaomi/xmpush/thrift/n;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/n;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/xiaomi/xmpush/thrift/t;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/t;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/xiaomi/xmpush/thrift/p;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/p;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/xiaomi/xmpush/thrift/r;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/r;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/xiaomi/xmpush/thrift/k;

    invoke-direct {p0}, Lcom/xiaomi/xmpush/thrift/k;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a([B[B)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/i;->a([BI)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B[B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/i;->a([BI)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
