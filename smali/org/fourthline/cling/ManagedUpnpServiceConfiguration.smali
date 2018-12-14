.class public Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;
.super Ljava/lang/Object;
.source "ManagedUpnpServiceConfiguration.java"

# interfaces
.implements Lorg/fourthline/cling/UpnpServiceConfiguration;


# annotations
.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private defaultExecutorService:Ljava/util/concurrent/ExecutorService;

.field private deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

.field private genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

.field private namespace:Lorg/fourthline/cling/model/Namespace;

.field private serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

.field private soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

.field private streamListenPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDatagramIO(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/DatagramIO;
    .locals 1

    .line 132
    new-instance p1, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;

    new-instance v0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;-><init>()V

    invoke-direct {p1, v0}, Lorg/fourthline/cling/transport/impl/DatagramIOImpl;-><init>(Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;)V

    return-object p1
.end method

.method protected createDefaultExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 258
    new-instance v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingExecutor;

    invoke-direct {v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration$ClingExecutor;-><init>()V

    return-object v0
.end method

.method protected createDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
    .locals 1

    .line 242
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;-><init>()V

    return-object v0
.end method

.method protected createGENAEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;
    .locals 1

    .line 238
    new-instance v0, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;-><init>()V

    return-object v0
.end method

.method public createMulticastReceiver(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/MulticastReceiver;
    .locals 3

    .line 123
    new-instance v0, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;

    new-instance v1, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 125
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getMulticastGroup()Ljava/net/InetAddress;

    move-result-object v2

    .line 126
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getMulticastPort()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/MulticastReceiverImpl;-><init>(Lorg/fourthline/cling/transport/impl/MulticastReceiverConfigurationImpl;)V

    return-object v0
.end method

.method protected createNamespace()Lorg/fourthline/cling/model/Namespace;
    .locals 1

    .line 250
    new-instance v0, Lorg/fourthline/cling/model/Namespace;

    invoke-direct {v0}, Lorg/fourthline/cling/model/Namespace;-><init>()V

    return-object v0
.end method

.method public createNetworkAddressFactory()Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .line 221
    iget v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->streamListenPort:I

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .line 230
    new-instance v0, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;-><init>(I)V

    return-object v0
.end method

.method protected createSOAPActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
    .locals 1

    .line 234
    new-instance v0, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/SOAPActionProcessorImpl;-><init>()V

    return-object v0
.end method

.method protected createServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .line 246
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;-><init>()V

    return-object v0
.end method

.method public createStreamClient()Lorg/fourthline/cling/transport/spi/StreamClient;
    .locals 3

    .line 115
    new-instance v0, Lorg/fourthline/cling/transport/impl/StreamClientImpl;

    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;

    .line 117
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/StreamClientImpl;-><init>(Lorg/fourthline/cling/transport/impl/StreamClientConfigurationImpl;)V

    return-object v0
.end method

.method public createStreamServer(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/StreamServer;
    .locals 2

    .line 136
    new-instance v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;

    new-instance v1, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    .line 138
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getStreamListenPort()I

    move-result p1

    invoke-direct {v1, p1}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;)V

    return-object v0
.end method

.method public getAliveIntervalMillis()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getDatagramIOExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getDatagramProcessor()Lorg/fourthline/cling/transport/spi/DatagramProcessor;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->datagramProcessor:Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    return-object v0
.end method

.method protected getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDescriptorRetrievalHeaders(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    return-object v0
.end method

.method public getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExclusiveServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;
    .locals 1

    const/4 v0, 0x0

    .line 164
    new-array v0, v0, [Lorg/fourthline/cling/model/types/ServiceType;

    return-object v0
.end method

.method public getGenaEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    return-object v0
.end method

.method public getMulticastReceiverExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Lorg/fourthline/cling/model/Namespace;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->namespace:Lorg/fourthline/cling/model/Namespace;

    return-object v0
.end method

.method public getRegistryListenerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getRegistryMaintenanceIntervalMillis()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getRemoteDeviceMaxAgeSeconds()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    return-object v0
.end method

.method public getSoapActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    return-object v0
.end method

.method public getStreamServerExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2
    .annotation runtime Ljavax/annotation/PostConstruct;
    .end annotation

    .line 85
    sget-boolean v0, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unsupported runtime environment, use org.fourthline.cling.android.AndroidUpnpServiceConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->streamListenPort:I

    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->createDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 93
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->createSOAPActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->soapActionProcessor:Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    .line 94
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->createGENAEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->genaEventProcessor:Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    .line 96
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->createDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->deviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    .line 97
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->createServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->serviceDescriptorBinderUDA10:Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    .line 99
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->createNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->namespace:Lorg/fourthline/cling/model/Namespace;

    return-void
.end method

.method public isReceivedSubscriptionTimeoutIgnored()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 2

    .line 225
    sget-object v0, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    const-string v1, "Shutting down default executor service"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
