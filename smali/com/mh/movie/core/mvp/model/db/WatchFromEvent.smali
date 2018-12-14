.class public Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;
.super Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;
.source "WatchFromEvent.java"


# static fields
.field public static FROM_CACHE:I = 0xb

.field public static FROM_CATRTOON:I = 0x11

.field public static FROM_CHOICE:I = 0xe

.field public static FROM_COLLECT:I = 0xa

.field public static FROM_HISTORY:I = 0xc

.field public static FROM_MOVIE_BANNER:I = 0x2

.field public static FROM_MOVIE_INFO:I = 0x5

.field public static FROM_MOVIE_SORT:I = 0x9

.field public static FROM_OTHER:I = 0x10

.field public static FROM_RECOMMEND_BANNER:I = 0x1

.field public static FROM_RECOMMEND_INFO:I = 0x4

.field public static FROM_SEARCH:I = 0x7

.field public static FROM_SHOULD_LIKE:I = 0xd

.field public static FROM_TV_BANNER:I = 0x3

.field public static FROM_TV_INFO:I = 0x6

.field public static FROM_TV_SORT:I = 0x8

.field public static FROM_VIP:I = 0xf


# instance fields
.field classifyType:Ljava/lang/String;

.field from:I

.field stayTime:J

.field videoPX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    return-void
.end method

.method public static getWatchFrom(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 35
    sget p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_RECOMMEND_INFO:I

    return p0

    .line 33
    :pswitch_0
    sget p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_TV_INFO:I

    return p0

    .line 31
    :pswitch_1
    sget p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_MOVIE_INFO:I

    return p0

    .line 29
    :pswitch_2
    sget p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_RECOMMEND_INFO:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public buildFrom()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClassifyType()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->classifyType:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->from:I

    return v0
.end method

.method public getStayTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->stayTime:J

    return-wide v0
.end method

.method public getVideoPX()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->videoPX:Ljava/lang/String;

    return-object v0
.end method

.method public setClassifyType(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->classifyType:Ljava/lang/String;

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->from:I

    return-void
.end method

.method public setStayTime(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->stayTime:J

    return-void
.end method

.method public setVideoPX(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->videoPX:Ljava/lang/String;

    return-void
.end method
