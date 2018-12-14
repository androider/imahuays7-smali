.class public abstract Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;
.super Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;
.source "OutgoingNotificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/OutgoingDatagramMessage<",
        "Lorg/fourthline/cling/model/message/UpnpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private type:Lorg/fourthline/cling/model/types/NotificationSubtype;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/Location;Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/types/NotificationSubtype;)V
    .locals 3

    .line 40
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;)V

    const-string v1, "239.255.255.250"

    .line 42
    invoke-static {v1}, Lorg/fourthline/cling/model/ModelUtil;->getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/16 v2, 0x76c

    .line 40
    invoke-direct {p0, v0, v1, v2}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V

    .line 46
    iput-object p3, p0, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;->type:Lorg/fourthline/cling/model/types/NotificationSubtype;

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 49
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p2

    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/fourthline/cling/model/message/header/LocationHeader;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/Location;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/fourthline/cling/model/message/header/LocationHeader;-><init>(Ljava/net/URL;)V

    invoke-virtual {p2, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/ServerHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 52
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/HostHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/HostHeader;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 53
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object p1

    sget-object p2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/fourthline/cling/model/message/header/NTSHeader;

    invoke-direct {v0, p3}, Lorg/fourthline/cling/model/message/header/NTSHeader;-><init>(Lorg/fourthline/cling/model/types/NotificationSubtype;)V

    invoke-virtual {p1, p2, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method


# virtual methods
.method public getType()Lorg/fourthline/cling/model/types/NotificationSubtype;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/model/message/discovery/OutgoingNotificationRequest;->type:Lorg/fourthline/cling/model/types/NotificationSubtype;

    return-object v0
.end method
