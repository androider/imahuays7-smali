.class public Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "AliasedX509ExtendedKeyManager.java"


# instance fields
.field private _keyAlias:Ljava/lang/String;

.field private _keyManager:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyAlias:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
