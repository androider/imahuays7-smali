.class public abstract Lorg/eclipse/jetty/server/AbstractHttpConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;,
        Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;,
        Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final UNKNOWN:I = -0x2

.field private static final __currentConnection:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jetty/server/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _associatedObject:Ljava/lang/Object;

.field private _charset:Ljava/lang/String;

.field protected final _connector:Lorg/eclipse/jetty/server/Connector;

.field private _delayedHandling:Z

.field private _earlyEOF:Z

.field private _expect:Z

.field private _expect100Continue:Z

.field private _expect102Processing:Z

.field protected final _generator:Lorg/eclipse/jetty/http/Generator;

.field private _head:Z

.field private _host:Z

.field protected volatile _in:Ljavax/servlet/ServletInputStream;

.field _include:I

.field protected volatile _out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

.field protected final _parser:Lorg/eclipse/jetty/http/Parser;

.field protected volatile _printWriter:Ljava/io/PrintWriter;

.field protected final _request:Lorg/eclipse/jetty/server/Request;

.field protected final _requestFields:Lorg/eclipse/jetty/http/HttpFields;

.field private _requests:I

.field protected final _response:Lorg/eclipse/jetty/server/Response;

.field protected final _responseFields:Lorg/eclipse/jetty/http/HttpFields;

.field protected final _server:Lorg/eclipse/jetty/server/Server;

.field protected final _uri:Lorg/eclipse/jetty/http/HttpURI;

.field private _version:I

.field protected volatile _writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    const-class v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 100
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 3

    .line 150
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    const/4 v0, -0x2

    .line 124
    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 128
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 129
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    .line 130
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 131
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    .line 132
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 133
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    const-string v0, "UTF-8"

    .line 151
    sget-object v1, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpURI;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/EncodedHttpURI;

    sget-object v1, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 152
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    .line 153
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    check-cast p1, Lorg/eclipse/jetty/http/HttpBuffers;

    .line 154
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpBuffers;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Lorg/eclipse/jetty/server/AbstractHttpConnection$1;)V

    invoke-virtual {p0, v0, p2, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->newHttpParser(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)Lorg/eclipse/jetty/http/HttpParser;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    .line 155
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 156
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 157
    new-instance v0, Lorg/eclipse/jetty/server/Request;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/Request;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    .line 158
    new-instance v0, Lorg/eclipse/jetty/server/Response;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/Response;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    .line 159
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpBuffers;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->newHttpGenerator(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/http/HttpGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    .line 160
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/Server;->getSendServerVersion()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/eclipse/jetty/http/Generator;->setSendServerVersion(Z)V

    .line 161
    iput-object p3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;Lorg/eclipse/jetty/http/Parser;Lorg/eclipse/jetty/http/Generator;Lorg/eclipse/jetty/server/Request;)V
    .locals 1

    .line 168
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    const/4 p2, -0x2

    .line 124
    iput p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    const/4 p2, 0x0

    .line 127
    iput-boolean p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 128
    iput-boolean p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 129
    iput-boolean p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    .line 130
    iput-boolean p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 131
    iput-boolean p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    .line 132
    iput-boolean p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 133
    iput-boolean p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    .line 170
    sget-object p2, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {p2}, Lorg/eclipse/jetty/http/HttpURI;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/eclipse/jetty/http/EncodedHttpURI;

    sget-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {p2, v0}, Lorg/eclipse/jetty/http/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 171
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    .line 172
    iput-object p4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    .line 173
    new-instance p1, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {p1}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 174
    new-instance p1, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {p1}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 175
    iput-object p6, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    .line 176
    new-instance p1, Lorg/eclipse/jetty/server/Response;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/server/Response;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    .line 177
    iput-object p5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    .line 178
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/Server;->getSendServerVersion()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/eclipse/jetty/http/Generator;->setSendServerVersion(Z)V

    .line 179
    iput-object p3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    return-void
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 95
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .locals 1

    .line 138
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    return-object v0
.end method

.method protected static setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1

    .line 144
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public commitResponse(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 610
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 611
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 612
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v1, v2, p1}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 616
    sget-object v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, p1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 619
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {p1}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 620
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-interface {p1, v1, v0}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 621
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 622
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {p1}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 623
    new-instance p1, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {p1, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 628
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {p1}, Lorg/eclipse/jetty/http/Generator;->complete()V

    :cond_2
    return-void
.end method

.method public completeResponse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 639
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 643
    sget-object v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    sget-object v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 646
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 647
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 648
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-interface {v1, v3, v2}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 649
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 650
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 651
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v0, v3}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0

    .line 655
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->complete()V

    return-void
.end method

.method protected content(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 959
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 960
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    :cond_0
    return-void
.end method

.method public earlyEOF()V
    .locals 1

    const/4 v0, 0x1

    .line 977
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    return-void
.end method

.method public flushResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 663
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 664
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 668
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    throw v0
.end method

.method public getAssociatedObject()Ljava/lang/Object;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_associatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnector()Lorg/eclipse/jetty/server/Connector;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    return-object v0
.end method

.method public getGenerator()Lorg/eclipse/jetty/http/Generator;
    .locals 1

    .line 675
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    return-object v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed before 100 Continues"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->send1xx(I)V

    :cond_2
    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 340
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    if-nez v0, :cond_4

    .line 341
    new-instance v0, Lorg/eclipse/jetty/server/HttpInput;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/HttpInput;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    .line 342
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 2

    .line 734
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->isLowResources()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getMaxIdleTime()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 735
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getLowResourceMaxIdleTime()I

    move-result v0

    return v0

    .line 736
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    if-lez v0, :cond_1

    .line 737
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    return v0

    .line 738
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    .line 353
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    return-object v0
.end method

.method public getParser()Lorg/eclipse/jetty/http/Parser;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    return-object v0
.end method

.method public getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2

    .line 364
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    .line 365
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    if-nez v0, :cond_1

    .line 367
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    .line 368
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isUncheckedPrintWriter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    .line 389
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;->setCharacterEncoding(Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    return-object p1
.end method

.method public getRequest()Lorg/eclipse/jetty/server/Request;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    return-object v0
.end method

.method public getRequestFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getRequests()I
    .locals 1

    .line 207
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    return v0
.end method

.method public getResolveNames()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getResolveNames()Z

    move-result v0

    return v0
.end method

.method public getResponse()Lorg/eclipse/jetty/server/Response;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    return-object v0
.end method

.method public getResponseFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getServer()Lorg/eclipse/jetty/server/Server;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    return-object v0
.end method

.method public abstract handle()Lorg/eclipse/jetty/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleRequest()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 430
    :try_start_0
    sget-object v6, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 433
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 445
    :goto_0
    iget-object v7, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    .line 446
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v8

    .line 447
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->handling()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    move v11, v8

    const/4 v10, 0x0

    move-object v8, v3

    :goto_2
    if-eqz v9, :cond_d

    .line 450
    :try_start_2
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v9, v4}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/16 v9, 0x190

    const/16 v12, 0x1f4

    .line 455
    :try_start_3
    iget-object v13, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v13}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I
    :try_end_3
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    :try_start_4
    iget-object v13, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v13}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 464
    :try_start_5
    sget-object v14, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v15, "Failed UTF-8 decode for request path, trying ISO-8859-1"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v14, v15, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    sget-object v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v13}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 466
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    const-string v13, "ISO-8859-1"

    invoke-virtual {v2, v13}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 469
    :goto_3
    invoke-static {v13}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_3

    .line 470
    :try_start_6
    iget-object v14, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v14}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "CONNECT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    if-nez v13, :cond_2

    .line 472
    iget-object v13, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v13}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    iget-object v13, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v13}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    const-string v13, "/"
    :try_end_6
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 475
    :try_start_7
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v14, ""

    invoke-virtual {v2, v14}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 478
    :cond_2
    :try_start_8
    new-instance v11, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v11, v9}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v11
    :try_end_8
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_1
    move-exception v0

    move-object v13, v2

    :goto_4
    move-object v2, v0

    goto/16 :goto_8

    :cond_3
    move-object v13, v2

    .line 480
    :goto_5
    :try_start_9
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v2, v13}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 482
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-eqz v2, :cond_4

    .line 483
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->reopen()V

    .line 485
    :cond_4
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, v2, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 487
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    sget-object v11, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 488
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    iget-object v11, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v14, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-interface {v2, v11, v14}, Lorg/eclipse/jetty/server/Connector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 489
    invoke-virtual {v7, v1}, Lorg/eclipse/jetty/server/Server;->handle(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    goto :goto_7

    .line 493
    :cond_5
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, v2, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v11, :cond_6

    .line 495
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    const-string v11, "Async Timeout"

    invoke-virtual {v2, v12, v11}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    .line 496
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v11, "javax.servlet.error.status_code"

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v11, v14}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v11, "javax.servlet.error.message"

    const-string v14, "Async Timeout"

    invoke-virtual {v2, v11, v14}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    sget-object v11, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    goto :goto_6

    .line 501
    :cond_6
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    sget-object v11, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 502
    :goto_6
    invoke-virtual {v7, v1}, Lorg/eclipse/jetty/server/Server;->handleAsync(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    :try_end_9
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 542
    :goto_7
    :try_start_a
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, v2, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v2

    .line 543
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v9, :cond_b

    goto/16 :goto_e

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v13, v3

    .line 535
    :goto_8
    :try_start_b
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    iget-object v11, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 537
    :try_start_c
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 538
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    if-nez v13, :cond_7

    goto :goto_9

    :cond_7
    const/16 v9, 0x1f4

    :goto_9
    invoke-interface {v8, v9, v3, v3, v5}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 542
    :try_start_d
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v8

    .line 543
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v9, :cond_9

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 527
    :try_start_e
    sget-object v9, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 529
    :try_start_f
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v9, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 530
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v10

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 542
    :try_start_10
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, v2, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v2

    .line 543
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_a

    :cond_8
    const/4 v9, 0x0

    :goto_a
    move v11, v2

    const/4 v10, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    const/4 v10, 0x1

    goto/16 :goto_14

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    const/4 v10, 0x1

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 521
    :try_start_11
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 523
    :try_start_12
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 542
    :try_start_13
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v8

    .line 543
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v9, :cond_9

    :goto_b
    const/4 v9, 0x1

    goto :goto_c

    :cond_9
    const/4 v9, 0x0

    :goto_c
    move v11, v8

    const/4 v10, 0x1

    move-object v8, v2

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    const/4 v10, 0x1

    goto/16 :goto_11

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 512
    :try_start_14
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 514
    :try_start_15
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 515
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v8

    if-nez v8, :cond_a

    .line 516
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8, v12, v3, v3, v5}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 542
    :cond_a
    :try_start_16
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v8

    .line 543
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v9, :cond_9

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v3, v2

    const/4 v10, 0x1

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v3, v2

    :goto_d
    move-object v2, v0

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 507
    :try_start_17
    sget-object v9, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 542
    :try_start_18
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, v2, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v2

    .line 543
    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v9, :cond_b

    :goto_e
    const/4 v9, 0x1

    goto :goto_f

    :cond_b
    const/4 v9, 0x0

    :goto_f
    move v11, v2

    goto/16 :goto_2

    .line 542
    :goto_10
    :try_start_19
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    .line 543
    iget-object v8, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    :cond_c
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :catchall_6
    move-exception v0

    :goto_11
    move-object v2, v0

    goto/16 :goto_14

    :catchall_7
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    goto/16 :goto_14

    :cond_d
    if-eqz v6, :cond_e

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 552
    :cond_e
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, v2, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->isUncompleted()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 555
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, v2, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2, v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->doComplete(Ljava/lang/Throwable;)V

    .line 557
    iget-boolean v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v2, :cond_f

    .line 559
    sget-object v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "100 continues not sent"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    iput-boolean v4, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 565
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_f

    .line 566
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 569
    :cond_f
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v10, :cond_10

    .line 573
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 574
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 575
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v2

    if-nez v2, :cond_13

    .line 576
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto :goto_12

    .line 580
    :cond_10
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 581
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    const/16 v3, 0x194

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/Response;->sendError(I)V

    .line 582
    :cond_11
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 583
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 584
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/server/Connector;->persist(Lorg/eclipse/jetty/io/EndPoint;)V

    goto :goto_12

    .line 589
    :cond_12
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 592
    :cond_13
    :goto_12
    iget-object v2, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    :cond_14
    return-void

    :catchall_8
    move-exception v0

    move-object v2, v0

    goto :goto_13

    :catchall_9
    move-exception v0

    move-object v2, v0

    move-object v6, v3

    :goto_13
    const/4 v10, 0x0

    :goto_14
    if-eqz v6, :cond_15

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 552
    :cond_15
    iget-object v6, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v6, v6, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AsyncContinuation;->isUncompleted()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 555
    iget-object v6, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v6, v6, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v6, v3}, Lorg/eclipse/jetty/server/AsyncContinuation;->doComplete(Ljava/lang/Throwable;)V

    .line 557
    iget-boolean v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v3, :cond_16

    .line 559
    sget-object v3, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "100 continues not sent"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    iput-boolean v4, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 565
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_16

    .line 566
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 569
    :cond_16
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v10, :cond_17

    .line 573
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 574
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 575
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 576
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto :goto_15

    .line 580
    :cond_17
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v3

    if-nez v3, :cond_18

    .line 581
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    const/16 v4, 0x194

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/Response;->sendError(I)V

    .line 582
    :cond_18
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 583
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 584
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    iget-object v4, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/server/Connector;->persist(Lorg/eclipse/jetty/io/EndPoint;)V

    goto :goto_15

    .line 589
    :cond_19
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 592
    :cond_1a
    :goto_15
    iget-object v3, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    :cond_1b
    throw v2
.end method

.method protected headerComplete()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    return-void

    .line 886
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    .line 887
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/http/Generator;->setVersion(I)V

    .line 888
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 910
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/http/Generator;->setHead(Z)V

    .line 912
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isPersistent()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 914
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 915
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 917
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getSendDateHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/http/Generator;->setDate(Lorg/eclipse/jetty/io/Buffer;)V

    .line 920
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 922
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "!host {}"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v2, 0x190

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 924
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 925
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 926
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->complete()V

    return-void

    .line 930
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    if-eqz v0, :cond_6

    .line 932
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "!expectation {}"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v2, 0x1a1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 934
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 935
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 936
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->complete()V

    return-void

    .line 893
    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/http/Generator;->setHead(Z)V

    .line 894
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 896
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 897
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "CONNECT"

    .line 899
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 901
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 902
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Parser;->setPersistent(Z)V

    .line 905
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getSendDateHeader()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 906
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/http/Generator;->setDate(Lorg/eclipse/jetty/io/Buffer;)V

    .line 944
    :cond_6
    :goto_1
    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_charset:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 945
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_charset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->setCharacterEncodingUnchecked(Ljava/lang/String;)V

    .line 948
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isChunking()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v0, :cond_a

    .line 949
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    goto :goto_2

    .line 951
    :cond_a
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public include()V
    .locals 1

    .line 687
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    return-void
.end method

.method public included()V
    .locals 1

    .line 693
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    .line 694
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->reopen()V

    :cond_0
    return-void
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Connector;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEarlyEOF()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    return v0
.end method

.method public isExpecting100Continues()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    return v0
.end method

.method public isExpecting102Processing()Z
    .locals 1

    .line 728
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIncluding()Z
    .locals 1

    .line 681
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIntegral(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Connector;->isIntegral(Lorg/eclipse/jetty/server/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isResponseCommitted()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 710
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public messageComplete(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 967
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 969
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 970
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    :cond_0
    return-void
.end method

.method protected newHttpGenerator(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/http/HttpGenerator;
    .locals 1

    .line 189
    new-instance v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    return-object v0
.end method

.method protected newHttpParser(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)Lorg/eclipse/jetty/http/HttpParser;
    .locals 1

    .line 184
    new-instance v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpParser;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V

    return-object v0
.end method

.method public onClose()V
    .locals 4

    .line 716
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "closed {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 819
    :cond_0
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    goto/16 :goto_2

    .line 823
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 825
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 826
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 837
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    .line 833
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    goto :goto_2

    .line 829
    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    goto :goto_2

    :goto_0
    if-eqz v0, :cond_5

    .line 838
    array-length v3, v0

    if-ge v1, v3, :cond_5

    .line 840
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 842
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    goto :goto_1

    .line 845
    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 854
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    goto :goto_1

    .line 851
    :pswitch_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v3, v3, Lorg/eclipse/jetty/http/HttpGenerator;

    iput-boolean v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    goto :goto_1

    .line 848
    :pswitch_3
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v3, v3, Lorg/eclipse/jetty/http/HttpGenerator;

    iput-boolean v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    goto :goto_2

    .line 868
    :cond_4
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 869
    invoke-static {p2}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_charset:Ljava/lang/String;

    .line 873
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->reset()V

    .line 409
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->recycle()V

    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 414
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 415
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->recycle()V

    .line 416
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->clear()V

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    return-void
.end method

.method public setAssociatedObject(Ljava/lang/Object;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_associatedObject:Ljava/lang/Object;

    return-void
.end method

.method protected startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    const/4 v0, 0x0

    .line 756
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    .line 757
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 758
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 759
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    .line 760
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    const/4 v1, 0x0

    .line 761
    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_charset:Ljava/lang/String;

    .line 763
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 764
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/server/Request;->setTimeStamp(J)V

    .line 765
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/Request;->setMethod(Ljava/lang/String;)V

    const/16 v2, 0x190

    .line 769
    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 770
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 782
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p2

    invoke-virtual {p1, v0, v3, p2}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    goto :goto_0

    .line 773
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p2

    invoke-virtual {p1, v0, v3, p2}, Lorg/eclipse/jetty/http/HttpURI;->parseConnect([BII)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 777
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 778
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p2

    invoke-virtual {p1, v0, v3, p2}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    .line 785
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->setUri(Lorg/eclipse/jetty/http/HttpURI;)V

    if-nez p3, :cond_3

    .line 789
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->setProtocol(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 790
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    goto :goto_1

    .line 794
    :cond_3
    sget-object p1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {p1, p3}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object p1

    if-nez p1, :cond_4

    .line 796
    new-instance p1, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {p1, v2, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 797
    :cond_4
    sget-object p2, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 798
    iget p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    if-gtz p2, :cond_5

    const/16 p2, 0xa

    iput p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 799
    :cond_5
    iget-object p2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->setProtocol(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 804
    sget-object p2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 805
    instance-of p2, p1, Lorg/eclipse/jetty/http/HttpException;

    if-eqz p2, :cond_6

    .line 806
    check-cast p1, Lorg/eclipse/jetty/http/HttpException;

    throw p1

    .line 807
    :cond_6
    new-instance p2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {p2, v2, v1, p1}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s,g=%s,p=%s,r=%d"

    const/4 v1, 0x4

    .line 744
    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
