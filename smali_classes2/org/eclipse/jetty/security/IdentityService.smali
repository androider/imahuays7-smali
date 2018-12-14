.class public interface abstract Lorg/eclipse/jetty/security/IdentityService;
.super Ljava/lang/Object;
.source "IdentityService.java"


# static fields
.field public static final NO_ROLES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jetty/security/IdentityService;->NO_ROLES:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;
.end method

.method public abstract disassociate(Ljava/lang/Object;)V
.end method

.method public abstract getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
.end method

.method public abstract newRunAsToken(Ljava/lang/String;)Lorg/eclipse/jetty/security/RunAsToken;
.end method

.method public abstract newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
.end method

.method public abstract setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;
.end method

.method public abstract unsetRunAs(Ljava/lang/Object;)V
.end method
