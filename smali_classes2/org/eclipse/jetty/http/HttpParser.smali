.class public Lorg/eclipse/jetty/http/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"

# interfaces
.implements Lorg/eclipse/jetty/http/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpParser$EventHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xd

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SEEKING_EOF:I = 0x7

.field public static final STATE_SPACE1:I = -0xc

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xe

.field public static final STATE_STATUS:I = -0xb

.field public static final STATE_URI:I = -0xa


# instance fields
.field private _body:Lorg/eclipse/jetty/io/Buffer;

.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/io/Buffers;

.field private _cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field protected _chunkLength:I

.field protected _chunkPosition:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field protected final _contentView:Lorg/eclipse/jetty/io/View;

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field protected _eol:B

.field private _forceContentBuffer:Z

.field private final _handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

.field private _headResponse:Z

.field private _header:Lorg/eclipse/jetty/io/Buffer;

.field protected _length:I

.field private _multiLineValue:Ljava/lang/String;

.field private _persistent:Z

.field private _responseStatus:I

.field protected _state:I

.field private final _tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

.field private final _tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    const/16 v0, -0xe

    .line 80
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 96
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 99
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 101
    new-instance p1, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 102
    new-instance p1, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    const/16 v0, -0xe

    .line 80
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 114
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 115
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 116
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 117
    new-instance p1, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 118
    new-instance p1, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    return v0

    .line 1226
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1228
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    if-eqz v0, :cond_2

    .line 1229
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1

    .line 1234
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1235
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    :goto_0
    return v1
.end method

.method public blockForContent(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1180
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    return-object p1

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1187
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1190
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1192
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1194
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1199
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1200
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    const-string p2, "timeout"

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1204
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1214
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {p1}, Lorg/eclipse/jetty/io/View;->length()I

    move-result p1

    if-lez p1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    :cond_5
    return-object v1

    :catch_0
    move-exception p1

    .line 1210
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1211
    throw p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method protected fill()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1011
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1014
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    return v0

    .line 1018
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long v4, v0, v2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v4, v0

    if-lez v2, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_5

    .line 1020
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_4

    .line 1021
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1022
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1026
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_b

    .line 1029
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_7

    .line 1031
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1035
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_9

    .line 1037
    sget-object v0, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "HttpParser Full for {} "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 1039
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x19d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FULL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v3, v4, :cond_8

    const-string v3, "body"

    goto :goto_0

    :cond_8
    const-string v3, "head"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1044
    :cond_9
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1049
    sget-object v1, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1050
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_a

    goto :goto_1

    :cond_a
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    throw v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 1164
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .line 1152
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1155
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1156
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    return v0
.end method

.method public inContentState()Z
    .locals 1

    .line 151
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inHeaderState()Z
    .locals 1

    .line 157
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChunking()Z
    .locals 5

    .line 163
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    const/16 v0, -0xe

    .line 169
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isMoreInBuffer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    return v0
.end method

.method public isState(I)Z
    .locals 1

    .line 189
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 216
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-eq v0, v1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_2
    return-void
.end method

.method public parseAvailable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View;->hasContent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v0, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method public parseNext()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 257
    :try_start_0
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v4, :cond_0

    return v3

    .line 260
    :cond_0
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v4, :cond_1

    .line 261
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    iput-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 264
    :cond_1
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    iget-wide v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    iget-wide v9, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_2

    .line 266
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 267
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v4, v7, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    return v6

    .line 271
    :cond_2
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-nez v4, :cond_a

    .line 280
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->fill()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_4

    .line 281
    :try_start_2
    sget-object v9, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "filled {}/{}"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    iget-object v12, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v9, v8

    goto :goto_1

    :catch_0
    move-exception v0

    move v9, v4

    move-object v4, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    const/4 v9, -0x1

    .line 285
    :goto_0
    :try_start_3
    sget-object v10, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v19, v9

    move-object v9, v4

    move/from16 v4, v19

    :goto_1
    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_3
    if-gez v4, :cond_9

    .line 293
    iput-boolean v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 296
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v4, :cond_4

    .line 298
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-boolean v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-nez v4, :cond_4

    .line 300
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 301
    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v8

    int-to-long v10, v8

    add-long v12, v5, v10

    iput-wide v12, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 302
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 303
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 308
    :cond_4
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v4, v2, :cond_6

    packed-switch v4, :pswitch_data_0

    .line 321
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 322
    iget-boolean v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-nez v4, :cond_5

    .line 323
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->earlyEOF()V

    .line 324
    :cond_5
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_2

    .line 316
    :pswitch_0
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 317
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_2

    .line 312
    :cond_6
    :pswitch_1
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    :goto_2
    if-eqz v9, :cond_7

    .line 328
    throw v9

    .line 330
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->isIdle()Z

    move-result v4

    if-nez v4, :cond_8

    .line 331
    new-instance v4, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v4}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v4

    :cond_8
    return v7

    :cond_9
    const/4 v4, 0x0

    .line 335
    :goto_3
    iget-object v9, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v9

    move/from16 v19, v9

    move v9, v4

    move/from16 v4, v19

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    .line 341
    :goto_4
    iget-object v10, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v10

    .line 342
    iget v11, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 343
    :goto_5
    iget v12, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v2, 0xa

    const/16 v5, 0xd

    const/16 v14, 0x20

    if-gez v12, :cond_4f

    add-int/lit8 v12, v4, -0x1

    if-lez v4, :cond_4f

    .line 345
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v11, v4, :cond_b

    add-int/lit8 v9, v9, 0x1

    .line 348
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v11, v4

    .line 351
    :cond_b
    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v4

    .line 353
    iget-byte v15, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v13, 0x190

    if-ne v15, v5, :cond_d

    if-ne v4, v2, :cond_c

    .line 357
    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    goto/16 :goto_1d

    .line 360
    :cond_c
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v2, v13}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2

    .line 362
    :cond_d
    iput-byte v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 364
    iget v15, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v2, -0x2

    const/4 v3, -0x5

    packed-switch v15, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_1d

    :pswitch_3
    if-eq v4, v5, :cond_f

    if-eq v4, v14, :cond_e

    packed-switch v4, :pswitch_data_2

    .line 798
    :try_start_4
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_1d

    .line 795
    :cond_e
    :pswitch_4
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    .line 778
    :cond_f
    :pswitch_5
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_12

    .line 780
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 781
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v13

    iget v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v5, v13}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    goto :goto_6

    .line 785
    :cond_10
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v2, :cond_11

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 786
    :cond_11
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v13

    iget v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v5, v13}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v13, "ISO-8859-1"

    invoke-virtual {v5, v13}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 790
    :cond_12
    :goto_6
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 791
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    :pswitch_6
    if-eq v4, v5, :cond_14

    if-eq v4, v14, :cond_4c

    packed-switch v4, :pswitch_data_3

    .line 765
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-ne v2, v7, :cond_13

    .line 766
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 767
    :cond_13
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 768
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    .line 745
    :cond_14
    :pswitch_7
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_17

    .line 747
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v2

    if-nez v2, :cond_15

    .line 748
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v13

    iget v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v5, v13}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    goto :goto_7

    .line 752
    :cond_15
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v2, :cond_16

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 753
    :cond_16
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v13

    iget v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v5, v13}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v13, "ISO-8859-1"

    invoke-virtual {v5, v13}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 757
    :cond_17
    :goto_7
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 758
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    :pswitch_8
    if-eq v4, v5, :cond_1b

    if-eq v4, v14, :cond_1a

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_18

    packed-switch v4, :pswitch_data_4

    .line 734
    iput-object v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 735
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v2, v6

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_1d

    .line 723
    :cond_18
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v3, :cond_19

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v3, :cond_19

    .line 724
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v4

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v13

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 725
    :cond_19
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 726
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    :cond_1a
    :pswitch_9
    const/4 v2, -0x4

    .line 730
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    .line 717
    :cond_1b
    :pswitch_a
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_1c

    .line 718
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v13

    iget v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v5, v13}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 719
    :cond_1c
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 720
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    :pswitch_b
    if-eq v4, v5, :cond_20

    if-eq v4, v14, :cond_4c

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1e

    packed-switch v4, :pswitch_data_5

    .line 702
    iput-object v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 703
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-ne v2, v7, :cond_1d

    .line 704
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 705
    :cond_1d
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    const/4 v2, -0x3

    .line 706
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    .line 692
    :cond_1e
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v3, :cond_1f

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v3, :cond_1f

    .line 693
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v4

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v5, v13

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 694
    :cond_1f
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 695
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    .line 686
    :cond_20
    :pswitch_c
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v2, :cond_21

    .line 687
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v5

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v13

    iget v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v5, v13}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 688
    :cond_21
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 689
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_1d

    :pswitch_d
    const/16 v3, 0x9

    if-eq v4, v3, :cond_3c

    if-eq v4, v14, :cond_3c

    const/16 v3, 0x3a

    if-eq v4, v3, :cond_3c

    .line 518
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v2, :cond_22

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v2

    if-gtz v2, :cond_22

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v2

    if-gtz v2, :cond_22

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-eqz v2, :cond_30

    .line 520
    :cond_22
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v2, :cond_23

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    goto :goto_8

    :cond_23
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 521
    :goto_8
    iput-object v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 522
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v3, :cond_24

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    goto :goto_9

    :cond_24
    new-instance v3, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-direct {v3, v14}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 524
    :goto_9
    sget-object v14, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v14, v2}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v14

    if-ltz v14, :cond_2f

    if-eq v14, v6, :cond_29

    const/4 v15, 0x5

    if-eq v14, v15, :cond_26

    const/16 v15, 0xc

    if-eq v14, v15, :cond_25

    goto/16 :goto_c

    .line 532
    :cond_25
    iget-wide v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_4
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_3

    const-wide/16 v17, -0x2

    cmp-long v16, v14, v17

    if-eqz v16, :cond_2f

    .line 536
    :try_start_5
    invoke-static {v3}, Lorg/eclipse/jetty/io/BufferUtil;->toLong(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v14

    iput-wide v14, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_5 .. :try_end_5} :catch_3

    .line 543
    :try_start_6
    iget-wide v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v5, 0x0

    cmp-long v15, v13, v5

    if-gtz v15, :cond_2f

    .line 544
    iput-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 540
    sget-object v3, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 541
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v2, v13}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2

    .line 549
    :cond_26
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v5, v3}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 550
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v5, v3}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v6, v5, :cond_27

    const-wide/16 v5, -0x2

    .line 552
    iput-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_c

    :cond_27
    const-string v5, "ISO-8859-1"

    .line 555
    invoke-interface {v3, v5}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "chunked"

    .line 556
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-wide/16 v5, -0x2

    .line 557
    iput-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_c

    :cond_28
    const-string v6, "chunked"

    .line 559
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2f

    .line 560
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v2, v13, v8}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 565
    :cond_29
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v5, v3}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v5

    if-eq v5, v7, :cond_2c

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2b

    const/4 v13, 0x5

    if-eq v5, v13, :cond_2a

    goto :goto_c

    .line 572
    :cond_2a
    iput-boolean v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_c

    :cond_2b
    const/4 v5, 0x0

    .line 568
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_c

    .line 577
    :cond_2c
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v6, :cond_2f

    aget-object v14, v5, v13

    .line 579
    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2e

    const/4 v7, 0x5

    if-eq v14, v7, :cond_2d

    goto :goto_b

    .line 586
    :cond_2d
    iput-boolean v15, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_b

    :cond_2e
    const/4 v7, 0x0

    .line 582
    iput-boolean v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    :goto_b
    add-int/lit8 v13, v13, 0x1

    const/4 v7, -0x1

    goto :goto_a

    .line 596
    :cond_2f
    :goto_c
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v5, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 597
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 598
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 599
    iput-object v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 601
    :cond_30
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    const/16 v2, 0xd

    if-eq v4, v2, :cond_32

    const/16 v2, 0xa

    if-ne v4, v2, :cond_31

    goto :goto_d

    :cond_31
    const/4 v2, 0x1

    .line 659
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 660
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    const/4 v2, -0x4

    .line 661
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v10, :cond_44

    .line 666
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    add-int/lit8 v4, v12, 0x1

    invoke-virtual {v2, v10, v3, v4}, Lorg/eclipse/jetty/http/HttpHeaders;->getBest([BII)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 668
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v2, :cond_44

    .line 670
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->length()I

    move-result v2

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 671
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 672
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    move v4, v2

    const/4 v7, -0x1

    goto/16 :goto_1e

    .line 607
    :cond_32
    :goto_d
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v2, :cond_34

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0x130

    if-eq v2, v3, :cond_33

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_33

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_34

    :cond_33
    const-wide/16 v2, 0x0

    .line 611
    iput-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_f

    .line 613
    :cond_34
    iget-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v5, -0x3

    cmp-long v7, v2, v5

    if-nez v7, :cond_37

    .line 615
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-eqz v2, :cond_36

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0x130

    if-eq v2, v3, :cond_36

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_36

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_35

    goto :goto_e

    :cond_35
    const-wide/16 v2, -0x1

    .line 621
    iput-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_f

    :cond_36
    :goto_e
    const-wide/16 v2, 0x0

    .line 619
    iput-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto :goto_10

    :cond_37
    :goto_f
    const-wide/16 v2, 0x0

    .line 624
    :goto_10
    iput-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 625
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 626
    iget-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_38

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_38

    .line 627
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 631
    :cond_38
    iget-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-lez v6, :cond_39

    const v2, 0x7fffffff

    goto :goto_11

    :cond_39
    iget-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    long-to-int v2, v2

    :goto_11
    packed-switch v2, :pswitch_data_6

    const/4 v2, 0x2

    .line 650
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_14

    .line 644
    :pswitch_e
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 645
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v2, :cond_3b

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_3a

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_3a

    goto :goto_12

    :cond_3a
    const/4 v2, 0x7

    goto :goto_13

    :cond_3b
    :goto_12
    const/4 v2, 0x0

    :goto_13
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 646
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    const/4 v2, 0x1

    return v2

    :pswitch_f
    const/4 v2, 0x1

    .line 634
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 635
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto :goto_15

    :pswitch_10
    const/4 v2, 0x3

    .line 639
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 640
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto :goto_15

    .line 651
    :goto_14
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    :goto_15
    const/4 v2, 0x1

    return v2

    :cond_3c
    const/4 v3, -0x1

    .line 510
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 511
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_19

    :pswitch_11
    const/16 v2, 0xd

    if-eq v4, v2, :cond_3d

    const/16 v2, 0xa

    if-ne v4, v2, :cond_44

    .line 488
    :cond_3d
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v2, :cond_3e

    .line 489
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v5, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    iget v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    goto :goto_16

    .line 491
    :cond_3e
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v5, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    sget-object v7, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    move-object v5, v7

    .line 492
    :goto_16
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 493
    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    const/16 v4, 0xb

    if-lt v2, v4, :cond_3f

    const/4 v2, 0x1

    goto :goto_17

    :cond_3f
    const/4 v2, 0x0

    :goto_17
    iput-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 494
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 495
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 496
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 497
    iput-object v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto/16 :goto_1a

    :pswitch_12
    if-gt v4, v14, :cond_42

    if-gez v4, :cond_40

    goto :goto_18

    :cond_40
    if-ge v4, v14, :cond_44

    .line 462
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v2, :cond_41

    .line 464
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v5, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    iget v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    invoke-virtual {v2, v5, v6, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 465
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 466
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 467
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 468
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 469
    iput-object v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_19

    .line 474
    :cond_41
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v3, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2, v3, v4, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    const/4 v2, 0x0

    .line 475
    iput-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    const/4 v2, 0x7

    .line 476
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 477
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 478
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    const/4 v2, 0x1

    return v2

    .line 457
    :cond_42
    :goto_18
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    const/4 v2, -0x6

    .line 458
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_19

    :pswitch_13
    if-ne v4, v14, :cond_43

    .line 438
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    const/16 v2, -0x9

    .line 439
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_1a

    :cond_43
    if-ge v4, v14, :cond_44

    if-ltz v4, :cond_44

    .line 445
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v3, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    const/4 v2, 0x0

    .line 446
    iput-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    const/4 v2, 0x7

    .line 447
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 448
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 449
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    const/4 v2, 0x1

    return v2

    :cond_44
    :goto_19
    const/4 v7, -0x1

    goto/16 :goto_1d

    :pswitch_14
    if-ne v4, v14, :cond_45

    .line 411
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    const/16 v2, -0x9

    .line 412
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_1a

    :cond_45
    const/16 v2, 0x30

    if-lt v4, v2, :cond_46

    const/16 v2, 0x39

    if-gt v4, v2, :cond_46

    .line 417
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    :goto_1a
    const/4 v7, -0x1

    goto/16 :goto_1d

    :cond_46
    if-ge v4, v14, :cond_47

    if-ltz v4, :cond_47

    .line 422
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v5, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    iget v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    invoke-virtual {v2, v5, v6, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 423
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 424
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 425
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 426
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 427
    iput-object v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_1a

    :cond_47
    const/16 v2, -0xa

    .line 431
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/4 v7, -0x1

    .line 432
    iput v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto :goto_1d

    :pswitch_15
    if-gt v4, v14, :cond_49

    if-gez v4, :cond_48

    goto :goto_1b

    :cond_48
    if-ge v4, v14, :cond_4c

    .line 404
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v2, v13}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2

    .line 393
    :cond_49
    :goto_1b
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 394
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-ltz v2, :cond_4a

    const/16 v2, -0xb

    .line 396
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    add-int/lit8 v4, v4, -0x30

    .line 397
    iput v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto :goto_1d

    :cond_4a
    const/16 v2, -0xa

    .line 400
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_1d

    :pswitch_16
    if-ne v4, v14, :cond_4d

    .line 379
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 380
    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v2

    if-nez v2, :cond_4b

    const/4 v2, -0x1

    goto :goto_1c

    :cond_4b
    const/4 v2, 0x0

    :goto_1c
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v2, -0xc

    .line 381
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    :cond_4c
    :goto_1d
    :pswitch_17
    move v4, v12

    :goto_1e
    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_4d
    if-ge v4, v14, :cond_4c

    if-ltz v4, :cond_4c

    .line 386
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v2, v13}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2

    :pswitch_18
    const-wide/16 v2, -0x3

    .line 367
    iput-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 368
    iput-object v8, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-gt v4, v14, :cond_4e

    if-gez v4, :cond_4c

    .line 371
    :cond_4e
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    const/16 v2, -0xd

    .line 372
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_1d

    .line 807
    :cond_4f
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    if-lez v2, :cond_52

    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    if-eqz v2, :cond_52

    .line 809
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v2, :cond_51

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_50

    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_50

    goto :goto_1f

    :cond_50
    const/4 v2, 0x7

    goto :goto_20

    :cond_51
    :goto_1f
    const/4 v2, 0x0

    :goto_20
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 810
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 817
    :cond_52
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 819
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 820
    :goto_21
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v4, :cond_70

    if-lez v2, :cond_70

    .line 822
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v3, v4, :cond_53

    add-int/lit8 v9, v9, 0x1

    .line 825
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 828
    :cond_53
    iget-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v5, 0xd

    if-ne v4, v5, :cond_54

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_54

    .line 830
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 831
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    goto :goto_21

    :cond_54
    const/4 v4, 0x0

    .line 834
    iput-byte v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 835
    iget v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    packed-switch v5, :pswitch_data_7

    const/4 v2, 0x1

    const/16 v4, 0x30

    const/4 v5, 0x2

    :goto_22
    const/4 v6, 0x5

    :goto_23
    const/16 v7, 0xd

    const/16 v8, 0xa

    :goto_24
    const-wide/16 v10, 0x0

    goto/16 :goto_33

    .line 965
    :pswitch_19
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_55

    .line 967
    iput v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 968
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto :goto_26

    .line 973
    :cond_55
    :goto_25
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_56

    .line 974
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_55

    const/4 v2, 0x0

    .line 976
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 977
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 978
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_25

    .line 982
    :cond_56
    :goto_26
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_27

    :pswitch_1a
    const/4 v5, 0x2

    .line 945
    iget v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    iget v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    sub-int/2addr v4, v6

    if-nez v4, :cond_57

    const/4 v2, 0x3

    .line 948
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_27

    :cond_57
    if-le v2, v4, :cond_58

    move v2, v4

    .line 953
    :cond_58
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 954
    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 955
    iget v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 956
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 957
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    const/4 v2, 0x1

    return v2

    :pswitch_1b
    const/4 v5, 0x2

    .line 925
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_5a

    const/16 v4, 0xa

    if-ne v2, v4, :cond_59

    goto :goto_28

    :cond_59
    :goto_27
    const/4 v2, 0x1

    const/16 v4, 0x30

    goto/16 :goto_22

    .line 928
    :cond_5a
    :goto_28
    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 929
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    if-nez v2, :cond_5d

    .line 931
    iget-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5b

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5b

    .line 932
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 933
    :cond_5b
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v2, :cond_5c

    const/4 v2, 0x0

    goto :goto_29

    :cond_5c
    const/4 v2, 0x7

    :goto_29
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 934
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    const/4 v2, 0x1

    return v2

    :cond_5d
    const/4 v2, 0x6

    .line 938
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_27

    :pswitch_1c
    const/4 v5, 0x2

    .line 894
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_64

    const/16 v4, 0xa

    if-ne v2, v4, :cond_5e

    goto :goto_2d

    :cond_5e
    if-le v2, v14, :cond_63

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_5f

    goto :goto_2b

    :cond_5f
    const/16 v4, 0x30

    if-lt v2, v4, :cond_60

    const/16 v6, 0x39

    if-gt v2, v6, :cond_60

    .line 913
    iget v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v6, v2

    iput v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    :goto_2a
    const/4 v2, 0x1

    goto/16 :goto_22

    :cond_60
    const/16 v6, 0x61

    if-lt v2, v6, :cond_61

    const/16 v6, 0x66

    if-gt v2, v6, :cond_61

    .line 915
    iget v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v6, v2

    iput v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto :goto_2a

    :cond_61
    const/16 v6, 0x41

    if-lt v2, v6, :cond_62

    const/16 v6, 0x46

    if-gt v2, v6, :cond_62

    .line 917
    iget v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0x41

    add-int/2addr v6, v2

    iput v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto :goto_2a

    .line 919
    :cond_62
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad chunk char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_63
    :goto_2b
    const/16 v4, 0x30

    const/4 v6, 0x5

    .line 911
    iput v6, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    :goto_2c
    const/4 v2, 0x1

    goto/16 :goto_23

    :cond_64
    :goto_2d
    const/16 v4, 0x30

    const/4 v6, 0x5

    .line 897
    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 899
    iget v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    if-nez v2, :cond_67

    .line 901
    iget-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_65

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_65

    .line 902
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 903
    :cond_65
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v2, :cond_66

    const/4 v2, 0x0

    goto :goto_2e

    :cond_66
    const/4 v2, 0x7

    :goto_2e
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 904
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    const/4 v2, 0x1

    return v2

    :cond_67
    const/4 v2, 0x6

    .line 908
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_2c

    :pswitch_1d
    const/16 v4, 0x30

    const/4 v5, 0x2

    const/4 v6, 0x5

    .line 878
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v2

    const/16 v7, 0xd

    if-eq v2, v7, :cond_6a

    const/16 v8, 0xa

    if-ne v2, v8, :cond_68

    goto :goto_2f

    :cond_68
    if-gt v2, v14, :cond_69

    .line 882
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    goto :goto_30

    :cond_69
    const/4 v2, 0x0

    .line 885
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    .line 886
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    const/4 v2, 0x4

    .line 887
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_30

    :cond_6a
    const/16 v8, 0xa

    .line 880
    :goto_2f
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    iput-byte v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    :goto_30
    const/4 v2, 0x1

    goto/16 :goto_24

    .line 847
    :pswitch_1e
    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    const/4 v7, 0x0

    sub-long v7, v3, v5

    const-wide/16 v10, 0x0

    cmp-long v3, v7, v10

    if-nez v3, :cond_6c

    .line 850
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v2, :cond_6b

    const/4 v2, 0x0

    goto :goto_31

    :cond_6b
    const/4 v2, 0x7

    :goto_31
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 851
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    const/4 v2, 0x1

    return v2

    :cond_6c
    int-to-long v3, v2

    cmp-long v5, v3, v7

    if-lez v5, :cond_6d

    long-to-int v2, v7

    .line 862
    :cond_6d
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 863
    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 864
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 865
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 867
    iget-wide v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    iget-wide v4, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_6f

    .line 869
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v2, :cond_6e

    const/4 v2, 0x0

    goto :goto_32

    :cond_6e
    const/4 v2, 0x7

    :goto_32
    iput v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 870
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    :cond_6f
    const/4 v2, 0x1

    return v2

    .line 838
    :pswitch_1f
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 839
    iget-wide v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    int-to-long v5, v5

    add-long v7, v3, v5

    iput-wide v7, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 840
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 841
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    const/4 v2, 0x1

    return v2

    .line 987
    :goto_33
    iget-object v12, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v12
    :try_end_6
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_6 .. :try_end_6} :catch_3

    move v2, v12

    goto/16 :goto_21

    :cond_70
    return v9

    :catch_3
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_34

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 994
    :goto_34
    iput-boolean v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    const/4 v3, 0x7

    .line 995
    iput v3, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 996
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xe
        :pswitch_18
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_2
        :pswitch_2
        :pswitch_11
        :pswitch_d
        :pswitch_b
        :pswitch_8
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_17
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_17
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch -0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method public reset()V
    .locals 6

    .line 1061
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View;->putIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 1062
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, -0xe

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const-wide/16 v2, -0x3

    .line 1063
    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, 0x0

    .line 1064
    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 1065
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 1066
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    .line 1069
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1070
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 1072
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1077
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_3

    .line 1078
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    goto :goto_1

    .line 1081
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1082
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1084
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    .line 1085
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 1086
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 1087
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    .line 1088
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    invoke-interface {v4, v5, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 1091
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_6

    .line 1093
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1096
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_7

    .line 1097
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1099
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1100
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    return-void
.end method

.method public returnBuffers()V
    .locals 4

    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v3, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1113
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1116
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_4

    .line 1118
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_3

    .line 1119
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1120
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1121
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    :cond_4
    return-void
.end method

.method public setForceContentBuffer(Z)V
    .locals 0

    .line 1173
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    return-void
.end method

.method public setHeadResponse(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    return-void
.end method

.method public setPersistent(Z)V
    .locals 1

    .line 201
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 202
    iget-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez p1, :cond_1

    iget p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v0, -0xe

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x7

    .line 203
    iput p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 1128
    iput p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const-wide/16 v0, -0x3

    .line 1129
    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s{s=%d,l=%d,c=%d}"

    const/4 v1, 0x4

    .line 1142
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 2

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " buf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
