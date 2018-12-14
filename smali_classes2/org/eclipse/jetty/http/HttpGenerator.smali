.class public Lorg/eclipse/jetty/http/HttpGenerator;
.super Lorg/eclipse/jetty/http/AbstractGenerator;
.source "HttpGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpGenerator$Status;
    }
.end annotation


# static fields
.field private static final CHUNK_SPACE:I = 0xc

.field private static final CONNECTION_:[B

.field private static final CONNECTION_CLOSE:[B

.field private static final CONNECTION_KEEP_ALIVE:[B

.field private static final CONTENT_LENGTH_0:[B

.field private static final CRLF:[B

.field private static final LAST_CHUNK:[B

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static SERVER:[B

.field private static final TRANSFER_ENCODING_CHUNKED:[B

.field private static final __status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;


# instance fields
.field private _bufferChunked:Z

.field protected _bypass:Z

.field private _needCRLF:Z

.field private _needEOC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 44
    const-class v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/16 v0, 0x1fc

    .line 53
    new-array v0, v0, [Lorg/eclipse/jetty/http/HttpGenerator$Status;

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    .line 56
    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    :goto_0
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 60
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpStatus;->getCode(I)Lorg/eclipse/jetty/http/HttpStatus$Code;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 63
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpStatus$Code;->getMessage()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x5

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 65
    sget-object v6, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6, v1, v5, v1, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(I[BII)I

    add-int/lit8 v6, v0, 0x0

    const/16 v7, 0x20

    .line 66
    aput-byte v7, v5, v6

    add-int/lit8 v6, v0, 0x1

    .line 67
    div-int/lit8 v8, v2, 0x64

    add-int/lit8 v8, v8, 0x30

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v6, v0, 0x2

    .line 68
    rem-int/lit8 v8, v2, 0x64

    const/16 v9, 0xa

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x30

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v6, v0, 0x3

    .line 69
    rem-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    add-int/lit8 v6, v0, 0x4

    .line 70
    aput-byte v7, v5, v6

    const/4 v6, 0x0

    .line 71
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int v7, v4, v6

    .line 72
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0xd

    aput-byte v7, v5, v6

    add-int/lit8 v6, v0, 0x6

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v6, v3

    aput-byte v9, v5, v6

    .line 76
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    new-instance v6, Lorg/eclipse/jetty/http/HttpGenerator$Status;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/eclipse/jetty/http/HttpGenerator$Status;-><init>(Lorg/eclipse/jetty/http/HttpGenerator$1;)V

    aput-object v6, v3, v2

    .line 77
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v3, v3, v2

    new-instance v6, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    array-length v7, v5

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x7

    invoke-direct {v6, v5, v4, v7, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v6, v3, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 78
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v3, v3, v2

    new-instance v6, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v6, v5, v1, v4, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v6, v3, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_schemeCode:Lorg/eclipse/jetty/io/Buffer;

    .line 79
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v3, v3, v2

    new-instance v4, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    array-length v6, v5

    invoke-direct {v4, v5, v1, v6, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v4, v3, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 94
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    const-string v0, "Content-Length: 0\r\n"

    .line 96
    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->CONTENT_LENGTH_0:[B

    const-string v0, "Connection: keep-alive\r\n"

    .line 97
    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_KEEP_ALIVE:[B

    const-string v0, "Connection: close\r\n"

    .line 98
    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_CLOSE:[B

    const-string v0, "Connection: "

    .line 99
    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_:[B

    const-string v0, "\r\n"

    .line 100
    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    const-string v0, "Transfer-Encoding: chunked\r\n"

    .line 101
    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->TRANSFER_ENCODING_CHUNKED:[B

    const-string v0, "Server: Jetty(7.0.x)\r\n"

    .line 102
    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/http/AbstractGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 114
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 115
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 116
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    return-void
.end method

.method private flushMask()I
    .locals 3

    .line 921
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public static getReasonBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .line 86
    sget-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 88
    iget-object p0, p0, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_reason:Lorg/eclipse/jetty/io/Buffer;

    return-object p0

    :cond_1
    return-object v1
.end method

.method private prepareBuffers()V
    .locals 8

    .line 930
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 933
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-lez v0, :cond_0

    .line 935
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 936
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 937
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 938
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 942
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_14

    .line 944
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_5

    .line 947
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 948
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 950
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v4, :cond_2

    .line 951
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 954
    :cond_2
    iget-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v4, :cond_4

    .line 956
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 958
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 961
    :cond_4
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v4, v0}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 962
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 965
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    goto/16 :goto_1

    .line 967
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_c

    .line 969
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 973
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 977
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x2

    if-ne v4, v5, :cond_6

    .line 980
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    sub-int/2addr v5, v6

    sget-object v7, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v4, v5, v7, v3, v6}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    .line 981
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 982
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v4, v0}, Lorg/eclipse/jetty/io/BufferUtil;->prependHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 984
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v0, :cond_a

    .line 986
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    sub-int/2addr v4, v6

    sget-object v5, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v4, v5, v3, v6}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    .line 987
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 988
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    goto :goto_0

    .line 994
    :cond_6
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v4, :cond_7

    .line 995
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 997
    :cond_7
    iget-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v4, :cond_9

    .line 999
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_8
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1001
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1003
    :cond_9
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v4, v0}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 1004
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1008
    :cond_a
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-lt v0, v6, :cond_b

    .line 1009
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_1

    .line 1011
    :cond_b
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1016
    :cond_c
    :goto_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 1018
    :cond_d
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_e

    .line 1019
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1021
    :cond_e
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v0, :cond_10

    .line 1023
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    array-length v4, v4

    if-lt v0, v4, :cond_f

    .line 1025
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1026
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    goto :goto_2

    .line 1028
    :cond_f
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    array-length v4, v4

    if-lt v0, v4, :cond_10

    .line 1030
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1031
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1035
    :cond_10
    :goto_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v0, :cond_14

    .line 1037
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    array-length v4, v4

    if-lt v0, v4, :cond_12

    .line 1039
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v0, :cond_11

    .line 1041
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1042
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 1044
    :cond_11
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    goto :goto_3

    .line 1046
    :cond_12
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    array-length v4, v4

    if-lt v0, v4, :cond_14

    .line 1048
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v0, :cond_13

    .line 1050
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1051
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 1053
    :cond_13
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 1060
    :cond_14
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 1061
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    :cond_15
    return-void
.end method

.method public static setServerVersion(Ljava/lang/String;)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server: Jetty("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    sput-object p0, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    return-void
.end method


# virtual methods
.method public addContent(Lorg/eclipse/jetty/io/Buffer;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NO CONTENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    .line 184
    :cond_1
    iput-boolean p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 187
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p2

    if-gtz p2, :cond_3

    :cond_2
    iget-boolean p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz p2, :cond_6

    .line 189
    :cond_3
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 190
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw p1

    .line 191
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    .line 192
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 194
    iget-boolean p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz p2, :cond_5

    .line 196
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 198
    sget-object v0, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 199
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    invoke-static {p2, v0}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 200
    sget-object v0, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 201
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto :goto_0

    .line 206
    :cond_5
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 207
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 208
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto :goto_0

    :cond_6
    move-object p2, p1

    .line 214
    :goto_0
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 215
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    int-to-long v4, p1

    add-long v6, v2, v4

    iput-wide v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 218
    iget-boolean p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 220
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 221
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_1

    .line 223
    :cond_7
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_a

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    const/16 p2, 0x400

    if-le p1, p2, :cond_a

    .line 225
    :cond_9
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    goto :goto_1

    .line 227
    :cond_a
    iget-boolean p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez p1, :cond_c

    .line 230
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez p1, :cond_b

    .line 231
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 234
    :cond_b
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    .line 235
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 236
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    if-nez p1, :cond_c

    .line 237
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    :cond_c
    :goto_1
    return-void

    .line 180
    :cond_d
    :goto_2
    sget-object p2, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v0, "Ignoring extra content {}"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {p2, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    return-void
.end method

.method public complete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 789
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->complete()V

    .line 791
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 793
    iput v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 794
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 795
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 798
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    return-void
.end method

.method public completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 364
    iget v4, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eqz v4, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    if-nez v4, :cond_1

    .line 369
    new-instance v2, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v2}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v2

    .line 371
    :cond_1
    iget-boolean v4, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    .line 372
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "last?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_2
    iget-boolean v4, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    or-int v3, v4, p2

    iput-boolean v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 376
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v3, :cond_3

    .line 377
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iput-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 383
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v3

    const/16 v6, 0xc8

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const-wide/16 v10, -0x1

    const/16 v12, 0x30

    const/16 v14, 0x20

    const/16 v15, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    .line 385
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 387
    iget v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v13, 0x9

    if-ne v3, v13, :cond_4

    .line 389
    iput-wide v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 390
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 391
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v14}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 392
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 393
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    const/4 v2, 0x3

    .line 394
    iput v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 395
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    return-void

    .line 400
    :cond_4
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v13}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 401
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v14}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 402
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v13, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v13, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 403
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v14}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 404
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    if-ne v7, v15, :cond_5

    sget-object v7, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_0_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    :cond_5
    sget-object v7, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    :goto_0
    invoke-interface {v3, v7}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 405
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v7, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v3, v7}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_5

    .line 411
    :cond_6
    iget v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v7, 0x9

    if-ne v3, v7, :cond_7

    .line 413
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 414
    iput-wide v10, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 415
    iput v9, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    return-void

    .line 420
    :cond_7
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-nez v3, :cond_9

    .line 421
    iget v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    if-le v3, v15, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 424
    :cond_9
    iget v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    sget-object v7, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    array-length v7, v7

    if-ge v3, v7, :cond_a

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    iget v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    aget-object v13, v3, v7

    goto :goto_2

    :cond_a
    const/4 v13, 0x0

    :goto_2
    const/16 v3, 0x64

    if-nez v13, :cond_c

    .line 428
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v8, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 429
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v14}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 430
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    div-int/2addr v8, v3

    add-int/2addr v8, v12

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 431
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    rem-int/2addr v8, v3

    div-int/2addr v8, v15

    add-int/2addr v8, v12

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 432
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    rem-int/2addr v8, v15

    add-int/2addr v8, v12

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 433
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v14}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 434
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    if-nez v7, :cond_b

    .line 436
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    div-int/2addr v8, v3

    add-int/2addr v8, v12

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 437
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    rem-int/2addr v8, v3

    div-int/2addr v8, v15

    add-int/2addr v8, v12

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 438
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    rem-int/2addr v8, v15

    add-int/2addr v8, v12

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    goto :goto_3

    .line 441
    :cond_b
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 442
    :goto_3
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v8, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_4

    .line 446
    :cond_c
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    if-nez v7, :cond_d

    .line 447
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v8, v13, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto :goto_4

    .line 450
    :cond_d
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v8, v13, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_schemeCode:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 451
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 452
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v8, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 456
    :goto_4
    iget v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    if-ge v7, v6, :cond_f

    iget v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    if-lt v7, v3, :cond_f

    .line 458
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    const/4 v3, 0x0

    .line 459
    iput-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 460
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_e

    .line 461
    iget-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 464
    :cond_e
    iget v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v7, 0x65

    if-eq v3, v7, :cond_10

    .line 466
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 467
    iput v9, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    return-void

    .line 471
    :cond_f
    iget v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v7, 0xcc

    if-eq v3, v7, :cond_11

    iget v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v7, 0x130

    if-ne v3, v7, :cond_10

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v3, 0x0

    goto :goto_7

    .line 473
    :cond_11
    :goto_6
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    const/4 v3, 0x0

    .line 474
    iput-object v3, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 475
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v7, :cond_12

    .line 476
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 482
    :cond_12
    :goto_7
    iget v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    if-lt v7, v6, :cond_13

    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v7, :cond_13

    .line 484
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v8, Lorg/eclipse/jetty/http/HttpHeaders;->DATE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 485
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v8, 0x3a

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 486
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v14}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 487
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 488
    iget-object v7, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v8, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    :cond_13
    const/16 v7, 0x2c

    if-eqz v2, :cond_33

    .line 501
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/http/HttpFields;->size()I

    move-result v8

    move-object/from16 v16, v3

    move-object/from16 v18, v16

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_8
    if-ge v13, v8, :cond_32

    .line 504
    invoke-virtual {v2, v13}, Lorg/eclipse/jetty/http/HttpFields;->getField(I)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v9

    if-nez v9, :cond_15

    :cond_14
    :goto_9
    move/from16 v22, v13

    goto/16 :goto_12

    .line 508
    :cond_15
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpFields$Field;->getNameOrdinal()I

    move-result v14

    const/4 v6, 0x5

    if-eq v14, v5, :cond_1d

    if-eq v14, v6, :cond_1c

    const/16 v6, 0xc

    if-eq v14, v6, :cond_19

    const/16 v6, 0x10

    if-eq v14, v6, :cond_17

    if-eq v14, v12, :cond_16

    .line 642
    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v9, v6}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_9

    .line 633
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->getSendServerVersion()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 636
    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v9, v6}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    move/from16 v22, v13

    const/16 v21, 0x1

    goto/16 :goto_12

    .line 522
    :cond_17
    sget-object v6, Lorg/eclipse/jetty/http/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    invoke-static {v6, v14}, Lorg/eclipse/jetty/io/BufferUtil;->isPrefix(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_18

    move/from16 v22, v13

    const-wide/16 v12, -0x4

    iput-wide v12, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto :goto_a

    :cond_18
    move/from16 v22, v13

    .line 526
    :goto_a
    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v9, v6}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    const/16 v17, 0x1

    goto/16 :goto_12

    :cond_19
    move/from16 v22, v13

    .line 512
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v12

    iput-wide v12, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 514
    iget-wide v12, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    iget-wide v10, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    cmp-long v6, v12, v10

    if-ltz v6, :cond_1b

    iget-boolean v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-eqz v6, :cond_1a

    iget-wide v10, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    iget-wide v12, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    cmp-long v6, v10, v12

    if-eqz v6, :cond_1a

    goto :goto_b

    :cond_1a
    move-object/from16 v16, v9

    goto :goto_c

    :cond_1b
    :goto_b
    const/16 v16, 0x0

    .line 518
    :goto_c
    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v9, v6}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_12

    :cond_1c
    move/from16 v22, v13

    .line 530
    iget v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v10, 0xb

    if-ne v6, v10, :cond_31

    move-object/from16 v18, v9

    goto/16 :goto_12

    :cond_1d
    move/from16 v22, v13

    .line 536
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 537
    iget-object v10, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 539
    :cond_1e
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueOrdinal()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_26

    if-eq v10, v5, :cond_23

    if-eq v10, v6, :cond_21

    const/16 v6, 0xb

    if-eq v10, v6, :cond_20

    if-nez v3, :cond_1f

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_d

    .line 624
    :cond_1f
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    :goto_d
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 594
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 596
    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v9, v6}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_12

    .line 611
    :cond_21
    iget v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    if-ne v6, v15, :cond_31

    .line 614
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 615
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    :cond_22
    const/16 v19, 0x1

    goto/16 :goto_12

    .line 603
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 604
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 605
    :cond_24
    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v6

    if-eqz v6, :cond_25

    iget-wide v9, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v11, -0x3

    cmp-long v6, v9, v11

    if-nez v6, :cond_25

    const-wide/16 v9, -0x1

    .line 606
    iput-wide v9, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    :cond_25
    const/16 v20, 0x1

    goto/16 :goto_12

    .line 544
    :cond_26
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    const/4 v3, 0x0

    :goto_e
    if-eqz v9, :cond_30

    .line 545
    array-length v11, v9

    if-ge v3, v11, :cond_30

    .line 547
    sget-object v11, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v12, v9, v3

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v11

    if-eqz v11, :cond_2d

    .line 551
    invoke-virtual {v11}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v11

    if-eq v11, v5, :cond_2a

    if-eq v11, v6, :cond_28

    if-nez v10, :cond_27

    .line 573
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f

    .line 575
    :cond_27
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    :goto_f
    aget-object v11, v9, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 563
    :cond_28
    iget v11, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    if-ne v11, v15, :cond_2f

    .line 566
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v11

    if-eqz v11, :cond_29

    .line 567
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    :cond_29
    const/16 v19, 0x1

    goto :goto_11

    .line 555
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 556
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 558
    :cond_2b
    iget-object v11, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v11

    if-eqz v11, :cond_2c

    iget-wide v11, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v13, -0x3

    cmp-long v19, v11, v13

    if-nez v19, :cond_2c

    const-wide/16 v11, -0x1

    .line 559
    iput-wide v11, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    :cond_2c
    const/16 v19, 0x0

    const/16 v20, 0x1

    goto :goto_11

    :cond_2d
    if-nez v10, :cond_2e

    .line 582
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_10

    .line 584
    :cond_2e
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    :goto_10
    aget-object v11, v9, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_30
    move-object v3, v10

    :cond_31
    :goto_12
    add-int/lit8 v13, v22, 0x1

    const/16 v6, 0xc8

    const/4 v9, 0x2

    const-wide/16 v10, -0x1

    const/16 v12, 0x30

    const/16 v14, 0x20

    goto/16 :goto_8

    :cond_32
    move-object/from16 v2, v18

    goto :goto_13

    :cond_33
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 656
    :goto_13
    iget-wide v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    long-to-int v6, v8

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    if-nez v16, :cond_3a

    .line 692
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v5

    if-eqz v5, :cond_3a

    iget v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_3a

    iget v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v6, 0xcc

    if-eq v5, v6, :cond_3a

    iget v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v6, 0x130

    if-eq v5, v6, :cond_3a

    .line 693
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONTENT_LENGTH_0:[B

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_16

    .line 697
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto/16 :goto_16

    .line 663
    :pswitch_2
    iget-wide v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_35

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v6

    if-eqz v6, :cond_35

    iget v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v8, 0xc8

    if-lt v6, v8, :cond_34

    iget v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v8, 0xcc

    if-eq v6, v8, :cond_34

    iget v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v8, 0x130

    if-ne v6, v8, :cond_35

    :cond_34
    const-wide/16 v5, 0x0

    .line 664
    iput-wide v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto :goto_16

    .line 665
    :cond_35
    iget-boolean v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-eqz v6, :cond_37

    .line 668
    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iput-wide v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    if-nez v16, :cond_3a

    .line 669
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v5

    if-nez v5, :cond_36

    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-gtz v10, :cond_36

    if-eqz v17, :cond_3a

    :cond_36
    iget-boolean v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-nez v5, :cond_3a

    .line 672
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 673
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v6, 0x3a

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 674
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v6, 0x20

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 675
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-wide v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    invoke-static {v5, v8, v9}, Lorg/eclipse/jetty/io/BufferUtil;->putDecLong(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 676
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_16

    .line 682
    :cond_37
    iget-object v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_39

    iget v6, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v8, 0xb

    if-ge v6, v8, :cond_38

    goto :goto_14

    :cond_38
    const-wide/16 v10, -0x2

    goto :goto_15

    :cond_39
    :goto_14
    const-wide/16 v10, -0x1

    :goto_15
    iput-wide v10, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 683
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-wide v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_3a

    const-wide/16 v8, 0x0

    .line 685
    iput-wide v8, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 686
    iput-boolean v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 709
    :cond_3a
    :goto_16
    :pswitch_3
    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v8, -0x2

    cmp-long v10, v5, v8

    if-nez v10, :cond_3d

    if-eqz v2, :cond_3c

    .line 712
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueOrdinal()I

    move-result v5

    const/4 v6, 0x2

    if-eq v6, v5, :cond_3c

    .line 714
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chunked"

    .line 715
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 716
    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_17

    .line 718
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "BAD TE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 721
    :cond_3c
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpGenerator;->TRANSFER_ENCODING_CHUNKED:[B

    invoke-interface {v2, v5}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 725
    :cond_3d
    :goto_17
    iget-wide v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v8, -0x1

    cmp-long v2, v5, v8

    if-nez v2, :cond_3e

    .line 728
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto :goto_18

    :cond_3e
    move/from16 v4, v19

    .line 731
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 733
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_40

    if-nez v20, :cond_3f

    iget v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    if-le v2, v15, :cond_40

    .line 735
    :cond_3f
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_CLOSE:[B

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    if-eqz v3, :cond_42

    .line 738
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 739
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v7}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 740
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 741
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_19

    :cond_40
    if-eqz v4, :cond_41

    .line 746
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_KEEP_ALIVE:[B

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    if-eqz v3, :cond_42

    .line 749
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 750
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v7}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 751
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 752
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_19

    :cond_41
    if-eqz v3, :cond_42

    .line 757
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_:[B

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 758
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 759
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    :cond_42
    :goto_19
    if-nez v21, :cond_43

    .line 763
    iget v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v3, 0xc7

    if-le v2, v3, :cond_43

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->getSendServerVersion()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 764
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 767
    :cond_43
    iget-object v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    const/4 v2, 0x2

    .line 768
    iput v2, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 773
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flushBuffer()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-nez v0, :cond_0

    .line 809
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State==HEADER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->prepareBuffers()V

    .line 813
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 815
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 817
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v0, :cond_2

    .line 818
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 819
    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 820
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    return v1

    :cond_3
    const/4 v0, -0x1

    .line 827
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushMask()I

    move-result v2

    const/4 v0, 0x0

    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 836
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 838
    :pswitch_1
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v5, v6, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    goto/16 :goto_2

    .line 841
    :pswitch_2
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v5, v6, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    goto/16 :goto_2

    .line 844
    :pswitch_3
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    goto/16 :goto_2

    .line 847
    :pswitch_4
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v5, v6, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    goto/16 :goto_2

    .line 850
    :pswitch_5
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    goto/16 :goto_2

    .line 853
    :pswitch_6
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    goto/16 :goto_2

    .line 859
    :pswitch_7
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_4

    .line 860
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 862
    :cond_4
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 863
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 865
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v5, 0x3

    if-eqz v3, :cond_5

    .line 867
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 868
    iget-wide v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v8, -0x2

    cmp-long v3, v6, v8

    if-nez v3, :cond_5

    .line 871
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/16 v6, 0xc

    invoke-interface {v3, v6}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 872
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v6}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 876
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v6

    if-ge v3, v6, :cond_5

    iget v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eq v3, v5, :cond_5

    .line 878
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v6}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 879
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 880
    iput-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 886
    :cond_5
    iget-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 888
    :cond_6
    iget v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v4, 0x4

    if-ne v3, v5, :cond_7

    .line 889
    iput v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 891
    :cond_7
    iget v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v3, :cond_9

    .line 892
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    goto :goto_1

    .line 896
    :cond_8
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->prepareBuffers()V

    :cond_9
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-lez v3, :cond_a

    add-int/2addr v0, v3

    .line 904
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushMask()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v3, :cond_c

    if-eqz v4, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    return v0

    :cond_c
    move v2, v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 913
    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 914
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_3
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytesBuffered()I
    .locals 3

    .line 1067
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isBufferFull()Z
    .locals 5

    .line 305
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1074
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRequest()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResponse()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepareUncheckedAddContent()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 275
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v0, :cond_a

    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 279
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 280
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_6

    .line 282
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    if-eqz v0, :cond_4

    .line 283
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v0, :cond_6

    .line 284
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_7

    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 291
    :cond_7
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v2

    iput-wide v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 294
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v0, :cond_8

    const v0, 0x7fffffff

    return v0

    .line 297
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    iget-wide v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v3, -0x2

    cmp-long v5, v1, v3

    if-nez v5, :cond_9

    const/16 v1, 0xc

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public reset()V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->reset()V

    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 151
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 152
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    :cond_3
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 154
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 155
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 156
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 157
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 158
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    .line 159
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    return-void
.end method

.method public send1xx(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_7

    const/16 v0, 0xc7

    if-le p1, v0, :cond_1

    goto :goto_1

    .line 316
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez p1, :cond_3

    .line 322
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 324
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 325
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v0, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 330
    :cond_4
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 332
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    if-gez p1, :cond_5

    .line 334
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw p1

    :cond_5
    if-nez p1, :cond_4

    const-wide/16 v0, 0x64

    .line 336
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 341
    sget-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 342
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "!1xx"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendResponse(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 254
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 255
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    const/4 v0, 0x3

    .line 256
    iput v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 259
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    return-void

    .line 250
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "%s{s=%d,h=%d,b=%d,c=%d}"

    const/4 v1, 0x5

    .line 1082
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
