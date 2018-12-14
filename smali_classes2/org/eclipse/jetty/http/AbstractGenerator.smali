.class public abstract Lorg/eclipse/jetty/http/AbstractGenerator;
.super Ljava/lang/Object;
.source "AbstractGenerator.java"

# interfaces
.implements Lorg/eclipse/jetty/http/Generator;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NO_BYTES:[B

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x4

.field public static final STATE_FLUSHING:I = 0x3

.field public static final STATE_HEADER:I


# instance fields
.field protected _buffer:Lorg/eclipse/jetty/io/Buffer;

.field protected final _buffers:Lorg/eclipse/jetty/io/Buffers;

.field protected _content:Lorg/eclipse/jetty/io/Buffer;

.field protected _contentLength:J

.field protected _contentWritten:J

.field protected _date:Lorg/eclipse/jetty/io/Buffer;

.field protected final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field protected _head:Z

.field protected _header:Lorg/eclipse/jetty/io/Buffer;

.field protected _last:Z

.field protected _method:Lorg/eclipse/jetty/io/Buffer;

.field protected _noContent:Z

.field protected _persistent:Ljava/lang/Boolean;

.field protected _reason:Lorg/eclipse/jetty/io/Buffer;

.field private _sendServerVersion:Z

.field protected _state:I

.field protected _status:I

.field protected _uri:Ljava/lang/String;

.field protected _version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    .line 60
    iput v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    const/16 v1, 0xb

    .line 61
    iput v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    const-wide/16 v1, -0x3

    .line 67
    iput-wide v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 68
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    .line 69
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    .line 70
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 91
    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 92
    iput-object p2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-void
.end method


# virtual methods
.method public blockForOutput(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 511
    iget-object p2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 512
    throw p1

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 519
    iget-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 520
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    const-string p2, "timeout"

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 523
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I

    :goto_0
    return-void
.end method

.method public complete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State==HEADER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    if-nez v0, :cond_2

    .line 423
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 424
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentLength written=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " != contentLength=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method public abstract completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public completeUncheckedAddContent()V
    .locals 6

    .line 367
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_0

    .line 374
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 375
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public flush(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 439
    iget-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 440
    iget-object p2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz p1, :cond_0

    .line 441
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 443
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I

    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    if-eqz p1, :cond_3

    .line 445
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_5

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v4

    if-nez v4, :cond_5

    sub-long v4, v2, v0

    .line 447
    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jetty/http/AbstractGenerator;->blockForOutput(J)V

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public abstract flushBuffer()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContentBufferSize()I
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getContentWritten()J
    .locals 2

    .line 495
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    return-wide v0
.end method

.method public getSendServerVersion()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_sendServerVersion:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .line 206
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    return v0
.end method

.method public getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 295
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    return v0
.end method

.method public increaseContentBufferSize(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 181
    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    :cond_1
    return-void
.end method

.method public isAllContentWritten()Z
    .locals 5

    .line 402
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBufferFull()Z
    .locals 3

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_2

    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 390
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isCommitted()Z
    .locals 1

    .line 230
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 218
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHead()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .line 224
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 3

    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract isRequest()Z
.end method

.method public abstract isResponse()Z
.end method

.method public isState(I)Z
    .locals 1

    .line 212
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isWritten()Z
    .locals 5

    .line 396
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract prepareUncheckedAddContent()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    .line 111
    iput v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    const/16 v1, 0xb

    .line 112
    iput v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 114
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    .line 115
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    .line 116
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 117
    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    .line 118
    iput-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    const-wide/16 v2, -0x3

    .line 119
    iput-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 120
    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    .line 122
    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 123
    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method public resetBuffer()V
    .locals 3

    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flushed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    const-wide/16 v1, 0x0

    .line 150
    iput-wide v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    const-wide/16 v1, -0x3

    .line 151
    iput-wide v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 152
    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    :cond_1
    return-void
.end method

.method public returnBuffers()V
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 132
    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 138
    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    :cond_1
    return-void
.end method

.method public sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 467
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    iput-object p4, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 468
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result p4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    .line 470
    sget-object p3, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p4, "sendError on committed: {} {}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    aput-object p2, v1, v2

    invoke-interface {p3, p4, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 474
    :cond_1
    sget-object p4, Lorg/eclipse/jetty/http/AbstractGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "sendError: {} {}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    aput-object p2, v1, v2

    invoke-interface {p4, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/AbstractGenerator;->setResponse(ILjava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 478
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 479
    new-instance p1, Lorg/eclipse/jetty/io/View;

    new-instance p2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {p2, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 485
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->complete()V

    :goto_1
    return-void
.end method

.method public setContentLength(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, -0x3

    .line 246
    iput-wide p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    goto :goto_0

    .line 248
    :cond_0
    iput-wide p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    :goto_0
    return-void
.end method

.method public setDate(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method public setHead(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    .line 275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    return-void
.end method

.method public setRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "GET"

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_1

    .line 313
    :cond_1
    :goto_0
    sget-object p1, Lorg/eclipse/jetty/http/HttpMethods;->GET_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 316
    :goto_1
    iput-object p2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_uri:Ljava/lang/String;

    .line 317
    iget p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    :cond_2
    return-void
.end method

.method public setResponse(ILjava/lang/String;)V
    .locals 3

    .line 328
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "STATE!=START"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 330
    iput p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    if-eqz p2, :cond_3

    .line 333
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x400

    if-le p1, v0, :cond_1

    const/16 p1, 0x400

    .line 338
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 341
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 343
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    int-to-byte v1, v1

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    goto :goto_1

    .line 345
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setSendServerVersion(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_sendServerVersion:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 2

    .line 285
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    .line 286
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE!=START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    .line 288
    iget p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    :cond_1
    return-void
.end method

.method uncheckedAddContent(I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    return-void
.end method
