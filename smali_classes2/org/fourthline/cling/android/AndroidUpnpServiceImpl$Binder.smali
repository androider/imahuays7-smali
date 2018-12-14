.class public Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;
.super Landroid/os/Binder;
.source "AndroidUpnpServiceImpl.java"

# interfaces
.implements Lorg/fourthline/cling/android/AndroidUpnpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Binder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    iget-object v0, v0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    iget-object v0, v0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    iget-object v0, v0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    iget-object v0, v0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method
