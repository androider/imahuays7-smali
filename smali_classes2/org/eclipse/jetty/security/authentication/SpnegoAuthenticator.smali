.class public Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "SpnegoAuthenticator.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _authMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    const-string v0, "SPNEGO"

    .line 42
    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_authMethod:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    const-string v0, "SPNEGO"

    .line 42
    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_authMethod:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_authMethod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_authMethod:Ljava/lang/String;

    return-object v0
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

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .line 67
    move-object v0, p1

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    .line 68
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Authorization"

    .line 70
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    .line 74
    new-instance p1, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    return-object p1

    :cond_0
    if-nez v0, :cond_2

    .line 82
    :try_start_0
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    return-object p1

    .line 87
    :cond_1
    sget-object p1, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p3, "SpengoAuthenticator: sending challenge"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "WWW-Authenticate"

    const-string p3, "Negotiate"

    .line 88
    invoke-interface {p2, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x191

    .line 89
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 90
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 94
    new-instance p2, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    if-eqz v0, :cond_3

    const-string p2, "Negotiate"

    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xa

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 101
    invoke-virtual {p0, p3, p2, p1}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    new-instance p2, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    return-object p2

    .line 109
    :cond_3
    sget-object p1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    return-object p1
.end method
