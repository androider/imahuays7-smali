.class public Lorg/fourthline/cling/model/types/UDN;
.super Ljava/lang/Object;
.source "UDN.java"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "uuid:"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private identifierString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/UDN;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/fourthline/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    return-void
.end method

.method public static uniqueSystemIdentifier(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDN;
    .locals 7

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    sget-boolean v1, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-nez v1, :cond_0

    .line 105
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lorg/fourthline/cling/model/ModelUtil;->getFirstNetworkInterfaceHardwareAddress()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "MD5"

    .line 118
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 119
    new-instance v1, Lorg/fourthline/cling/model/types/UDN;

    new-instance v2, Ljava/util/UUID;

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 121
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v5, p0

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/types/UDN;-><init>(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This method does not create a unique identifier on Android, see the Javadoc and use new UDN(UUID) instead!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDN;
    .locals 2

    .line 72
    new-instance v0, Lorg/fourthline/cling/model/types/UDN;

    const-string v1, "uuid:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "uuid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0}, Lorg/fourthline/cling/model/types/UDN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 138
    instance-of v0, p1, Lorg/fourthline/cling/model/types/UDN;

    if-nez v0, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/types/UDN;

    .line 140
    iget-object v0, p0, Lorg/fourthline/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    iget-object p1, p1, Lorg/fourthline/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIdentifierString()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/fourthline/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isUDA11Compliant()Z
    .locals 1

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/UDN;->getIdentifierString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
