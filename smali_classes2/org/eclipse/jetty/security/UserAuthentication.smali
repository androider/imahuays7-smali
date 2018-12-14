.class public Lorg/eclipse/jetty/security/UserAuthentication;
.super Ljava/lang/Object;
.source "UserAuthentication.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$User;


# instance fields
.field private final _method:Ljava/lang/String;

.field private final _userIdentity:Lorg/eclipse/jetty/server/UserIdentity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/eclipse/jetty/security/UserAuthentication;->_method:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/eclipse/jetty/security/UserAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/security/UserAuthentication;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/security/UserAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    return-object v0
.end method

.method public isUserInRole(Lorg/eclipse/jetty/server/UserIdentity$Scope;Ljava/lang/String;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/security/UserAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    invoke-interface {v0, p2, p1}, Lorg/eclipse/jetty/server/UserIdentity;->isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z

    move-result p1

    return p1
.end method

.method public logout()V
    .locals 1

    .line 63
    invoke-static {}, Lorg/eclipse/jetty/security/SecurityHandler;->getCurrentSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/security/SecurityHandler;->logout(Lorg/eclipse/jetty/server/Authentication$User;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{User,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/UserAuthentication;->getAuthMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/security/UserAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
