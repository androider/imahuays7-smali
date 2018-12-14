.class public Lorg/fourthline/cling/registry/event/DeviceDiscovery;
.super Ljava/lang/Object;
.source "DeviceDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/fourthline/cling/model/meta/Device;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected device:Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/fourthline/cling/registry/event/DeviceDiscovery;->device:Lorg/fourthline/cling/model/meta/Device;

    return-void
.end method


# virtual methods
.method public getDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/fourthline/cling/registry/event/DeviceDiscovery;->device:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method
