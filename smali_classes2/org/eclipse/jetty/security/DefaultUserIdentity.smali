.class public Lorg/eclipse/jetty/security/DefaultUserIdentity;
.super Ljava/lang/Object;
.source "DefaultUserIdentity.java"

# interfaces
.implements Lorg/eclipse/jetty/server/UserIdentity;


# instance fields
.field private final _roles:[Ljava/lang/String;

.field private final _subject:Ljavax/security/auth/Subject;

.field private final _userPrincipal:Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/eclipse/jetty/security/DefaultUserIdentity;->_subject:Ljavax/security/auth/Subject;

    .line 42
    iput-object p2, p0, Lorg/eclipse/jetty/security/DefaultUserIdentity;->_userPrincipal:Ljava/security/Principal;

    .line 43
    iput-object p3, p0, Lorg/eclipse/jetty/security/DefaultUserIdentity;->_roles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSubject()Ljavax/security/auth/Subject;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/security/DefaultUserIdentity;->_subject:Ljavax/security/auth/Subject;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/security/DefaultUserIdentity;->_userPrincipal:Ljava/security/Principal;

    return-object v0
.end method

.method public isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 58
    invoke-interface {p2}, Lorg/eclipse/jetty/server/UserIdentity$Scope;->getRoleRefMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {p2}, Lorg/eclipse/jetty/server/UserIdentity$Scope;->getRoleRefMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 61
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jetty/security/DefaultUserIdentity;->_roles:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/eclipse/jetty/security/DefaultUserIdentity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/security/DefaultUserIdentity;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
