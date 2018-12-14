.class public Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
.super Lorg/fourthline/cling/model/message/UpnpMessage;
.source "IncomingDatagramMessage.java"


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
.field private localAddress:Ljava/net/InetAddress;

.field private sourceAddress:Ljava/net/InetAddress;

.field private sourcePort:I


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
            "TO;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpMessage;)V

    .line 52
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getSourceAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->sourceAddress:Ljava/net/InetAddress;

    .line 53
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getSourcePort()I

    move-result v0

    iput v0, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->sourcePort:I

    .line 54
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->localAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/net/InetAddress;",
            "I",
            "Ljava/net/InetAddress;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V

    .line 45
    iput-object p2, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->sourceAddress:Ljava/net/InetAddress;

    .line 46
    iput p3, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->sourcePort:I

    .line 47
    iput-object p4, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->localAddress:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSourceAddress()Ljava/net/InetAddress;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->sourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSourcePort()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->sourcePort:I

    return v0
.end method
