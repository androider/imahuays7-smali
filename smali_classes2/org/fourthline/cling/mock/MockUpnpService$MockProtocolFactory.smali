.class public Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;
.super Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/mock/MockUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockProtocolFactory"
.end annotation


# instance fields
.field private sendsAlive:Z


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Z)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;-><init>(Lorg/fourthline/cling/UpnpService;)V

    .line 125
    iput-boolean p2, p0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->sendsAlive:Z

    return-void
.end method

.method static synthetic access$000(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->sendsAlive:Z

    return p0
.end method


# virtual methods
.method public createSendingNotificationAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;
    .locals 2

    .line 130
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$1;

    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$1;-><init>(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingSearch(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)Lorg/fourthline/cling/protocol/async/SendingSearch;
    .locals 2

    .line 140
    new-instance v0, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$2;

    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory$2;-><init>(Lorg/fourthline/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    return-object v0
.end method
