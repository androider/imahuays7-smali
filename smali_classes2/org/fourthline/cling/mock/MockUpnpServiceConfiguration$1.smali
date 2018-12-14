.class Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$1;
.super Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;
.source "MockUpnpServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->createNetworkAddressFactory(I)Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$1;->this$0:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    invoke-direct {p0, p2}, Lorg/fourthline/cling/transport/impl/NetworkAddressFactoryImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isUsableAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z
    .locals 0

    .line 80
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Ljava/net/Inet4Address;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isUsableNetworkInterface(Ljava/net/NetworkInterface;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result p1

    return p1
.end method
