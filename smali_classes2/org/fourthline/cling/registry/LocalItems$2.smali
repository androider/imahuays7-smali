.class Lorg/fourthline/cling/registry/LocalItems$2;
.super Ljava/lang/Object;
.source "LocalItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/registry/LocalItems;->remove(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/registry/LocalItems;

.field final synthetic val$incomingSubscription:Lorg/fourthline/cling/registry/RegistryItem;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/registry/RegistryItem;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/fourthline/cling/registry/LocalItems$2;->this$0:Lorg/fourthline/cling/registry/LocalItems;

    iput-object p2, p0, Lorg/fourthline/cling/registry/LocalItems$2;->val$incomingSubscription:Lorg/fourthline/cling/registry/RegistryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems$2;->val$incomingSubscription:Lorg/fourthline/cling/registry/RegistryItem;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;)V

    return-void
.end method
