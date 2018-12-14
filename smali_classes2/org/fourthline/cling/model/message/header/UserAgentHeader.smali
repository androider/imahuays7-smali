.class public Lorg/fourthline/cling/model/message/header/UserAgentHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "UserAgentHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/UserAgentHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/UserAgentHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/UserAgentHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method
