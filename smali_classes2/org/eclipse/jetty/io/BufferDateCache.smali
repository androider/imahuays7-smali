.class public Lorg/eclipse/jetty/io/BufferDateCache;
.super Lorg/eclipse/jetty/util/DateCache;
.source "BufferDateCache.java"


# instance fields
.field _buffer:Lorg/eclipse/jetty/io/Buffer;

.field _last:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/eclipse/jetty/util/DateCache;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized formatBuffer(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 0

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_last:Ljava/lang/String;

    if-ne p1, p2, :cond_0

    .line 55
    iget-object p1, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 56
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_last:Ljava/lang/String;

    .line 57
    new-instance p2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {p2, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 59
    iget-object p1, p0, Lorg/eclipse/jetty/io/BufferDateCache;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0

    throw p1
.end method
