.class public Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/transport/impl/StreamServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HttpServerConnection"
.end annotation


# instance fields
.field protected exchange:Lcom/sun/net/httpserver/HttpExchange;

.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lcom/sun/net/httpserver/HttpExchange;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/sun/net/httpserver/HttpExchange;

    return-void
.end method


# virtual methods
.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/sun/net/httpserver/HttpExchange;

    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpExchange;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/sun/net/httpserver/HttpExchange;

    .line 150
    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpExchange;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/sun/net/httpserver/HttpExchange;

    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpExchange;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/sun/net/httpserver/HttpExchange;

    .line 143
    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpExchange;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->this$0:Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl$HttpServerConnection;->exchange:Lcom/sun/net/httpserver/HttpExchange;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->isConnectionOpen(Lcom/sun/net/httpserver/HttpExchange;)Z

    move-result v0

    return v0
.end method
