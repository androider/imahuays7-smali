.class public Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
.super Ljava/lang/Object;
.source "NormalPlayTimeRange.java"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "npt="


# instance fields
.field private timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

.field private timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

.field private timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 33
    new-instance p1, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-direct {p1, p3, p4}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;-><init>(J)V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 38
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 43
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    .line 44
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->valueOf(Ljava/lang/String;Z)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Z)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    const-string v0, "npt="

    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "npt="

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[-/]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x2

    .line 104
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v1

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    :pswitch_1
    move-object v1, v2

    .line 108
    :goto_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    aget-object v2, v0, v3

    invoke-static {v2}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    move-object v1, v2

    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 112
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p1, :cond_2

    if-eqz p1, :cond_3

    array-length p1, v0

    if-le p1, v3, :cond_3

    .line 113
    :cond_2
    aget-object p0, v0, v4

    invoke-static {p0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    move-result-object p0

    .line 114
    new-instance p1, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;

    invoke-direct {p1, p0, v2, v1}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;-><init>(Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;)V

    return-object p1

    .line 120
    :cond_3
    :goto_2
    new-instance p1, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t parse NormalPlayTimeRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->getString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "npt="

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_2

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "*"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getTimeDuration()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeDuration:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-object v0
.end method

.method public getTimeEnd()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeEnd:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-object v0
.end method

.method public getTimeStart()Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTimeRange;->timeStart:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime;

    return-object v0
.end method
