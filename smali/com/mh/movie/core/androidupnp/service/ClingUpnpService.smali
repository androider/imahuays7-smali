.class public Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;
.super Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;
.source "ClingUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/androidupnp/service/ClingUpnpService$a;
    }
.end annotation


# instance fields
.field private a:Lorg/fourthline/cling/model/meta/LocalDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->a:Lorg/fourthline/cling/model/meta/LocalDevice;

    return-void
.end method


# virtual methods
.method public a()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->onCreate()V

    .line 26
    new-instance v0, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService$a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService$a;-><init>(Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;)V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 31
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->onDestroy()V

    return-void
.end method
