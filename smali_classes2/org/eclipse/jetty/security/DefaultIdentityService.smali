.class public Lorg/eclipse/jetty/security/DefaultIdentityService;
.super Ljava/lang/Object;
.source "DefaultIdentityService.java"

# interfaces
.implements Lorg/eclipse/jetty/security/IdentityService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public disassociate(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public newRunAsToken(Ljava/lang/String;)Lorg/eclipse/jetty/security/RunAsToken;
    .locals 1

    .line 75
    new-instance v0, Lorg/eclipse/jetty/security/RoleRunAsToken;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/security/RoleRunAsToken;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .line 87
    new-instance v0, Lorg/eclipse/jetty/security/DefaultUserIdentity;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jetty/security/DefaultUserIdentity;-><init>(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)V

    return-object v0
.end method

.method public setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method

.method public unsetRunAs(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
