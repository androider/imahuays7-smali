.class public Lorg/eclipse/jetty/server/ssl/SslCertificates;
.super Ljava/lang/Object;
.source "SslCertificates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
    }
.end annotation


# static fields
.field static final CACHED_INFO_ATTR:Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 44
    const-class v0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customize(Ljavax/net/ssl/SSLSession;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "https"

    .line 107
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object p1

    .line 116
    sget-object v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->getKeySize()Ljava/lang/Integer;

    move-result-object p0

    .line 120
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->getCerts()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->getIdStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/eclipse/jetty/server/ssl/ServletSSL;->deduceKeyLength(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 126
    invoke-static {p0}, Lorg/eclipse/jetty/server/ssl/SslCertificates;->getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 127
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v2

    .line 128
    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance v3, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;

    invoke-direct {v3, v0, v1, v2}, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;-><init>(Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 130
    sget-object v4, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {p0, v4, v3}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p0, v0

    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "javax.servlet.request.X509Certificate"

    .line 134
    invoke-virtual {p2, v2, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "javax.servlet.request.cipher_suite"

    .line 136
    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "javax.servlet.request.key_size"

    .line 137
    invoke-virtual {p2, p1, p0}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "javax.servlet.request.ssl_session_id"

    .line 138
    invoke-virtual {p2, p0, v0}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 142
    sget-object p1, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p2, "EXCEPTION "

    invoke-interface {p1, p2, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;
    .locals 7

    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 51
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    array-length v1, p0

    .line 55
    new-array v2, v1, [Ljava/security/cert/X509Certificate;

    const-string v3, "X.509"

    .line 57
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 60
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    .line 61
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    invoke-virtual {v3, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 73
    sget-object v1, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    return-object v0
.end method
