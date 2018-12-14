.class Lorg/fourthline/cling/registry/RegistryImpl$2;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/registry/RegistryImpl;->notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/registry/RegistryImpl;

.field final synthetic val$device:Lorg/fourthline/cling/model/meta/RemoteDevice;

.field final synthetic val$ex:Ljava/lang/Exception;

.field final synthetic val$listener:Lorg/fourthline/cling/registry/RegistryListener;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl$2;->this$0:Lorg/fourthline/cling/registry/RegistryImpl;

    iput-object p2, p0, Lorg/fourthline/cling/registry/RegistryImpl$2;->val$listener:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/RegistryImpl$2;->val$device:Lorg/fourthline/cling/model/meta/RemoteDevice;

    iput-object p4, p0, Lorg/fourthline/cling/registry/RegistryImpl$2;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl$2;->val$listener:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl$2;->this$0:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl$2;->val$device:Lorg/fourthline/cling/model/meta/RemoteDevice;

    iget-object v3, p0, Lorg/fourthline/cling/registry/RegistryImpl$2;->val$ex:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lorg/fourthline/cling/registry/RegistryListener;->remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    return-void
.end method
