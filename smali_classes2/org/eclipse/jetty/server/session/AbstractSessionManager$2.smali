.class Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;
.super Ljava/lang/Object;
.source "AbstractSessionManager.java"

# interfaces
.implements Ljavax/servlet/SessionCookieConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionComment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 873
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .line 879
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 885
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 891
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    return-object v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .line 897
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_httpOnly:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 903
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_secureCookies:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    .line 909
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iput-object p1, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionComment:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    .line 915
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iput-object p1, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionDomain:Ljava/lang/String;

    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 1

    .line 921
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iput-boolean p1, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_httpOnly:Z

    return-void
.end method

.method public setMaxAge(I)V
    .locals 1

    .line 927
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iput p1, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iput-object p1, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1

    .line 939
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iput-object p1, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionPath:Ljava/lang/String;

    return-void
.end method

.method public setSecure(Z)V
    .locals 1

    .line 945
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iput-boolean p1, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_secureCookies:Z

    return-void
.end method
