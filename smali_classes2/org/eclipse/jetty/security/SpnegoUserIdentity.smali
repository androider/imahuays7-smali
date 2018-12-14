.class public Lorg/eclipse/jetty/security/SpnegoUserIdentity;
.super Ljava/lang/Object;
.source "SpnegoUserIdentity.java"

# interfaces
.implements Lorg/eclipse/jetty/server/UserIdentity;


# instance fields
.field private _principal:Ljava/security/Principal;

.field private _roles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _subject:Ljavax/security/auth/Subject;


# direct methods
.method public constructor <init>(Ljavax/security/auth/Subject;Ljava/security/Principal;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/Principal;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoUserIdentity;->_subject:Ljavax/security/auth/Subject;

    .line 37
    iput-object p2, p0, Lorg/eclipse/jetty/security/SpnegoUserIdentity;->_principal:Ljava/security/Principal;

    .line 38
    iput-object p3, p0, Lorg/eclipse/jetty/security/SpnegoUserIdentity;->_roles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSubject()Ljavax/security/auth/Subject;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserIdentity;->_subject:Ljavax/security/auth/Subject;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoUserIdentity;->_principal:Ljava/security/Principal;

    return-object v0
.end method

.method public isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z
    .locals 0

    .line 54
    iget-object p2, p0, Lorg/eclipse/jetty/security/SpnegoUserIdentity;->_roles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
