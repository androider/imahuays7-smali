.class Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;
.super Ljava/lang/Object;
.source "ManagedUpnpService.java"

# interfaces
.implements Lorg/fourthline/cling/registry/RegistryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/ManagedUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegistryListenerAdapter"
.end annotation

.annotation runtime Ljavax/enterprise/context/ApplicationScoped;
.end annotation


# instance fields
.field failedRemoteDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/event/Event<",
            "Lorg/fourthline/cling/registry/event/FailedRemoteDeviceDiscovery;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/enterprise/inject/Any;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field localDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/event/Event<",
            "Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/enterprise/inject/Any;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field registryShutdownEvent:Ljavax/enterprise/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/event/Event<",
            "Lorg/fourthline/cling/registry/event/RegistryShutdown;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/enterprise/inject/Any;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field remoteDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/enterprise/event/Event<",
            "Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/enterprise/inject/Any;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterShutdown()V
    .locals 4

    .line 230
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->registryShutdownEvent:Ljavax/enterprise/event/Event;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    new-instance v2, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter$2;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter$2;-><init>(Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Ljavax/enterprise/event/Event;->select([Ljava/lang/annotation/Annotation;)Ljavax/enterprise/event/Event;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/registry/event/RegistryShutdown;

    invoke-direct {v1}, Lorg/fourthline/cling/registry/event/RegistryShutdown;-><init>()V

    .line 231
    invoke-interface {v0, v1}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
    .locals 3

    .line 222
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->registryShutdownEvent:Ljavax/enterprise/event/Event;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    new-instance v1, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter$1;

    invoke-direct {v1, p0}, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter$1;-><init>(Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->select([Ljava/lang/annotation/Annotation;)Ljavax/enterprise/event/Event;

    move-result-object p1

    new-instance v0, Lorg/fourthline/cling/registry/event/RegistryShutdown;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/RegistryShutdown;-><init>()V

    .line 223
    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 3

    .line 208
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->localDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sget-object v1, Lorg/fourthline/cling/registry/event/Phase;->COMPLETE:Ljavax/enterprise/util/AnnotationLiteral;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->select([Ljava/lang/annotation/Annotation;)Ljavax/enterprise/event/Event;

    move-result-object p1

    new-instance v0, Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public localDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 3

    .line 215
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->localDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sget-object v1, Lorg/fourthline/cling/registry/event/Phase;->BYEBYE:Ljavax/enterprise/util/AnnotationLiteral;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->select([Ljava/lang/annotation/Annotation;)Ljavax/enterprise/event/Event;

    move-result-object p1

    new-instance v0, Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public remoteDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 3

    .line 187
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->remoteDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sget-object v1, Lorg/fourthline/cling/registry/event/Phase;->COMPLETE:Ljavax/enterprise/util/AnnotationLiteral;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->select([Ljava/lang/annotation/Annotation;)Ljavax/enterprise/event/Event;

    move-result-object p1

    new-instance v0, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->failedRemoteDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;

    new-instance v0, Lorg/fourthline/cling/registry/event/FailedRemoteDeviceDiscovery;

    invoke-direct {v0, p2, p3}, Lorg/fourthline/cling/registry/event/FailedRemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 3

    .line 173
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->remoteDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sget-object v1, Lorg/fourthline/cling/registry/event/Phase;->ALIVE:Ljavax/enterprise/util/AnnotationLiteral;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->select([Ljava/lang/annotation/Annotation;)Ljavax/enterprise/event/Event;

    move-result-object p1

    new-instance v0, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 3

    .line 201
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->remoteDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sget-object v1, Lorg/fourthline/cling/registry/event/Phase;->BYEBYE:Ljavax/enterprise/util/AnnotationLiteral;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->select([Ljava/lang/annotation/Annotation;)Ljavax/enterprise/event/Event;

    move-result-object p1

    new-instance v0, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public remoteDeviceUpdated(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 3

    .line 194
    iget-object p1, p0, Lorg/fourthline/cling/ManagedUpnpService$RegistryListenerAdapter;->remoteDeviceDiscoveryEvent:Ljavax/enterprise/event/Event;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sget-object v1, Lorg/fourthline/cling/registry/event/Phase;->UPDATED:Ljavax/enterprise/util/AnnotationLiteral;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->select([Ljava/lang/annotation/Annotation;)Ljavax/enterprise/event/Event;

    move-result-object p1

    new-instance v0, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    invoke-interface {p1, v0}, Ljavax/enterprise/event/Event;->fire(Ljava/lang/Object;)V

    return-void
.end method
