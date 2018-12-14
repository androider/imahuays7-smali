.class Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;
.super Ljavax/servlet/http/HttpServlet;
.source "AsyncServletStreamServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->createServlet(Lorg/fourthline/cling/transport/Router;)Ljavax/servlet/Servlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

.field final synthetic val$router:Lorg/fourthline/cling/transport/Router;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;Lorg/fourthline/cling/transport/Router;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->this$0:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->val$router:Lorg/fourthline/cling/transport/Router;

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    iget-object p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->this$0:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    invoke-static {p2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$008(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;)I

    move-result p2

    .line 104
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "HttpServlet.service(): id: %3d, request URI: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->startAsync()Ljavax/servlet/AsyncContext;

    move-result-object v2

    .line 108
    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->this$0:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    invoke-virtual {v3}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getAsyncTimeoutSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Ljavax/servlet/AsyncContext;->setTimeout(J)V

    .line 110
    new-instance v3, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;

    invoke-direct {v3, p0, v0, v1, p2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$1;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;JI)V

    invoke-interface {v2, v3}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    .line 144
    new-instance p2, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$2;

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->val$router:Lorg/fourthline/cling/transport/Router;

    .line 145
    invoke-interface {v0}, Lorg/fourthline/cling/transport/Router;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    invoke-direct {p2, p0, v0, v2, p1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$2;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;Lorg/fourthline/cling/protocol/ProtocolFactory;Ljavax/servlet/AsyncContext;Ljavax/servlet/http/HttpServletRequest;)V

    .line 152
    iget-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->val$router:Lorg/fourthline/cling/transport/Router;

    invoke-interface {p1, p2}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V

    return-void
.end method
