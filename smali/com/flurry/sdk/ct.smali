.class public Lcom/flurry/sdk/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ct$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ct"


# instance fields
.field private b:Lcom/flurry/sdk/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dx<",
            "TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/dx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/dx<",
            "TObjectType;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/flurry/sdk/ct;->b:Lcom/flurry/sdk/dx;

    return-void
.end method


# virtual methods
.method public final a([BLjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;Lcom/flurry/sdk/ct$a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/security/Key;",
            "Ljavax/crypto/spec/IvParameterSpec;",
            "Lcom/flurry/sdk/ct$a;",
            ")TObjectType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 2040
    :cond_0
    :try_start_0
    iget-object p4, p4, Lcom/flurry/sdk/ct$a;->d:Ljava/lang/String;

    .line 92
    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    const/4 v2, 0x2

    .line 93
    invoke-virtual {p4, v2, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 94
    invoke-virtual {p4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 105
    iget-object p1, p0, Lcom/flurry/sdk/ct;->b:Lcom/flurry/sdk/dx;

    invoke-interface {p1, p2}, Lcom/flurry/sdk/dx;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 99
    sget-object p2, Lcom/flurry/sdk/ct;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error in decrypt "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 85
    :cond_1
    :goto_0
    sget-object p1, Lcom/flurry/sdk/ct;->a:Ljava/lang/String;

    const-string p2, "Cannot decrypt, invalid params."

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/security/Key;Ljavax/crypto/spec/IvParameterSpec;Lcom/flurry/sdk/ct$a;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObjectType;",
            "Ljava/security/Key;",
            "Ljavax/crypto/spec/IvParameterSpec;",
            "Lcom/flurry/sdk/ct$a;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    iget-object v3, p0, Lcom/flurry/sdk/ct;->b:Lcom/flurry/sdk/dx;

    invoke-interface {v3, v2, p1}, Lcom/flurry/sdk/dx;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1040
    :try_start_0
    iget-object p4, p4, Lcom/flurry/sdk/ct$a;->d:Ljava/lang/String;

    .line 69
    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    const/4 v2, 0x1

    .line 70
    invoke-virtual {p4, v2, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 71
    invoke-virtual {p4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    sget-object p2, Lcom/flurry/sdk/ct;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error in encrypt "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 58
    :cond_1
    :goto_0
    sget-object p1, Lcom/flurry/sdk/ct;->a:Ljava/lang/String;

    const-string p2, "Cannot encrypt, invalid params."

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
