.class public Lorg/fourthline/cling/ManagedUpnpService;
.super Ljava/lang/Object;
.source "ManagedUpnpService.java"

# interfaces
.implements Lorg/fourthline/cling/UpnpService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;
    }
.end annotation

.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field configuration:Ljavax/enterprise/inject/Instance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/inject/Instance<",
            "Lorg/fourthline/cling/UpnpServiceConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field controlPointInstance:Ljavax/enterprise/inject/Instance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/inject/Instance<",
            "Lorg/fourthline/cling/controlpoint/ControlPoint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field disableRouterEvent:Ljavax/enterprise/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/event/Event<",
            "Lorg/fourthline/cling/transport/DisableRouter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field enableRouterEvent:Ljavax/enterprise/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/event/Event<",
            "Lorg/fourthline/cling/transport/EnableRouter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protocolFactoryInstance:Ljavax/enterprise/inject/Instance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/inject/Instance<",
            "Lorg/fourthline/cling/protocol/ProtocolFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field registryInstance:Ljavax/enterprise/inject/Instance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/inject/Instance<",
            "Lorg/fourthline/cling/registry/Registry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field registryListenerAdapter:Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field routerInstance:Ljavax/enterprise/inject/Instance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/inject/Instance<",
            "Lorg/fourthline/cling/transport/Router;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lorg/fourthline/cling/ManagedUpnpService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->configuration:Ljavax/enterprise/inject/Instance;

    invoke-interface {v0}, Ljavax/enterprise/inject/Instance;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->controlPointInstance:Ljavax/enterprise/inject/Instance;

    invoke-interface {v0}, Ljavax/enterprise/inject/Instance;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->protocolFactoryInstance:Ljavax/enterprise/inject/Instance;

    invoke-interface {v0}, Ljavax/enterprise/inject/Instance;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->registryInstance:Ljavax/enterprise/inject/Instance;

    invoke-interface {v0}, Ljavax/enterprise/inject/Instance;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/Registry;

    return-object v0
.end method

.method public getRouter()Lorg/fourthline/cling/transport/Router;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->routerInstance:Ljavax/enterprise/inject/Instance;

    invoke-interface {v0}, Ljavax/enterprise/inject/Instance;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/transport/Router;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/ManagedUpnpService;->shutdown(Lorg/fourthline/cling/UpnpService$Shutdown;)V

    return-void
.end method

.method public shutdown(Lorg/fourthline/cling/UpnpService$Shutdown;)V
    .locals 1
    .param p1    # Lorg/fourthline/cling/UpnpService$Shutdown;
        .annotation runtime Ljavax/enterprise/event/Observes;
        .end annotation
    .end param

    .line 140
    sget-object p1, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    const-string v0, ">>> Shutting down managed UPnP service..."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/registry/Registry;->shutdown()V

    .line 145
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService;->disableRouterEvent:Ljavax/enterprise/event/Event;

    new-instance v0, Lorg/fourthline/cling/transport/DisableRouter;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/DisableRouter;-><init>()V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->shutdown()V

    .line 149
    sget-object p1, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    const-string v0, "<<< Managed UPnP service shutdown completed"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public start(Lorg/fourthline/cling/UpnpService$Start;)V
    .locals 1
    .param p1    # Lorg/fourthline/cling/UpnpService$Start;
        .annotation runtime Ljavax/enterprise/event/Observes;
        .end annotation
    .end param

    .line 120
    sget-object p1, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    const-string v0, ">>> Starting managed UPnP service..."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object p1

    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->registryListenerAdapter:Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;

    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 126
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService;->enableRouterEvent:Ljavax/enterprise/event/Event;

    new-instance v0, Lorg/fourthline/cling/transport/EnableRouter;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/EnableRouter;-><init>()V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    .line 128
    sget-object p1, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    const-string v0, "<<< Managed UPnP service started successfully"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
