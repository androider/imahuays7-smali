.class Lorg/eclipse/jetty/security/SecurityHandler$1;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Ljavax/servlet/http/HttpSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/security/SecurityHandler;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/security/SecurityHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/security/SecurityHandler;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler$1;->this$0:Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Ljavax/servlet/http/HttpSessionEvent;)V
    .locals 2

    .line 311
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 318
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p1}, Ljavax/servlet/http/HttpSessionEvent;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object p1

    const-string v0, "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V
    .locals 0

    return-void
.end method
