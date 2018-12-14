.class public Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "DLNAConversionIndicatorAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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

    .line 33
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->valueOf(I)Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_0

    .line 37
    new-instance p2, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t parse DLNA play speed integer from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 39
    :cond_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method
