.class public Lorg/fourthline/cling/protocol/async/SendingSearch;
.super Lorg/fourthline/cling/protocol/SendingAsync;
.source "SendingSearch.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final mxSeconds:I

.field private final searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/fourthline/cling/protocol/async/SendingSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;)V
    .locals 1

    .line 48
    new-instance v0, Lorg/fourthline/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/STAllHeader;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/async/SendingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 1

    .line 55
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/protocol/async/SendingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lorg/fourthline/cling/protocol/SendingAsync;-><init>(Lorg/fourthline/cling/UpnpService;)V

    .line 64
    sget-object p1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->isValidHeaderType(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Given search target instance is not a valid header class for type ST: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_0
    iput-object p2, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 70
    iput p3, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->mxSeconds:I

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/transport/RouterException;
        }
    .end annotation

    .line 83
    sget-object v0, Lorg/fourthline/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing search for target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with MX seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getMxSeconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;

    iget-object v1, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getMxSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;-><init>(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    .line 86
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->prepareOutgoingSearchRequest(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;)V

    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getBulkRepeat()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;)V

    .line 94
    sget-object v2, Lorg/fourthline/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleeping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getBulkIntervalMilliseconds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/async/SendingSearch;->getBulkIntervalMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getBulkIntervalMilliseconds()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public getBulkRepeat()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getMxSeconds()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->mxSeconds:I

    return v0
.end method

.method public getSearchTarget()Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/fourthline/cling/protocol/async/SendingSearch;->searchTarget:Lorg/fourthline/cling/model/message/header/UpnpHeader;

    return-object v0
.end method

.method protected prepareOutgoingSearchRequest(Lorg/fourthline/cling/model/message/discovery/OutgoingSearchRequest;)V
    .locals 0

    return-void
.end method
