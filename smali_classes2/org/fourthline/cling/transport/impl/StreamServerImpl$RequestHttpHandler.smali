.class public Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lcom/sun/net/httpserver/HttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/transport/impl/StreamServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RequestHttpHandler"
.end annotation


# instance fields
.field private final router:Lorg/fourthline/cling/transport/Router;

.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lorg/fourthline/cling/transport/Router;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    return-void
.end method


# virtual methods
.method public handle(Lcom/sun/net/httpserver/HttpExchange;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received HTTP exchange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->router:Lorg/fourthline/cling/transport/Router;

    .line 106
    invoke-interface {v2}, Lorg/fourthline/cling/transport/Router;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p1}, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/sun/net/httpserver/HttpExchange;Lcom/sun/net/httpserver/HttpExchange;)V

    .line 105
    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->received(Lorg/fourthline/cling/transport/spi/UpnpStream;)V

    return-void
.end method
