.class Lorg/fourthline/cling/mock/MockUpnpService$1;
.super Lorg/fourthline/cling/registry/RegistryImpl;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/mock/MockUpnpService;-><init>(ZLorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/mock/MockUpnpService;

.field final synthetic val$configuration:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpService;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpService$1;->this$0:Lorg/fourthline/cling/mock/MockUpnpService;

    iput-object p3, p0, Lorg/fourthline/cling/mock/MockUpnpService$1;->val$configuration:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    invoke-direct {p0, p2}, Lorg/fourthline/cling/registry/RegistryImpl;-><init>(Lorg/fourthline/cling/UpnpService;)V

    return-void
.end method


# virtual methods
.method protected createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/mock/MockUpnpService$1;->val$configuration:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    invoke-virtual {v0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->isMaintainsRegistry()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
