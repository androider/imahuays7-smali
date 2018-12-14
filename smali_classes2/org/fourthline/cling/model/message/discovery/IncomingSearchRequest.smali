.class public Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;
.super Lorg/fourthline/cling/model/message/IncomingDatagramMessage;
.source "IncomingSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
        "Lorg/fourthline/cling/model/message/UpnpRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage<",
            "Lorg/fourthline/cling/model/message/UpnpRequest;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    return-void
.end method


# virtual methods
.method public getMX()Ljava/lang/Integer;
    .locals 3

    .line 39
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/MXHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/MXHeader;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/MXHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchTarget()Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 2

    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    return-object v0
.end method

.method public isMANSSDPDiscover()Z
    .locals 3

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/discovery/IncomingSearchRequest;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/MANHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/MANHeader;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/MANHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/fourthline/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
