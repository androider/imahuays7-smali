.class public Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "TransferModeHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader<",
        "Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 31
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->Interactive:Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->toString()Ljava/lang/String;

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

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-static {p1}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 46
    :catch_0
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TransferMode header value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
