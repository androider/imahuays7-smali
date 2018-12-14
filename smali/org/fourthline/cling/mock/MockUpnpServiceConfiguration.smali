.class public Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;
.super Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;
.source "MockUpnpServiceConfiguration.java"


# annotations
.annotation runtime Ljavax/enterprise/inject/Alternative;
.end annotation


# instance fields
.field protected final maintainsRegistry:Z

.field protected final multiThreaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0, v0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>(Z)V

    .line 57
    iput-boolean p1, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->maintainsRegistry:Z

    .line 58
    iput-boolean p2, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->multiThreaded:Z

    return-void
.end method


# virtual methods
.method protected createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .line 72
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$1;

    invoke-direct {v0, p0, p1}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$1;-><init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;I)V

    return-object v0
.end method

.method protected getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->isMultiThreaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-super {p0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;-><init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-object v0
.end method

.method public getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->isMaintainsRegistry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$2;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$2;-><init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public isMaintainsRegistry()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->maintainsRegistry:Z

    return v0
.end method

.method public isMultiThreaded()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->multiThreaded:Z

    return v0
.end method
