.class public Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;
.super Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;
.source "StreamClientConfigurationImpl.java"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;-><init>(Ljava/util/concurrent/ExecutorService;I)V

    return-void
.end method


# virtual methods
.method public getRequestRetryCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
