.class public Lcom/flurry/sdk/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "cf"


# instance fields
.field private b:Lcom/flurry/sdk/cg;

.field private c:I

.field private d:[B

.field private final e:Lcom/flurry/sdk/ct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ct<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/cu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/cu<",
            "Lcom/flurry/sdk/ce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/flurry/sdk/cf;->b:Lcom/flurry/sdk/cg;

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/flurry/sdk/cf;->c:I

    .line 49
    iput-object v0, p0, Lcom/flurry/sdk/cf;->d:[B

    .line 51
    iput-object v0, p0, Lcom/flurry/sdk/cf;->f:Lcom/flurry/sdk/cu;

    .line 56
    new-instance v0, Lcom/flurry/sdk/cu;

    .line 57
    invoke-static {}, Lcom/flurry/sdk/cf;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "installationNum"

    new-instance v3, Lcom/flurry/sdk/cf$1;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/cf$1;-><init>(Lcom/flurry/sdk/cf;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    iput-object v0, p0, Lcom/flurry/sdk/cf;->f:Lcom/flurry/sdk/cu;

    .line 69
    new-instance v0, Lcom/flurry/sdk/ct;

    new-instance v1, Lcom/flurry/sdk/dt;

    invoke-direct {v1}, Lcom/flurry/sdk/dt;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ct;-><init>(Lcom/flurry/sdk/dx;)V

    iput-object v0, p0, Lcom/flurry/sdk/cf;->e:Lcom/flurry/sdk/ct;

    .line 72
    new-instance v0, Lcom/flurry/sdk/cg;

    invoke-direct {v0}, Lcom/flurry/sdk/cg;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cf;->b:Lcom/flurry/sdk/cg;

    .line 1085
    invoke-static {}, Lcom/flurry/sdk/cf;->c()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/cf;->a(Ljava/security/Key;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1088
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 1089
    invoke-static {}, Lcom/flurry/sdk/cf;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/em;->b(Ljava/io/File;)Z

    .line 1090
    sget-object v1, Lcom/flurry/sdk/ct$a;->b:Lcom/flurry/sdk/ct$a;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/cf;->a([BLcom/flurry/sdk/ct$a;)Z

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->a()[B

    return-void
.end method

.method private a([BLcom/flurry/sdk/ct$a;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cf;->b()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/sdk/em;->b(Ljava/io/File;)Z

    .line 138
    invoke-static {}, Lcom/flurry/sdk/cf;->d()[B

    move-result-object v2

    .line 139
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 142
    iget-object v4, p0, Lcom/flurry/sdk/cf;->e:Lcom/flurry/sdk/ct;

    invoke-direct {p0}, Lcom/flurry/sdk/cf;->e()Ljava/security/Key;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v3, p2}, Lcom/flurry/sdk/ct;->a(Ljava/lang/Object;Ljava/security/Key;Ljavax/crypto/spec/IvParameterSpec;Lcom/flurry/sdk/ct$a;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 148
    new-instance p1, Lcom/flurry/sdk/ce;

    invoke-virtual {p2}, Lcom/flurry/sdk/ct$a;->ordinal()I

    move-result p2

    invoke-direct {p1, v3, v2, v0, p2}, Lcom/flurry/sdk/ce;-><init>([B[BZI)V

    goto :goto_0

    .line 150
    :cond_0
    new-instance v2, Lcom/flurry/sdk/ce;

    new-array v3, v1, [B

    invoke-virtual {p2}, Lcom/flurry/sdk/ct$a;->ordinal()I

    move-result p2

    invoke-direct {v2, p1, v3, v1, p2}, Lcom/flurry/sdk/ce;-><init>([B[BZI)V

    move-object p1, v2

    .line 152
    :goto_0
    iget-object p2, p0, Lcom/flurry/sdk/cf;->f:Lcom/flurry/sdk/cu;

    invoke-virtual {p2, p1}, Lcom/flurry/sdk/cu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    .line 155
    sget-object v0, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while generating UUID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private a(Ljava/security/Key;)[B
    .locals 6

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/cf;->f:Lcom/flurry/sdk/cu;

    invoke-virtual {v1}, Lcom/flurry/sdk/cu;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ce;

    if-eqz v1, :cond_1

    .line 3030
    iget-boolean v2, v1, Lcom/flurry/sdk/ce;->a:Z

    if-eqz v2, :cond_0

    .line 3034
    iget-object v2, v1, Lcom/flurry/sdk/ce;->b:[B

    .line 3038
    iget-object v3, v1, Lcom/flurry/sdk/ce;->c:[B

    .line 3042
    iget v1, v1, Lcom/flurry/sdk/ce;->d:I

    .line 175
    invoke-static {v1}, Lcom/flurry/sdk/ct$a;->a(I)Lcom/flurry/sdk/ct$a;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 178
    iget-object v4, p0, Lcom/flurry/sdk/cf;->e:Lcom/flurry/sdk/ct;

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v4, v3, p1, v5, v1}, Lcom/flurry/sdk/ct;->a([BLjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;Lcom/flurry/sdk/ct$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 4038
    :cond_0
    iget-object p1, v1, Lcom/flurry/sdk/ce;->c:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    .line 186
    sget-object v1, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    const-string v2, "Error while reading Android Install Id. Deleting file."

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static b()Ljava/io/File;
    .locals 3

    .line 229
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-static {}, Lcom/flurry/sdk/em;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "installationNum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static c()Ljavax/crypto/SecretKey;
    .locals 5

    .line 237
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 4075
    iget-object v0, v0, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 4259
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    .line 5103
    iget-object v1, v1, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 4259
    invoke-static {v1}, Lcom/flurry/sdk/ek;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4261
    invoke-static {v1}, Lcom/flurry/sdk/en;->g(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    const/16 v3, 0x8

    .line 4263
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 241
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v3, 0x3e8

    const/16 v4, 0x100

    invoke-direct {v2, v0, v1, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string v0, "PBEWithSHA256And256BitAES-CBC-BC"

    .line 242
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 244
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    .line 247
    sget-object v2, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    const-string v3, "Error in generate secret key"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static d()[B
    .locals 4

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 5287
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x10

    .line 5288
    new-array v1, v1, [B

    .line 5289
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    .line 280
    sget-object v2, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    const-string v3, "Error in generating iv"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Ljava/security/Key;
    .locals 2

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 301
    invoke-static {}, Lcom/flurry/sdk/cf;->c()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/cf;->b:Lcom/flurry/sdk/cg;

    invoke-virtual {v0}, Lcom/flurry/sdk/cg;->a()Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()[B
    .locals 7

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cf;->d:[B

    if-nez v0, :cond_4

    .line 1312
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1313
    sget-object v0, Lcom/flurry/sdk/ct$a;->c:Lcom/flurry/sdk/ct$a;

    goto :goto_0

    .line 1315
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ct$a;->b:Lcom/flurry/sdk/ct$a;

    .line 107
    :goto_0
    invoke-direct {p0}, Lcom/flurry/sdk/cf;->e()Ljava/security/Key;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/cf;->a(Ljava/security/Key;)[B

    move-result-object v1

    if-nez v1, :cond_3

    .line 2123
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "[^a-f0-9]+"

    const-string v4, ""

    .line 2221
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    .line 2208
    sget-object v4, Lcom/flurry/sdk/cf;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Input string must contain an even number of characters "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2212
    :cond_2
    invoke-static {v1}, Lcom/flurry/sdk/en;->e(Ljava/lang/String;)[B

    move-result-object v3

    .line 112
    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/flurry/sdk/cf;->a([BLcom/flurry/sdk/ct$a;)Z

    move-object v0, v3

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 116
    :goto_2
    iput-object v0, p0, Lcom/flurry/sdk/cf;->d:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 99
    monitor-exit p0

    throw v0
.end method
