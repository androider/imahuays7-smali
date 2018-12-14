.class public Lorg/fourthline/cling/model/message/header/UDAServiceTypeHeader;
.super Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;
.source "UDAServiceTypeHeader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDAServiceType;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;-><init>(Lorg/fourthline/cling/model/types/ServiceType;)V

    return-void
.end method


# virtual methods
.method public setString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 41
    :try_start_0
    invoke-static {p1}, Lorg/fourthline/cling/model/types/UDAServiceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDAServiceType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/UDAServiceTypeHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UDA service type header value, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
