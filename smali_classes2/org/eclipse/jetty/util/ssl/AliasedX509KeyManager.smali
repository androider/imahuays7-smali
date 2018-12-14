.class public Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;
.super Ljava/lang/Object;
.source "AliasedX509KeyManager.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyAlias:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyAlias:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyAlias:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->_keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
