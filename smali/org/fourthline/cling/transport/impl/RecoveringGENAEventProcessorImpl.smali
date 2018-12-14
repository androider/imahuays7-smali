.class public Lorg/fourthline/cling/transport/impl/RecoveringGENAEventProcessorImpl;
.super Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;
.source "RecoveringGENAEventProcessorImpl.java"


# annotations
.annotation runtime Ljavax/enterprise/inject/Alternative;
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/RecoveringGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected fixXMLEncodedLastChange(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<LastChange>(.*)</LastChange>"

    const/16 v1, 0x20

    .line 91
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 96
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lorg/seamless/xml/XmlPullParserUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 107
    invoke-static {v0}, Lorg/fourthline/cling/model/XMLUtil;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 116
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?><e:propertyset xmlns:e=\"urn:schemas-upnp-org:event-1-0\"><e:property><LastChange>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</LastChange>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</e:property>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</e:propertyset>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p1
.end method

.method public readBody(Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-super {p0, p1}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->readBody(Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->isBodyNonEmptyString()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    throw v0

    .line 64
    :cond_0
    sget-object v1, Lorg/fourthline/cling/transport/impl/RecoveringGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to recover from invalid GENA XML event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getStateVariableValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/RecoveringGENAEventProcessorImpl;->getMessageBody(Lorg/fourthline/cling/model/message/UpnpMessage;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lorg/seamless/xml/XmlPullParserUtils;->fixXMLEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/transport/impl/RecoveringGENAEventProcessorImpl;->fixXMLEncodedLastChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->setBody(Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->readBody(Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_1
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    :catch_1
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getStateVariableValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    throw v0

    .line 85
    :cond_1
    sget-object p1, Lorg/fourthline/cling/transport/impl/RecoveringGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v0, "Partial read of GENA event properties (probably due to truncated XML)"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
