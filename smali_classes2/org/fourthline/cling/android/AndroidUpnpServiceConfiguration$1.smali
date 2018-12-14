.class Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration$1;
.super Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;
.source "AndroidUpnpServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;->createStreamClient()Lorg/fourthline/cling/transport/spi/StreamClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration$1;->this$0:Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;

    invoke-direct {p0, p2}, Lorg/fourthline/cling/transport/impl/jetty/StreamClientConfigurationImpl;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public getUserAgentValue(II)Ljava/lang/String;
    .locals 1

    .line 98
    new-instance v0, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/ServerClientTokens;-><init>(II)V

    const-string p1, "Android"

    .line 99
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 100
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lorg/fourthline/cling/model/ServerClientTokens;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
