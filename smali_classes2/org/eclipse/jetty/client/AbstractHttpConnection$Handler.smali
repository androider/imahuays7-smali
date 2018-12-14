.class Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;
.super Lorg/eclipse/jetty/http/HttpParser$EventHandler;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/AbstractHttpConnection$1;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    return-void
.end method


# virtual methods
.method public content(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    :cond_0
    return-void
.end method

.method public earlyEOF()V
    .locals 3

    .line 346
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    .line 351
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    const-string v2, "early EOF"

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public headerComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 321
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    const-string v1, "CONNECT"

    .line 322
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpParser;->setPersistent(Z)V

    :cond_0
    return-void
.end method

.method public messageComplete(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object p1, p1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz p1, :cond_0

    const/4 p2, 0x7

    .line 340
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    :cond_0
    return-void
.end method

.method public parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v0, :cond_1

    .line 307
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 309
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_connectionHeader:Lorg/eclipse/jetty/io/Buffer;

    .line 311
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    :cond_1
    return-void
.end method

.method public startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v0, :cond_0

    .line 274
    invoke-static {}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object p1

    const-string p2, "No exchange for response"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-static {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->access$300(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    return-void

    :cond_0
    const/16 v1, 0x64

    if-eq p2, v1, :cond_2

    const/16 v1, 0x66

    if-eq p2, v1, :cond_2

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "CONNECT"

    .line 289
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/HttpParser;->setHeadResponse(Z)V

    goto :goto_0

    .line 284
    :cond_2
    new-instance v1, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 294
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    .line 295
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iput p2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_status:I

    .line 296
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    const/4 p1, 0x5

    .line 297
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    return-void
.end method
