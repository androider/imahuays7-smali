.class public Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;
.super Ljava/lang/Object;
.source "DatagramProcessorImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/DatagramProcessor;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 50
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "===================================== DATAGRAM BEGIN ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "-===================================== DATAGRAM END ============================================="

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 56
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    invoke-static {v3}, Lorg/seamless/http/Headers;->readLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    aget-object v2, v0, v1

    const-string v4, "HTTP/1."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 60
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v6, v0, v4

    aget-object v7, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->readResponseMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;ILjava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    move-result-object p1

    return-object p1

    .line 62
    :cond_1
    aget-object v5, v0, v1

    aget-object v6, v0, v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->readRequestMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    new-instance v0, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v0
.end method

.method protected readRequestMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {v0, p3}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 132
    new-instance p3, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-static {p4}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;)V

    .line 133
    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p5, p4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "HTTP/1.1"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    invoke-virtual {p3, p4}, Lorg/fourthline/cling/model/message/UpnpRequest;->setHttpMinorVersion(I)V

    .line 134
    new-instance p4, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p5

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result p2

    invoke-direct {p4, p3, p5, p2, p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 136
    invoke-virtual {p4, v0}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    return-object p4
.end method

.method protected readResponseMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;ILjava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-direct {v0, p3}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 153
    new-instance p3, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-direct {p3, p4, p5}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    .line 154
    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p6, p4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "HTTP/1.1"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    invoke-virtual {p3, p4}, Lorg/fourthline/cling/model/message/UpnpResponse;->setHttpMinorVersion(I)V

    .line 155
    new-instance p4, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p5

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result p2

    invoke-direct {p4, p3, p5, p2, p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 157
    invoke-virtual {p4, v0}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    return-object p4
.end method

.method public write(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)Ljava/net/DatagramPacket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v1

    .line 76
    instance-of v2, v1, Lorg/fourthline/cling/model/message/UpnpRequest;

    if-eqz v2, :cond_0

    .line 78
    move-object v2, v1

    check-cast v2, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 79
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HTTP/1."

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpOperation;->getHttpMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_0
    instance-of v2, v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    if-eqz v2, :cond_2

    .line 83
    move-object v2, v1

    check-cast v2, Lorg/fourthline/cling/model/message/UpnpResponse;

    const-string v3, "HTTP/1."

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpOperation;->getHttpMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing message data for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "---------------------------------------------------------------------------------"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "---------------------------------------------------------------------------------"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 109
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 111
    sget-object v2, Lorg/fourthline/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing new datagram packet with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getDestinationAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->getDestinationPort()I

    move-result p1

    invoke-direct {v2, v0, v3, v4, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 115
    new-instance v0, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert message content to US-ASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v0

    .line 88
    :cond_2
    new-instance v0, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message operation is not request or response, don\'t know how to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
