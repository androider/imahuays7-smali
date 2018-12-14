.class Lorg/fourthline/cling/registry/RemoteItems$4;
.super Ljava/lang/Object;
.source "RemoteItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/registry/RemoteItems;->remove(Lorg/fourthline/cling/model/meta/RemoteDevice;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/registry/RemoteItems;

.field final synthetic val$listener:Lorg/fourthline/cling/registry/RegistryListener;

.field final synthetic val$registeredDevice:Lorg/fourthline/cling/model/meta/RemoteDevice;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/RemoteItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/fourthline/cling/registry/RemoteItems$4;->this$0:Lorg/fourthline/cling/registry/RemoteItems;

    iput-object p2, p0, Lorg/fourthline/cling/registry/RemoteItems$4;->val$listener:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/RemoteItems$4;->val$registeredDevice:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/fourthline/cling/registry/RemoteItems$4;->val$listener:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/fourthline/cling/registry/RemoteItems$4;->this$0:Lorg/fourthline/cling/registry/RemoteItems;

    iget-object v1, v1, Lorg/fourthline/cling/registry/RemoteItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/fourthline/cling/registry/RemoteItems$4;->val$registeredDevice:Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/RegistryListener;->remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    return-void
.end method
