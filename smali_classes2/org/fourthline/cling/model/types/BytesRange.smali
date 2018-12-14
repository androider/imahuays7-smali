.class public Lorg/fourthline/cling/model/types/BytesRange;
.super Ljava/lang/Object;
.source "BytesRange.java"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "bytes="


# instance fields
.field private byteLength:Ljava/lang/Long;

.field private firstByte:Ljava/lang/Long;

.field private lastByte:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    .line 31
    iput-object p2, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    .line 37
    iput-object p2, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    .line 38
    iput-object p3, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0}, Lorg/fourthline/cling/model/types/BytesRange;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/model/types/BytesRange;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "bytes="

    .line 102
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "bytes="

    .line 104
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[-/]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v0, 0x2

    .line 107
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p1, v0

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_2
    :pswitch_1
    move-object v0, v1

    :goto_2
    const/4 v2, 0x1

    .line 111
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    goto :goto_3

    :pswitch_2
    move-object v0, v1

    move-object v2, v0

    :goto_3
    const/4 v3, 0x0

    .line 115
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    .line 119
    :cond_5
    new-instance p0, Lorg/fourthline/cling/model/types/BytesRange;

    invoke-direct {p0, v1, v2, v0}, Lorg/fourthline/cling/model/types/BytesRange;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p0

    .line 125
    :cond_6
    :goto_4
    new-instance p1, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t parse Bytes Range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getByteLength()Ljava/lang/Long;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getFirstByte()Ljava/lang/Long;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastByte()Ljava/lang/Long;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/model/types/BytesRange;->getString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/model/types/BytesRange;->getString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "bytes="

    .line 85
    :goto_0
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/fourthline/cling/model/types/BytesRange;->firstByte:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/fourthline/cling/model/types/BytesRange;->lastByte:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p1, :cond_4

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/fourthline/cling/model/types/BytesRange;->byteLength:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, "*"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    return-object p2
.end method
