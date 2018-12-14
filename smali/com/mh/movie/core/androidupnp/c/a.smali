.class public Lcom/mh/movie/core/androidupnp/c/a;
.super Lorg/fourthline/cling/registry/DefaultRegistryListener;
.source "BrowseRegistryListener.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Lcom/mh/movie/core/androidupnp/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/fourthline/cling/registry/DefaultRegistryListener;-><init>()V

    return-void
.end method

.method private b(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 2

    .line 66
    sget-object v0, Lcom/mh/movie/core/androidupnp/c/a;->a:Ljava/lang/String;

    const-string v1, "deviceAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/androidupnp/service/b/a;->c:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/types/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object p1, Lcom/mh/movie/core/androidupnp/c/a;->a:Ljava/lang/String;

    const-string v0, "deviceAdded called, but not match"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/c/a;->b:Lcom/mh/movie/core/androidupnp/c/b;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/mh/movie/core/androidupnp/b/c;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/androidupnp/b/c;-><init>(Lorg/fourthline/cling/model/meta/Device;)V

    .line 74
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/d;->a()Lcom/mh/movie/core/androidupnp/b/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/androidupnp/b/d;->b(Lcom/mh/movie/core/androidupnp/b/c;)V

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/c/a;->b:Lcom/mh/movie/core/androidupnp/c/b;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/androidupnp/c/b;->a(Lcom/mh/movie/core/androidupnp/b/h;)V

    goto :goto_0

    .line 77
    :cond_1
    sget-object p1, Lcom/mh/movie/core/androidupnp/c/a;->a:Ljava/lang/String;

    const-string v0, "deviceAdded Listener is nulll"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/androidupnp/c/b;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/c/a;->b:Lcom/mh/movie/core/androidupnp/c/b;

    return-void
.end method

.method public a(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 2

    .line 82
    sget-object v0, Lcom/mh/movie/core/androidupnp/c/a;->a:Ljava/lang/String;

    const-string v1, "deviceRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/c/a;->b:Lcom/mh/movie/core/androidupnp/c/b;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/d;->a()Lcom/mh/movie/core/androidupnp/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/androidupnp/b/d;->a(Lorg/fourthline/cling/model/meta/Device;)Lcom/mh/movie/core/androidupnp/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/d;->a()Lcom/mh/movie/core/androidupnp/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/androidupnp/b/d;->a(Lcom/mh/movie/core/androidupnp/b/c;)V

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/c/a;->b:Lcom/mh/movie/core/androidupnp/c/b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/androidupnp/c/b;->b(Lcom/mh/movie/core/androidupnp/b/h;)V

    goto :goto_0

    .line 89
    :cond_0
    sget-object p1, Lcom/mh/movie/core/androidupnp/c/a;->a:Ljava/lang/String;

    const-string v0, "deviceRemoved des is nulll"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    sget-object p1, Lcom/mh/movie/core/androidupnp/c/a;->a:Ljava/lang/String;

    const-string v0, "deviceRemoved Listener is nulll"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 56
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "-----> \u8bbe\u5907\u76d1\u542c  \u672c\u5730\u8bbe\u5907 \u52a0\u5165"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public localDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/androidupnp/c/a;->a(Lorg/fourthline/cling/model/meta/Device;)V

    .line 62
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "-----> \u8bbe\u5907\u76d1\u542c  \u672c\u5730\u8bbe\u5907 \u79fb\u9664"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public remoteDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Lcom/mh/movie/core/androidupnp/c/a;->b(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 1

    .line 38
    sget-object p1, Lcom/mh/movie/core/androidupnp/c/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remoteDeviceDiscoveryFailed device: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDisplayString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    return-void
.end method

.method public remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/androidupnp/c/a;->a(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method
