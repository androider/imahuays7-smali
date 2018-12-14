.class public Lorg/eclipse/jetty/http/HttpBuffersImpl;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "HttpBuffersImpl.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpBuffers;


# instance fields
.field private _maxBuffers:I

.field private _requestBufferSize:I

.field private _requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

.field private _requestBuffers:Lorg/eclipse/jetty/io/Buffers;

.field private _requestHeaderSize:I

.field private _requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

.field private _responseBufferSize:I

.field private _responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

.field private _responseBuffers:Lorg/eclipse/jetty/io/Buffers;

.field private _responseHeaderSize:I

.field private _responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    const/16 v0, 0x4000

    .line 32
    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferSize:I

    const/16 v0, 0x1800

    .line 33
    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderSize:I

    const v1, 0x8000

    .line 34
    iput v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferSize:I

    .line 35
    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderSize:I

    const/16 v0, 0x400

    .line 36
    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_maxBuffers:I

    .line 38
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 39
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 40
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 41
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderSize:I

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v3, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferSize:I

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 201
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v2, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderSize:I

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v4, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferSize:I

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 202
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 210
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-void
.end method

.method public getMaxBuffers()I
    .locals 1

    .line 231
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_maxBuffers:I

    return v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferSize:I

    return v0
.end method

.method public getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-object v0
.end method

.method public getRequestHeaderSize()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderSize:I

    return v0
.end method

.method public getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferSize:I

    return v0
.end method

.method public getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-object v0
.end method

.method public getResponseHeaderSize()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderSize:I

    return v0
.end method

.method public getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public setMaxBuffers(I)V
    .locals 0

    .line 226
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_maxBuffers:I

    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 0

    .line 65
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferSize:I

    return-void
.end method

.method public setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-void
.end method

.method public setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-void
.end method

.method public setRequestHeaderSize(I)V
    .locals 0

    .line 81
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderSize:I

    return-void
.end method

.method public setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 0

    .line 97
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferSize:I

    return-void
.end method

.method public setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBufferType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-void
.end method

.method public setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-void
.end method

.method public setResponseHeaderSize(I)V
    .locals 0

    .line 113
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderSize:I

    return-void
.end method

.method public setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseHeaderType:Lorg/eclipse/jetty/io/Buffers$Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_requestBuffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->_responseBuffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
