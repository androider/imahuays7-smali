.class Lorg/fourthline/cling/registry/RegistryImpl$1;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/registry/RegistryImpl;->notifyDiscoveryStart(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/registry/RegistryImpl;

.field final synthetic val$device:Lorg/fourthline/cling/model/meta/RemoteDevice;

.field final synthetic val$listener:Lorg/fourthline/cling/registry/RegistryListener;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl$1;->this$0:Lorg/fourthline/cling/registry/RegistryImpl;

    iput-object p2, p0, Lorg/fourthline/cling/registry/RegistryImpl$1;->val$listener:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/RegistryImpl$1;->val$device:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl$1;->val$listener:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl$1;->this$0:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl$1;->val$device:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/RegistryListener;->remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    return-void
.end method
