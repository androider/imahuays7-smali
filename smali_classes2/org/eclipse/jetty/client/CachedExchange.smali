.class public Lorg/eclipse/jetty/client/CachedExchange;
.super Lorg/eclipse/jetty/client/HttpExchange;
.source "CachedExchange.java"


# instance fields
.field private final _responseFields:Lorg/eclipse/jetty/http/HttpFields;

.field private volatile _responseStatus:I


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    new-instance p1, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {p1}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    return-void
.end method


# virtual methods
.method public declared-synchronized getResponseFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 2

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/CachedExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Headers not completely received yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseStatus()I
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/CachedExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response not received yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    iput p2, p0, Lorg/eclipse/jetty/client/CachedExchange;->_responseStatus:I

    .line 62
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0

    throw p1
.end method
