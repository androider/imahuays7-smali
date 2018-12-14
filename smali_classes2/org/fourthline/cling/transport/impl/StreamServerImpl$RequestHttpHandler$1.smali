.class Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;
.super Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;
.source "StreamServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->handle(Lcom/sun/net/httpserver/HttpExchange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

.field final synthetic val$httpExchange:Lcom/sun/net/httpserver/HttpExchange;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/sun/net/httpserver/HttpExchange;Lcom/sun/net/httpserver/HttpExchange;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;->this$1:Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    iput-object p4, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;->val$httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/sun/net/httpserver/HttpExchange;)V

    return-void
.end method


# virtual methods
.method protected createConnection()Lorg/fourthline/cling/model/message/Connection;
    .locals 3

    .line 109
    new-instance v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;->this$1:Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    iget-object v1, v1, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler$1;->val$httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lcom/sun/net/httpserver/HttpExchange;)V

    return-object v0
.end method
