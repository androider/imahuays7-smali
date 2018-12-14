.class Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$1;
.super Lorg/fourthline/cling/UpnpServiceImpl;
.source "AndroidUpnpServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;


# direct methods
.method varargs constructor <init>(Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;Lorg/fourthline/cling/UpnpServiceConfiguration;[Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$1;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/UpnpServiceImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;[Lorg/fourthline/cling/registry/RegistryListener;)V

    return-void
.end method


# virtual methods
.method protected createRouter(Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)Lorg/fourthline/cling/transport/Router;
    .locals 2

    .line 58
    iget-object p2, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$1;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    .line 59
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$1;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$1;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    .line 58
    invoke-virtual {p2, v0, p1, v1}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->createRouter(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Landroid/content/Context;)Lorg/fourthline/cling/android/AndroidRouter;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$1;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/android/AndroidRouter;

    invoke-virtual {v0}, Lorg/fourthline/cling/android/AndroidRouter;->unregisterBroadcastReceiver()V

    const/4 v0, 0x1

    .line 74
    invoke-super {p0, v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 68
    monitor-exit p0

    throw v0
.end method
