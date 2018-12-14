.class public Lorg/eclipse/jetty/http/HttpHeaderValues;
.super Lorg/eclipse/jetty/io/BufferCache;
.source "HttpHeaderValues.java"


# static fields
.field public static final BYTES:Ljava/lang/String; = "bytes"

.field public static final BYTES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final BYTES_ORDINAL:I = 0x9

.field public static final CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

.field public static final CHUNKED:Ljava/lang/String; = "chunked"

.field public static final CHUNKED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final CHUNKED_ORDINAL:I = 0x2

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final CLOSE_ORDINAL:I = 0x1

.field public static final CONTINUE:Ljava/lang/String; = "100-continue"

.field public static final CONTINUE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final CONTINUE_ORDINAL:I = 0x6

.field public static final GZIP:Ljava/lang/String; = "gzip"

.field public static final GZIP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final GZIP_ORDINAL:I = 0x3

.field public static final IDENTITY:Ljava/lang/String; = "identity"

.field public static final IDENTITY_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final IDENTITY_ORDINAL:I = 0x4

.field public static final KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field public static final KEEP_ALIVE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final KEEP_ALIVE_ORDINAL:I = 0x5

.field public static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field public static final NO_CACHE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final NO_CACHE_ORDINAL:I = 0xa

.field public static final PROCESSING:Ljava/lang/String; = "102-processing"

.field public static final PROCESSING_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final PROCESSING_ORDINAL:I = 0x7

.field public static final TE:Ljava/lang/String; = "TE"

.field public static final TE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final TE_ORDINAL:I = 0x8

.field public static final UPGRADE:Ljava/lang/String; = "Upgrade"

.field public static final UPGRADE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final UPGRADE_ORDINAL:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpHeaderValues;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "close"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 65
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "chunked"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CHUNKED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 66
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "gzip"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->GZIP_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 67
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "identity"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->IDENTITY_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 68
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "keep-alive"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 69
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "100-continue"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CONTINUE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 70
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "102-processing"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->PROCESSING_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 71
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "TE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->TE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 72
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "bytes"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->BYTES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 73
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "no-cache"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->NO_CACHE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 74
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const-string v1, "Upgrade"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->UPGRADE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/eclipse/jetty/io/BufferCache;-><init>()V

    return-void
.end method

.method public static hasKnownValues(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method
