.class public Lorg/fourthline/cling/mock/MockUpnpService;
.super Ljava/lang/Object;
.source "MockUpnpService.java"

# interfaces
.implements Lorg/fourthline/cling/UpnpService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;
    }
.end annotation

.annotation runtime Ljavax/enterprise/inject/Alternative;
.end annotation


# instance fields
.field protected final configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

.field protected final controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

.field protected final networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

.field protected final protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

.field protected final registry:Lorg/fourthline/cling/registry/Registry;

.field protected final router:Lorg/fourthline/cling/mock/MockRouter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;-><init>(ZZ)V

    invoke-direct {p0, v1, v0}, Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-void
.end method

.method public constructor <init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lorg/fourthline/cling/mock/MockUpnpService;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 84
    invoke-virtual {p0, p0, p1}, Lorg/fourthline/cling/mock/MockUpnpService;->createProtocolFactory(Lorg/fourthline/cling/UpnpService;Z)Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 86
    new-instance p1, Lorg/fourthline/cling/mock/MockUpnpService$1;

    invoke-direct {p1, p0, p0, p2}, Lorg/fourthline/cling/mock/MockUpnpService$1;-><init>(Lorg/fourthline/cling/mock/MockUpnpService;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->registry:Lorg/fourthline/cling/registry/Registry;

    .line 93
    iget-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->createNetworkAddressFactory()Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->networkAddressFactory:Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;

    .line 95
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->createRouter()Lorg/fourthline/cling/mock/MockRouter;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->router:Lorg/fourthline/cling/mock/MockRouter;

    .line 97
    new-instance p1, Lorg/fourthline/cling/controlpoint/ControlPointImpl;

    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    iget-object v1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->registry:Lorg/fourthline/cling/registry/Registry;

    invoke-direct {p1, p2, v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPointImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)V

    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    .line 73
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;-><init>(ZZ)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    .line 77
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    invoke-direct {v0, p2, p3}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;-><init>(ZZ)V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createProtocolFactory(Lorg/fourthline/cling/UpnpService;Z)Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 101
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;-><init>(Lorg/fourthline/cling/UpnpService;Z)V

    return-object v0
.end method

.method protected createRouter()Lorg/fourthline/cling/mock/MockRouter;
    .locals 3

    .line 105
    new-instance v0, Lorg/fourthline/cling/mock/MockRouter;

    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/mock/MockRouter;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->registry:Lorg/fourthline/cling/registry/Registry;

    return-object v0
.end method

.method public getRouter()Lorg/fourthline/cling/mock/MockRouter;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService;->router:Lorg/fourthline/cling/mock/MockRouter;

    return-object v0
.end method

.method public bridge synthetic getRouter()Lorg/fourthline/cling/transport/Router;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getRouter()Lorg/fourthline/cling/mock/MockRouter;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->shutdown()V

    .line 171
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->shutdown()V

    return-void
.end method
