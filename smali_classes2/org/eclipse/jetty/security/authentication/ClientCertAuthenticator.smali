.class public Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "ClientCertAuthenticator.java"


# static fields
.field private static final PASSWORD_PROPERTY:Ljava/lang/String; = "org.eclipse.jetty.ssl.password"


# instance fields
.field private _crlPath:Ljava/lang/String;

.field private _enableCRLDP:Z

.field private _enableOCSP:Z

.field private _maxCertPathLength:I

.field private _ocspResponderURL:Ljava/lang/String;

.field private transient _trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

.field private _trustStorePath:Ljava/lang/String;

.field private _trustStoreProvider:Ljava/lang/String;

.field private _trustStoreType:Ljava/lang/String;

.field private _validateCerts:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    const-string v0, "JKS"

    .line 57
    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    .line 70
    iput-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "CLIENT_CERT"

    return-object v0
.end method

.method public getCrlPath()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-static {p1, p2, p3, p4, p5}, Lorg/eclipse/jetty/util/security/CertificateUtils;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    return-object p1
.end method

.method public getMaxCertPathLength()I
    .locals 1

    .line 301
    iget v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    return v0
.end method

.method public getOcspResponderURL()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_ocspResponderURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStore()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStoreProvider()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStoreType()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableCRLDP()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    return v0
.end method

.method public isEnableOCSP()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    return v0
.end method

.method public isValidateCerts()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    return v0
.end method

.method protected loadCRL(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lorg/eclipse/jetty/util/security/CertificateUtils;->loadCRL(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setCrlPath(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    return-void
.end method

.method public setEnableCRLDP(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    return-void
.end method

.method public setEnableOCSP(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    return-void
.end method

.method public setMaxCertPathLength(I)V
    .locals 0

    .line 312
    iput p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    return-void
.end method

.method public setOcspResponderURL(Ljava/lang/String;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_ocspResponderURL:Ljava/lang/String;

    return-void
.end method

.method public setTrustStore(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    return-void
.end method

.method public setTrustStorePassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "org.eclipse.jetty.ssl.password"

    const/4 v1, 0x0

    .line 274
    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    return-void
.end method

.method public setTrustStoreProvider(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    return-void
.end method

.method public setTrustStoreType(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    return-void
.end method

.method public setValidateCerts(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    return-void
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 93
    new-instance p1, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    return-object p1

    .line 95
    :cond_0
    move-object p3, p1

    check-cast p3, Ljavax/servlet/http/HttpServletRequest;

    .line 96
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    const-string v0, "javax.servlet.request.X509Certificate"

    .line 97
    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/security/cert/X509Certificate;

    if-eqz p3, :cond_7

    .line 102
    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_7

    .line 105
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 107
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->loadCRL(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 111
    new-instance v2, Lorg/eclipse/jetty/util/security/CertificateValidator;

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jetty/util/security/CertificateValidator;-><init>(Ljava/security/KeyStore;Ljava/util/Collection;)V

    .line 112
    invoke-virtual {v2, p3}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate([Ljava/security/cert/Certificate;)V

    .line 115
    :cond_2
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    aget-object v2, p3, v1

    if-nez v2, :cond_3

    goto :goto_4

    .line 120
    :cond_3
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    if-nez v3, :cond_4

    .line 121
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    const-string v3, "clientcert"

    goto :goto_3

    .line 122
    :cond_5
    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    .line 124
    :goto_3
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v2

    .line 126
    invoke-virtual {p0, v3, v2, p1}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 129
    new-instance p1, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    return-object p1

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_5

    .line 134
    :cond_7
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x193

    .line 136
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 137
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    return-object p1

    .line 140
    :cond_8
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 144
    :goto_5
    new-instance p2, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
