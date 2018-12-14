.class public Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;
.super Lorg/fourthline/cling/model/message/UpnpHeaders;
.source "DLNAHeaders.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected parsedDLNAHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    .line 100
    invoke-super {p0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public add(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->addParsedValue(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    :cond_0
    return-void
.end method

.method protected addParsedValue(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 3

    .line 82
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Adding parsed header: {0}"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 86
    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    .line 112
    invoke-super {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->clear()V

    return-void
.end method

.method public containsKey(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parseHeaders()V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
            ")",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parseHeaders()V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getAsArray(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parseHeaders()V

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    .line 140
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/message/header/UpnpHeader;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/message/header/UpnpHeader;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Lorg/fourthline/cling/model/message/header/UpnpHeader;

    :goto_0
    return-object p1
.end method

.method public getFirstHeader(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 1

    .line 145
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->getAsArray(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->getAsArray(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFirstHeader(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">(",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
            "Ljava/lang/Class<",
            "TH;>;)TH;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->getAsArray(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object p1

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 154
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public log()V
    .locals 6

    .line 164
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-super {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->log()V

    .line 166
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    const-string v1, "########################## PARSED DLNA HEADERS ##########################"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 169
    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "=== TYPE: {0}"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 171
    sget-object v3, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "HEADER: {0}"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    const-string v1, "####################################################################"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected parseHeaders()V
    .locals 10

    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 58
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    .line 59
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Parsing all HTTP headers for known UPnP headers: {0}"

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    move-result-object v2

    if-nez v2, :cond_3

    .line 66
    sget-object v2, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Ignoring non-UPNP HTTP header: {0}"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    invoke-static {v2, v3}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;->newInstance(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 72
    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {p0, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->addParsedValue(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    goto :goto_1

    .line 73
    :cond_5
    :goto_2
    sget-object v4, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Ignoring known but non-parsable header (value violates the UDA specification?) \'{0}\': {1}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    .line 94
    invoke-super {p0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    .line 106
    invoke-super {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 133
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/DLNAHeaders;->parsedDLNAHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
