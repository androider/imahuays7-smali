.class Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$2;
.super Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;
.source "AsyncServletStreamServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;Lorg/fourthline/cling/protocol/ProtocolFactory;Ljavax/servlet/AsyncContext;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$2;->this$1:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/transport/impl/AsyncServletUpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Ljavax/servlet/AsyncContext;Ljavax/servlet/http/HttpServletRequest;)V

    return-void
.end method


# virtual methods
.method protected createConnection()Lorg/fourthline/cling/model/message/Connection;
    .locals 3

    .line 148
    new-instance v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$2;->this$1:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;

    iget-object v1, v1, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1;->this$0:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$1$2;->getRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl$AsyncServletConnection;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method
