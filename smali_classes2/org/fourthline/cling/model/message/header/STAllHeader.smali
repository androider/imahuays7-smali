.class public Lorg/fourthline/cling/model/message/header/STAllHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "STAllHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader<",
        "Lorg/fourthline/cling/model/types/NotificationSubtype;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 26
    sget-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->ALL:Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/STAllHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/STAllHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 30
    sget-object v0, Lorg/fourthline/cling/model/types/NotificationSubtype;->ALL:Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ST header value (not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/fourthline/cling/model/types/NotificationSubtype;->ALL:Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
