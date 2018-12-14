.class Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "MovedContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/MovedContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Redirector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;Lorg/eclipse/jetty/server/handler/MovedContextHandler$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;-><init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object p1, p1, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object p1, p1, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardPathInfo:Z

    if-nez v0, :cond_1

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean p1, p1, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardQuery:Z

    if-nez p1, :cond_3

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p1, 0x3f

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "\r\n?&="

    const-string v1, "!"

    .line 120
    invoke-virtual {p1, p3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, "Location"

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object p1, p1, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_expires:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p1, "Expires"

    .line 127
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object p3, p3, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_expires:Ljava/lang/String;

    invoke-interface {p4, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean p1, p1, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_permanent:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x12d

    goto :goto_1

    :cond_5
    const/16 p1, 0x12e

    :goto_1
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const/4 p1, 0x0

    .line 130
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return-void
.end method
