.class public Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;
.super Lorg/fourthline/cling/registry/event/DeviceDiscovery;
.source "LocalDeviceDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/registry/event/DeviceDiscovery<",
        "Lorg/fourthline/cling/model/meta/LocalDevice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/fourthline/cling/registry/event/DeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method
