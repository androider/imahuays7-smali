.class public Lorg/eclipse/jetty/security/RoleRunAsToken;
.super Ljava/lang/Object;
.source "RoleRunAsToken.java"

# interfaces
.implements Lorg/eclipse/jetty/security/RunAsToken;


# instance fields
.field private final _runAsRole:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/eclipse/jetty/security/RoleRunAsToken;->_runAsRole:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRunAsRole()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/eclipse/jetty/security/RoleRunAsToken;->_runAsRole:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoleRunAsToken("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/security/RoleRunAsToken;->_runAsRole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
