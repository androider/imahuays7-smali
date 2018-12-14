.class public Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;
.super Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;
.source "PullGENAEventProcessorImpl.java"


# annotations
.annotation runtime Ljavax/enterprise/inject/Alternative;
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/fourthline/cling/transport/impl/GENAEventProcessorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public readBody(Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/UnsupportedDataException;
        }
    .end annotation

    .line 49
    sget-object v0, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading body of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "===================================== GENA BODY BEGIN ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "-===================================== GENA BODY END ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->getMessageBody(Lorg/fourthline/cling/model/message/UpnpMessage;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :try_start_0
    invoke-static {v0}, Lorg/seamless/xml/XmlPullParserUtils;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 59
    invoke-virtual {p0, v1, p1}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->readProperties(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    new-instance v1, Lorg/fourthline/cling/model/UnsupportedDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t transform message payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/fourthline/cling/model/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method protected readProperties(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getService()Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "property"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->readProperty(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected readProperty(Lorg/xmlpull/v1/XmlPullParser;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;[Lorg/fourthline/cling/model/meta/StateVariable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 85
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p3, v3

    .line 86
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    sget-object v2, Lorg/fourthline/cling/transport/impl/PullGENAEventProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading state variable value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getStateVariableValues()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/fourthline/cling/model/state/StateVariableValue;

    invoke-direct {v3, v4, v1}, Lorg/fourthline/cling/model/state/StateVariableValue;-><init>(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "property"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    return-void
.end method
