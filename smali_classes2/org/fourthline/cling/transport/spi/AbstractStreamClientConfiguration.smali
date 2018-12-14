.class public abstract Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;
.super Ljava/lang/Object;
.source "AbstractStreamClientConfiguration.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamClientConfiguration;


# instance fields
.field protected logWarningSeconds:I

.field protected requestExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected timeoutSeconds:I


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 27
    iput v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->timeoutSeconds:I

    const/4 v0, 0x5

    .line 28
    iput v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->logWarningSeconds:I

    .line 31
    iput-object p1, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/ExecutorService;I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 27
    iput v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->timeoutSeconds:I

    const/4 v0, 0x5

    .line 28
    iput v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->logWarningSeconds:I

    .line 35
    iput-object p1, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 36
    iput p2, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->timeoutSeconds:I

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/ExecutorService;II)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 27
    iput v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->timeoutSeconds:I

    const/4 v0, 0x5

    .line 28
    iput v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->logWarningSeconds:I

    .line 40
    iput-object p1, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 41
    iput p2, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->timeoutSeconds:I

    .line 42
    iput p3, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->logWarningSeconds:I

    return-void
.end method


# virtual methods
.method public getLogWarningSeconds()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->logWarningSeconds:I

    return v0
.end method

.method public getRequestExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getTimeoutSeconds()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->timeoutSeconds:I

    return v0
.end method

.method public getUserAgentValue(II)Ljava/lang/String;
    .locals 1

    .line 79
    new-instance v0, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/ServerClientTokens;-><init>(II)V

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ServerClientTokens;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setLogWarningSeconds(I)V
    .locals 0

    .line 72
    iput p1, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->logWarningSeconds:I

    return-void
.end method

.method public setRequestExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setTimeoutSeconds(I)V
    .locals 0

    .line 61
    iput p1, p0, Lorg/fourthline/cling/transport/spi/AbstractStreamClientConfiguration;->timeoutSeconds:I

    return-void
.end method
