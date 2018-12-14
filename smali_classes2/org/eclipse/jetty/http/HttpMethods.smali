.class public Lorg/eclipse/jetty/http/HttpMethods;
.super Ljava/lang/Object;
.source "HttpMethods.java"


# static fields
.field public static final CACHE:Lorg/eclipse/jetty/io/BufferCache;

.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final CONNECT_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final CONNECT_ORDINAL:I = 0x8

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final DELETE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final DELETE_ORDINAL:I = 0x6

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final GET_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final GET_ORDINAL:I = 0x1

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HEAD_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final HEAD_ORDINAL:I = 0x3

.field public static final MOVE:Ljava/lang/String; = "MOVE"

.field public static final MOVE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final MOVE_ORDINAL:I = 0x9

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final OPTIONS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final OPTIONS_ORDINAL:I = 0x5

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final POST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final POST_ORDINAL:I = 0x2

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final PUT_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final PUT_ORDINAL:I = 0x4

.field public static final TRACE:Ljava/lang/String; = "TRACE"

.field public static final TRACE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final TRACE_ORDINAL:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lorg/eclipse/jetty/io/BufferCache;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/BufferCache;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    .line 54
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->GET_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 55
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "POST"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->POST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 56
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "HEAD"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->HEAD_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 57
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "PUT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->PUT_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 58
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->OPTIONS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 59
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "DELETE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->DELETE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 60
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "TRACE"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->TRACE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 61
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "CONNECT"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CONNECT_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 62
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "MOVE"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpMethods;->MOVE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
