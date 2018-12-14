.class public abstract Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;
.super Lorg/fourthline/cling/model/message/UpnpMessage;
.source "OutgoingDatagramMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lorg/fourthline/cling/model/message/UpnpOperation;",
        ">",
        "Lorg/fourthline/cling/model/message/UpnpMessage<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private destinationAddress:Ljava/net/InetAddress;

.field private destinationPort:I

.field private headers:Lorg/fourthline/cling/model/message/UpnpHeaders;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/net/InetAddress;",
            "I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V

    .line 30
    new-instance p1, Lorg/fourthline/cling/model/message/UpnpHeaders;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Z)V

    iput-object p1, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 34
    iput-object p2, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    .line 35
    iput p3, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;",
            "Ljava/lang/Object;",
            "Ljava/net/InetAddress;",
            "I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 30
    new-instance p1, Lorg/fourthline/cling/model/message/UpnpHeaders;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Z)V

    iput-object p1, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 40
    iput-object p4, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    .line 41
    iput p5, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    return-void
.end method


# virtual methods
.method public getDestinationAddress()Ljava/net/InetAddress;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationPort()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    return v0
.end method

.method public getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->headers:Lorg/fourthline/cling/model/message/UpnpHeaders;

    return-object v0
.end method
