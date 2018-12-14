.class public abstract Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "CompressedResponseWrapper.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_MIN_COMPRESS_SIZE:I = 0x100


# instance fields
.field private _bufferSize:I

.field private _compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

.field private _contentLength:J

.field private _etag:Ljava/lang/String;

.field private _mimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _minCompressSize:I

.field private _noCompression:Z

.field protected _request:Ljavax/servlet/http/HttpServletRequest;

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 58
    invoke-direct {p0, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    const/16 p2, 0x2000

    .line 45
    iput p2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_bufferSize:I

    const/16 p2, 0x100

    .line 46
    iput p2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_minCompressSize:I

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    return-void
.end method

.method private setDeferredHeaders()V
    .locals 5

    .line 355
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 359
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 360
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    long-to-int v0, v0

    invoke-super {p0, v0}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentLength(I)V

    goto :goto_0

    :cond_0
    const-string v0, "Content-Length"

    .line 362
    iget-wide v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "ETag"

    .line 365
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "content-length"

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 217
    iget-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz p1, :cond_4

    .line 218
    iget-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    goto :goto_0

    :cond_0
    const-string v0, "content-type"

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "content-encoding"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_4

    .line 229
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    goto :goto_0

    :cond_2
    const-string v0, "etag"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iput-object p2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_3
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-nez v0, :cond_0

    const-string v0, "etag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 406
    :cond_0
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->finish()V

    goto :goto_0

    .line 349
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setDeferredHeaders()V

    :goto_0
    return-void
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->flush()V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    :goto_0
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_bufferSize:I

    return v0
.end method

.method public getContentLength()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    return-object v0
.end method

.method public getMinCompressSize()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_minCompressSize:I

    return v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-nez v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v1

    check-cast v1, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newCompressedStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    goto :goto_1

    .line 419
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    return-object v0

    .line 423
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_3

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWriter() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    return-object v0
.end method

.method public getRequest()Ljavax/servlet/http/HttpServletRequest;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    if-nez v0, :cond_3

    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v1

    check-cast v1, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newCompressedStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 445
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    goto :goto_1

    .line 442
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0

    .line 447
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    return-object v0
.end method

.method protected abstract newCompressedStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 478
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p2, v0

    :goto_0
    return-object p2
.end method

.method public noCompression()V
    .locals 2

    .line 322
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setDeferredHeaders()V

    :cond_0
    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    .line 325
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 333
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 260
    invoke-super {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->reset()V

    .line 261
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->resetBuffer()V

    :cond_0
    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 264
    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    const-wide/16 v0, -0x1

    .line 266
    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    return-void
.end method

.method public resetBuffer()V
    .locals 1

    .line 276
    invoke-super {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->resetBuffer()V

    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->resetBuffer()V

    :cond_0
    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_writer:Ljava/io/PrintWriter;

    .line 280
    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    return-void
.end method

.method public sendError(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 302
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(I)V

    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 291
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(ILjava/lang/String;)V

    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 313
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendRedirect(Ljava/lang/String;)V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    .line 109
    iput p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_bufferSize:I

    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setBufferSize(I)V

    :cond_0
    return-void
.end method

.method public setContentLength(I)V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentLength(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 184
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    :goto_0
    return-void
.end method

.method protected setContentLength(J)V
    .locals 4

    .line 190
    iput-wide p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 191
    iget-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    goto :goto_0

    .line 193
    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 195
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object p1

    check-cast p1, Ljavax/servlet/http/HttpServletResponse;

    .line 196
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    const-wide/32 v2, 0x7fffffff

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    .line 198
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    goto :goto_0

    :cond_1
    const-string p2, "Content-Length"

    .line 202
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentType(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    const-string v0, ";"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_mimeTypes:Ljava/util/Set;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "gzip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_mimeTypes:Ljava/util/Set;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_mimeTypes:Ljava/util/Set;

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 145
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    :cond_4
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 376
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_noCompression:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "content-length"

    .line 378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    goto :goto_0

    :cond_1
    const-string v0, "content-type"

    .line 382
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "content-encoding"

    .line 386
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_5

    .line 391
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    goto :goto_0

    :cond_3
    const-string v0, "etag"

    .line 394
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    iput-object p2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_etag:Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_4
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "content-length"

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long p1, p2

    .line 459
    iput-wide p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_contentLength:J

    .line 460
    iget-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz p1, :cond_1

    .line 461
    iget-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_compressedStream:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    goto :goto_0

    .line 464
    :cond_0
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setIntHeader(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMimeTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_mimeTypes:Ljava/util/Set;

    return-void
.end method

.method public setMinCompressSize(I)V
    .locals 0

    .line 120
    iput p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_minCompressSize:I

    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .line 169
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(I)V

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    :cond_1
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(ILjava/lang/String;)V

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_0

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_0

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_0

    const/16 p2, 0x12c

    if-lt p1, p2, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    :cond_1
    return-void
.end method
