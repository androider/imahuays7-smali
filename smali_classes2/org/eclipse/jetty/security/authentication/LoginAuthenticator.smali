.class public abstract Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.super Ljava/lang/Object;
.source "LoginAuthenticator.java"

# interfaces
.implements Lorg/eclipse/jetty/security/Authenticator;


# instance fields
.field protected _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field protected _loginService:Lorg/eclipse/jetty/security/LoginService;

.field private _renewSession:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 50
    check-cast p3, Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0, p3, p2}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->renewSession(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljavax/servlet/http/HttpSession;

    return-object p1

    :cond_0
    return-object p2
.end method

.method protected renewSession(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljavax/servlet/http/HttpSession;
    .locals 2

    const/4 p2, 0x0

    .line 85
    invoke-interface {p1, p2}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    .line 89
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_renewSession:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 91
    monitor-enter p0

    const/4 v0, 0x1

    .line 93
    :try_start_0
    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->renewSession(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpSession;Z)Ljavax/servlet/http/HttpSession;

    move-result-object p2

    .line 94
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-object p2
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 3

    .line 59
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No LoginService for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No IdentityService for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->isSessionRenewedOnAuthentication()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_renewSession:Z

    return-void
.end method
