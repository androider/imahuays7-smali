.class public Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "DLNAProfileAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;
        }
    .end annotation

    .line 31
    invoke-static {p1, p2}, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;

    move-result-object p2

    if-nez p2, :cond_0

    .line 33
    new-instance p2, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t parse DLNA profile from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 35
    :cond_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method
