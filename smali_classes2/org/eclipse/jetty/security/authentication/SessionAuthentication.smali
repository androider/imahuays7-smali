.class public Lorg/eclipse/jetty/security/authentication/SessionAuthentication;
.super Ljava/lang/Object;
.source "SessionAuthentication.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/servlet/http/HttpSessionActivationListener;
.implements Ljavax/servlet/http/HttpSessionBindingListener;
.implements Lorg/eclipse/jetty/server/Authentication$User;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __J_AUTHENTICATED:Ljava/lang/String; = "org.eclipse.jetty.security.UserIdentity"

.field private static final serialVersionUID:J = -0x406ff66c4f384292L


# instance fields
.field private final _credentials:Ljava/lang/Object;

.field private final _method:Ljava/lang/String;

.field private final _name:Ljava/lang/String;

.field private transient _session:Ljavax/servlet/http/HttpSession;

.field private transient _userIdentity:Lorg/eclipse/jetty/server/UserIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;Ljava/lang/Object;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_method:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    .line 62
    iget-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    invoke-interface {p1}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_name:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_credentials:Ljava/lang/Object;

    return-void
.end method

.method private doLogout()V
    .locals 2

    .line 107
    invoke-static {}, Lorg/eclipse/jetty/security/SecurityHandler;->getCurrentSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/security/SecurityHandler;->logout(Lorg/eclipse/jetty/server/Authentication$User;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    const-string v1, "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 86
    invoke-static {}, Lorg/eclipse/jetty/security/SecurityHandler;->getCurrentSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object p1

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "!SecurityHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/SecurityHandler;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object p1

    if-nez p1, :cond_1

    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "!LoginService"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_credentials:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    .line 94
    sget-object p1, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "Deserialized and relogged in {}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    return-object v0
.end method

.method public isUserInRole(Lorg/eclipse/jetty/server/UserIdentity$Scope;Ljava/lang/String;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    invoke-interface {v0, p2, p1}, Lorg/eclipse/jetty/server/UserIdentity;->isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z

    move-result p1

    return p1
.end method

.method public logout()V
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    const-string v1, "org.eclipse.jetty.security.UserIdentity"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    const-string v1, "org.eclipse.jetty.security.UserIdentity"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->doLogout()V

    return-void
.end method

.method public sessionDidActivate(Ljavax/servlet/http/HttpSessionEvent;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p1}, Ljavax/servlet/http/HttpSessionEvent;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    :cond_0
    return-void
.end method

.method public sessionWillPassivate(Ljavax/servlet/http/HttpSessionEvent;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Ljavax/servlet/http/HttpSessionBindingEvent;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Ljavax/servlet/http/HttpSession;

    :cond_0
    return-void
.end method

.method public valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->doLogout()V

    return-void
.end method
