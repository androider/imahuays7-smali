.class public Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
.super Ljava/lang/Object;
.source "DeferredAuthentication.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$Deferred;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field static final __deferredResponse:Ljavax/servlet/http/HttpServletResponse;

.field private static __nullOut:Ljavax/servlet/ServletOutputStream;


# instance fields
.field protected final _authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

.field private _previousAssociation:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 149
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    .line 319
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Ljavax/servlet/ServletOutputStream;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "No Authenticator"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    return-void
.end method

.method static synthetic access$000()Ljavax/servlet/ServletOutputStream;
    .locals 1

    .line 46
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Ljavax/servlet/ServletOutputStream;

    return-object v0
.end method

.method public static isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 1

    .line 143
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;
    .locals 3

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    sget-object v1, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    instance-of v0, p1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jetty/server/Authentication$ResponseSent;

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 83
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method public authenticate(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/eclipse/jetty/server/Authentication;
    .locals 3

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object p1

    .line 101
    instance-of p2, p1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 102
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {p2}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 107
    sget-object p2, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public getPreviousAssociation()Ljava/lang/Object;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p2, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {p2}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object p2

    .line 122
    new-instance p3, Lorg/eclipse/jetty/security/UserAuthentication;

    const-string v0, "API"

    invoke-direct {p3, v0, p1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    if-eqz p2, :cond_0

    .line 124
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;

    :cond_0
    return-object p3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
