.class public Lorg/eclipse/jetty/util/security/CertificateValidator;
.super Ljava/lang/Object;
.source "CertificateValidator.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __aliasCount:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private _crls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field

.field private _enableCRLDP:Z

.field private _enableOCSP:Z

.field private _maxCertPathLength:I

.field private _ocspResponderURL:Ljava/lang/String;

.field private _trustStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/eclipse/jetty/util/security/CertificateValidator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/security/CertificateValidator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/security/CertificateValidator;->__aliasCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_maxCertPathLength:I

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableCRLDP:Z

    .line 68
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableOCSP:Z

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "TrustStore must be specified for CertificateValidator."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_trustStore:Ljava/security/KeyStore;

    .line 86
    iput-object p2, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getCrls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    return-object v0
.end method

.method public getMaxCertPathLength()I
    .locals 1

    .line 276
    iget v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_maxCertPathLength:I

    return v0
.end method

.method public getOcspResponderURL()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_ocspResponderURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStore()Ljava/security/KeyStore;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_trustStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public isEnableCRLDP()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableCRLDP:Z

    return v0
.end method

.method public isEnableOCSP()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableOCSP:Z

    return v0
.end method

.method public setEnableCRLDP(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableCRLDP:Z

    return-void
.end method

.method public setEnableOCSP(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableOCSP:Z

    return-void
.end method

.method public setMaxCertPathLength(I)V
    .locals 0

    .line 287
    iput p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_maxCertPathLength:I

    return-void
.end method

.method public setOcspResponderURL(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_ocspResponderURL:Ljava/lang/String;

    return-void
.end method

.method public validate(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    sget-object v0, Lorg/eclipse/jetty/util/security/CertificateValidator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 137
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to validate certificate for alias ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public validate(Ljava/security/KeyStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 101
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Unable to retrieve aliases from keystore"

    invoke-direct {v0, v1, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public validate(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 157
    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_5

    .line 159
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 166
    :try_start_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Keystore cannot be null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 169
    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 172
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JETTY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%016X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lorg/eclipse/jetty/util/security/CertificateValidator;->__aliasCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :try_start_2
    invoke-virtual {p1, v0, p2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 176
    :goto_0
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 177
    array-length p2, p1
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p2, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate([Ljava/security/cert/Certificate;)V

    goto :goto_4

    .line 179
    :cond_3
    :goto_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to retrieve certificate chain"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0

    .line 184
    :goto_2
    sget-object p2, Lorg/eclipse/jetty/util/security/CertificateValidator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 185
    new-instance p2, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to validate certificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    const-string v0, ""

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " for alias ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    :goto_4
    return-void
.end method

.method public validate([Ljava/security/cert/Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 197
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    instance-of v5, v4, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    .line 205
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid certificate type in chain"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 213
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid certificate chain"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_3
    new-instance p1, Ljava/security/cert/X509CertSelector;

    invoke-direct {p1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 221
    new-instance v1, Ljava/security/cert/PKIXBuilderParameters;

    iget-object v2, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_trustStore:Ljava/security/KeyStore;

    invoke-direct {v1, v2, p1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    const-string p1, "Collection"

    .line 222
    new-instance v2, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v2, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 225
    iget p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_maxCertPathLength:I

    invoke-virtual {v1, p1}, Ljava/security/cert/PKIXBuilderParameters;->setMaxPathLength(I)V

    const/4 p1, 0x1

    .line 228
    invoke-virtual {v1, p1}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 231
    iget-object p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Collection"

    .line 233
    new-instance v0, Ljava/security/cert/CollectionCertStoreParameters;

    iget-object v2, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 237
    :cond_4
    iget-boolean p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableOCSP:Z

    if-eqz p1, :cond_5

    const-string p1, "ocsp.enable"

    const-string v0, "true"

    .line 239
    invoke-static {p1, v0}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_5
    iget-boolean p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableCRLDP:Z

    if-eqz p1, :cond_6

    const-string p1, "com.sun.security.enableCRLDP"

    const-string v0, "true"

    .line 244
    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    const-string p1, "PKIX"

    .line 248
    invoke-static {p1}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object p1

    const-string v0, "PKIX"

    .line 251
    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 255
    sget-object v0, Lorg/eclipse/jetty/util/security/CertificateValidator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 256
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to validate certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
