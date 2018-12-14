.class Lcom/sina/weibo/sdk/net/HttpsHelper;
.super Ljava/lang/Object;
.source "HttpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/HttpsHelper$KeyStoresTrustManagerEX;
    }
.end annotation


# static fields
.field private static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCertificate(Ljava/lang/String;Landroid/content/Context;)Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "X.509"

    .line 48
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 52
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method

.method public static getSSL(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .line 28
    sget-object v0, Lcom/sina/weibo/sdk/net/HttpsHelper;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    .line 29
    sget-object p0, Lcom/sina/weibo/sdk/net/HttpsHelper;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0

    .line 32
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v2, "geo_global_ca.cer"

    .line 35
    invoke-static {v2, p0}, Lcom/sina/weibo/sdk/net/HttpsHelper;->getCertificate(Ljava/lang/String;Landroid/content/Context;)Ljava/security/cert/Certificate;

    move-result-object p0

    const-string v2, "get_global_ca"

    .line 36
    invoke-virtual {v0, v2, p0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const-string p0, "TLS"

    .line 37
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    const/4 v2, 0x1

    .line 38
    new-array v3, v2, [Ljavax/net/ssl/TrustManager;

    new-instance v4, Lcom/sina/weibo/sdk/net/HttpsHelper$KeyStoresTrustManagerEX;

    new-array v2, v2, [Ljava/security/KeyStore;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    invoke-direct {v4, v2}, Lcom/sina/weibo/sdk/net/HttpsHelper$KeyStoresTrustManagerEX;-><init>([Ljava/security/KeyStore;)V

    aput-object v4, v3, v5

    .line 39
    invoke-virtual {p0, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 40
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    sput-object p0, Lcom/sina/weibo/sdk/net/HttpsHelper;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    sget-object p0, Lcom/sina/weibo/sdk/net/HttpsHelper;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method
