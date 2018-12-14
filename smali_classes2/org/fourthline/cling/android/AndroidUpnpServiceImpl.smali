.class public Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;
.super Landroid/app/Service;
.source "AndroidUpnpServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;
    }
.end annotation


# instance fields
.field protected binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

.field protected upnpService:Lorg/fourthline/cling/UpnpService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;-><init>(Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    return-void
.end method


# virtual methods
.method protected createConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 80
    new-instance v0, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;

    invoke-direct {v0}, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;-><init>()V

    return-object v0
.end method

.method protected createRouter(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Landroid/content/Context;)Lorg/fourthline/cling/android/AndroidRouter;
    .locals 1

    .line 86
    new-instance v0, Lorg/fourthline/cling/android/AndroidRouter;

    invoke-direct {v0, p1, p2, p3}, Lorg/fourthline/cling/android/AndroidRouter;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Landroid/content/Context;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 91
    iget-object p1, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    new-instance v0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$1;

    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->createConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/fourthline/cling/registry/RegistryListener;

    invoke-direct {v0, p0, v1, v2}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$1;-><init>(Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;Lorg/fourthline/cling/UpnpServiceConfiguration;[Lorg/fourthline/cling/registry/RegistryListener;)V

    iput-object v0, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->shutdown()V

    .line 100
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
