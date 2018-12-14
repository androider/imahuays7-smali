.class public Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;
.super Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;
.source "AndroidUpnpServiceConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>(IZ)V

    const-string p1, "org.xml.sax.driver"

    const-string v0, "org.xmlpull.v1.sax2.Driver"

    .line 72
    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createDeviceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;
    .locals 1

    .line 120
    new-instance v0, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;-><init>()V

    return-object v0
.end method

.method protected createGENAEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;
    .locals 1

    .line 135
    new-instance v0, Lorg/fourthline/cling/transport/impl/RecoveringGENAEventProcessorImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/RecoveringGENAEventProcessorImpl;-><init>()V

    return-object v0
.end method

.method protected createNamespace()Lorg/fourthline/cling/model/Namespace;
    .locals 2

    .line 83
    new-instance v0, Lorg/fourthline/cling/model/Namespace;

    const-string v1, "/upnp"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/Namespace;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .line 77
    new-instance v0, Lorg/fourthline/cling/android/AndroidNetworkAddressFactory;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/android/AndroidNetworkAddressFactory;-><init>(I)V

    return-object v0
.end method

.method protected createSOAPActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;
    .locals 1

    .line 130
    new-instance v0, Lorg/fourthline/cling/transport/impl/RecoveringSOAPActionProcessorImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/impl/RecoveringSOAPActionProcessorImpl;-><init>()V

    return-object v0
.end method

.method protected createServiceDescriptorBinderUDA10()Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .line 125
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;-><init>()V

    return-object v0
.end method

.method public createStreamClient()Lorg/fourthline/cling/transport/spi/StreamClient;
    .locals 3

    .line 89
    new-instance v0, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;

    new-instance v1, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration$1;

    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration$1;-><init>(Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;-><init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;)V

    return-object v0
.end method

.method public createStreamServer(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/StreamServer;
    .locals 3

    .line 110
    new-instance v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    new-instance v1, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    sget-object v2, Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;->INSTANCE:Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;

    .line 113
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getStreamListenPort()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;-><init>(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;I)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;)V

    return-object v0
.end method

.method public getRegistryMaintenanceIntervalMillis()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method
