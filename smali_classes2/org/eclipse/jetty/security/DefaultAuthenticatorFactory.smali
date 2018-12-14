.class public Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;
.super Ljava/lang/Object;
.source "DefaultAuthenticatorFactory.java"

# interfaces
.implements Lorg/eclipse/jetty/security/Authenticator$Factory;


# instance fields
.field _loginService:Lorg/eclipse/jetty/security/LoginService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticator(Lorg/eclipse/jetty/server/Server;Ljavax/servlet/ServletContext;Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;Lorg/eclipse/jetty/security/IdentityService;Lorg/eclipse/jetty/security/LoginService;)Lorg/eclipse/jetty/security/Authenticator;
    .locals 0

    .line 59
    invoke-interface {p3}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getAuthMethod()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "BASIC"

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "DIGEST"

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 65
    new-instance p2, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;

    invoke-direct {p2}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;-><init>()V

    goto :goto_1

    :cond_1
    const-string p2, "FORM"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 67
    new-instance p2, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;

    invoke-direct {p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;-><init>()V

    goto :goto_1

    :cond_2
    const-string p2, "SPNEGO"

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 69
    new-instance p2, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;

    invoke-direct {p2}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;-><init>()V

    goto :goto_1

    :cond_3
    const-string p2, "NEGOTIATE"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 71
    new-instance p2, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;

    const-string p3, "NEGOTIATE"

    invoke-direct {p2, p3}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_1

    .line 63
    :cond_5
    :goto_0
    new-instance p2, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;

    invoke-direct {p2}, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;-><init>()V

    :goto_1
    const-string p3, "CLIENT_CERT"

    .line 72
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "CLIENT-CERT"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 73
    :cond_6
    new-instance p2, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;

    invoke-direct {p2}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;-><init>()V

    :cond_7
    return-object p2
.end method

.method public getLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-object v0
.end method

.method public setLoginService(Lorg/eclipse/jetty/security/LoginService;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-void
.end method
