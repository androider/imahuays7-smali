.class public Lorg/fourthline/cling/model/message/UpnpHeaders;
.super Lorg/seamless/http/Headers;
.source "UpnpHeaders.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected parsedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/seamless/http/Headers;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/seamless/http/Headers;-><init>(Ljava/io/ByteArrayInputStream;)V

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

    .line 44
    invoke-direct {p0, p1}, Lorg/seamless/http/Headers;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/seamless/http/Headers;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 108
    invoke-super {p0, p1, p2}, Lorg/seamless/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lorg/seamless/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->addParsedValue(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    :cond_0
    return-void
.end method

.method protected addParsedValue(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 3

    .line 89
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding parsed header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 94
    iget-object v1, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 120
    invoke-super {p0}, Lorg/seamless/http/Headers;->clear()V

    return-void
.end method

.method public containsKey(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
            ")",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getAsArray(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 148
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

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

.method public getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 1

    .line 153
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getAsArray(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getAsArray(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">(",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
            "Ljava/lang/Class<",
            "TH;>;)TH;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getAsArray(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object p1

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 162
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 163
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

.method public getFirstHeaderString(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Ljava/lang/String;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public log()V
    .locals 6

    .line 176
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v1, "############################ RAW HEADERS ###########################"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->entrySet()Ljava/util/Set;

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

    .line 179
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== NAME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 180
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

    check-cast v2, Ljava/lang/String;

    .line 181
    sget-object v3, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALUE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 185
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v1, "########################## PARSED HEADERS ##########################"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== TYPE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 189
    sget-object v3, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HEADER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_3
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v1, "####################################################################"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected parseHeaders()V
    .locals 7

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 58
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing all HTTP headers for known UPnP headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

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

    invoke-static {v2}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    move-result-object v2

    if-nez v2, :cond_3

    .line 66
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring non-UPNP HTTP header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    invoke-static {v2, v3}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->newInstance(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/String;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 73
    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {p0, v2, v4}, Lorg/fourthline/cling/model/message/UpnpHeaders;->addParsedValue(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    goto :goto_1

    .line 74
    :cond_6
    :goto_2
    sget-object v4, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    sget-object v4, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring known but irrelevant header (value violates the UDA specification?) \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

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

    .line 101
    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 102
    invoke-super {p0, p1, p2}, Lorg/seamless/http/Headers;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->remove(Ljava/lang/Object;)Ljava/util/List;

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

    .line 113
    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 114
    invoke-super {p0, p1}, Lorg/seamless/http/Headers;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)V
    .locals 1

    .line 140
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/seamless/http/Headers;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 141
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
