.class public Lorg/seamless/util/Pager;
.super Ljava/lang/Object;
.source "Pager.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private numOfRecords:Ljava/lang/Long;

.field private page:Ljava/lang/Integer;

.field private pageSize:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    const-wide/16 v0, 0xf

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    const-wide/16 v0, 0xf

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    .line 32
    iput-object p1, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    const-wide/16 v0, 0xf

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    .line 36
    iput-object p1, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 37
    iput-object p2, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    const-wide/16 v0, 0xf

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    .line 41
    iput-object p1, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    .line 42
    iput-object p2, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    .line 43
    iput-object p3, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getFirstPage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getIndexRangeBegin()J
    .locals 8

    .line 83
    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getPage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long v0, v0, v2

    .line 84
    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndexRangeEnd()J
    .locals 10

    .line 88
    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getIndexRangeBegin()J

    move-result-wide v0

    .line 89
    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v6, v2, v4

    .line 90
    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v8, v2, v4

    add-long v2, v0, v6

    .line 91
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastPage()J
    .locals 7

    .line 95
    iget-object v0, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    .line 96
    iget-object v2, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide/16 v2, 0x1

    if-nez v6, :cond_0

    sub-long v4, v0, v2

    move-wide v0, v4

    :cond_0
    const/4 v4, 0x0

    add-long v4, v0, v2

    return-wide v4
.end method

.method public getNextPage()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNumOfRecords()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Long;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getPreviousPage()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public isNextPageAvailable()Z
    .locals 6

    .line 105
    iget-object v0, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getIndexRangeEnd()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviousPageAvailable()Z
    .locals 6

    .line 101
    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getIndexRangeBegin()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeveralPages()Z
    .locals 5

    .line 109
    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setNumOfRecords(Ljava/lang/Long;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/seamless/util/Pager;->numOfRecords:Ljava/lang/Long;

    return-void
.end method

.method public setPage(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lorg/seamless/util/Pager;->page:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public setPageSize(Ljava/lang/Long;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lorg/seamless/util/Pager;->pageSize:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pager - Records: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getNumOfRecords()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Page size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/seamless/util/Pager;->getPageSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
