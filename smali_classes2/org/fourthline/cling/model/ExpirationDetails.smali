.class public Lorg/fourthline/cling/model/ExpirationDetails;
.super Ljava/lang/Object;
.source "ExpirationDetails.java"


# static fields
.field public static final UNLIMITED_AGE:I = 0x0

.field private static simpleName:Ljava/lang/String; = "ExpirationDetails"


# instance fields
.field private lastRefreshTimestampSeconds:J

.field private maxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 28
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    .line 28
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    .line 34
    iput p1, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    return-void
.end method


# virtual methods
.method protected getCurrentTimestampSeconds()J
    .locals 4

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastRefreshTimestampSeconds()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    return-wide v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    return v0
.end method

.method public getSecondsUntilExpiration()J
    .locals 6

    .line 69
    iget v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    if-nez v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    iget v2, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    sub-long v2, v4, v0

    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method public hasExpired()Z
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v0

    return v0
.end method

.method public hasExpired(Z)Z
    .locals 8

    .line 63
    iget v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    iget v0, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    div-int/2addr v0, p1

    int-to-long v4, v0

    add-long v6, v2, v4

    .line 64
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v2

    cmp-long p1, v6, v2

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public setLastRefreshTimestampSeconds(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lorg/fourthline/cling/model/ExpirationDetails;->lastRefreshTimestampSeconds:J

    return-void
.end method

.method public stampLastRefresh()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ExpirationDetails;->getCurrentTimestampSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/model/ExpirationDetails;->setLastRefreshTimestampSeconds(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/fourthline/cling/model/ExpirationDetails;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MAX AGE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/fourthline/cling/model/ExpirationDetails;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
