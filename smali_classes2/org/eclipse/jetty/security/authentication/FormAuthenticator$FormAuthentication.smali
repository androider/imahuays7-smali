.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;
.super Lorg/eclipse/jetty/security/UserAuthentication;
.source "FormAuthenticator.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$ResponseSent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/authentication/FormAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormAuthentication"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    .locals 0

    .line 493
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Form"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/eclipse/jetty/security/UserAuthentication;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
