.class Lorg/fourthline/cling/registry/LocalItems$1;
.super Ljava/lang/Object;
.source "LocalItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/registry/LocalItems;->add(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/registry/LocalItems;

.field final synthetic val$listener:Lorg/fourthline/cling/registry/RegistryListener;

.field final synthetic val$localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/fourthline/cling/registry/LocalItems$1;->this$0:Lorg/fourthline/cling/registry/LocalItems;

    iput-object p2, p0, Lorg/fourthline/cling/registry/LocalItems$1;->val$listener:Lorg/fourthline/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/fourthline/cling/registry/LocalItems$1;->val$localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems$1;->val$listener:Lorg/fourthline/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/fourthline/cling/registry/LocalItems$1;->this$0:Lorg/fourthline/cling/registry/LocalItems;

    iget-object v1, v1, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/fourthline/cling/registry/LocalItems$1;->val$localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/registry/RegistryListener;->localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-void
.end method
