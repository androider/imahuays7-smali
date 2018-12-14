.class public Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;
.super Ljava/lang/Object;
.source "AsyncServletStreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AsyncServletConnection"
.end annotation


# instance fields
.field protected request:Ljavax/servlet/http/HttpServletRequest;

.field final synthetic this$0:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;->this$0:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;->request:Ljavax/servlet/http/HttpServletRequest;

    return-void
.end method


# virtual methods
.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;->getRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 2

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;->getRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRequest()Ljavax/servlet/http/HttpServletRequest;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;->request:Ljavax/servlet/http/HttpServletRequest;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;->this$0:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;->getRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->isConnectionOpen(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result v0

    return v0
.end method
