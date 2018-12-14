.class public Lcom/mh/movie/core/androidupnp/service/ClingUpnpService$a;
.super Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;
.source "ClingUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService$a;->a:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    invoke-direct {p0, p1}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;-><init>(Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService$a;->a:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    return-object v0
.end method

.method public bridge synthetic get()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .line 55
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->get()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 55
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 55
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 55
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method
