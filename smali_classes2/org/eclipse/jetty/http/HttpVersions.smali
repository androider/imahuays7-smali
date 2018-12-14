.class public Lorg/eclipse/jetty/http/HttpVersions;
.super Ljava/lang/Object;
.source "HttpVersions.java"


# static fields
.field public static final CACHE:Lorg/eclipse/jetty/io/BufferCache;

.field public static final HTTP_0_9:Ljava/lang/String; = ""

.field public static final HTTP_0_9_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final HTTP_0_9_ORDINAL:I = 0x9

.field public static final HTTP_1_0:Ljava/lang/String; = "HTTP/1.0"

.field public static final HTTP_1_0_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final HTTP_1_0_ORDINAL:I = 0xa

.field public static final HTTP_1_1:Ljava/lang/String; = "HTTP/1.1"

.field public static final HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final HTTP_1_1_ORDINAL:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lorg/eclipse/jetty/io/BufferCache;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/BufferCache;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    .line 44
    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_0_9_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 45
    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "HTTP/1.0"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_0_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 46
    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "HTTP/1.1"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
