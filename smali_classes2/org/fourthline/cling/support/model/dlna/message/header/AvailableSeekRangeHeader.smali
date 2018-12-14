.class public Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "AvailableSeekRangeHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader<",
        "Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    .line 88
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getModeFlag()Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getNormalPlayTimeRange()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->getString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;->getBytesRange()Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/fourthline/cling/model/types/BytesRange;->getString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public setString(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 47
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODE_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    .line 55
    :try_start_1
    aget-object v5, v0, v2

    invoke-static {v5, v2}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->valueOf(Ljava/lang/String;Z)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object v5
    :try_end_1
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    :try_start_2
    aget-object v2, v0, v2

    invoke-static {v2}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v2
    :try_end_2
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v4

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 65
    :try_start_3
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 67
    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object v0

    .line 68
    new-instance v2, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    invoke-direct {v2, v1, v5, v0}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;Lorg/fourthline/cling/model/types/BytesRange;)V

    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    invoke-direct {v0, v1, v5}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 74
    :cond_1
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;-><init>(Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;Lorg/fourthline/cling/model/types/BytesRange;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 61
    :catch_1
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    const-string v1, "Invalid AvailableSeekRange Range"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    .line 49
    :catch_3
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    const-string v1, "Invalid AvailableSeekRange Mode"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_3 .. :try_end_3} :catch_2

    .line 78
    :goto_2
    new-instance v1, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid AvailableSeekRange header value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/InvalidValueException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_2
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AvailableSeekRange header value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
