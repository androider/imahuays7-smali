.class public Lcom/mh/movie/core/mvp/model/entity/MHDanmu;
.super Ljava/lang/Object;
.source "MHDanmu.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/MHDanmu;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/MHDanmu;->time:J

    return-wide v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/MHDanmu;->msg:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/MHDanmu;->time:J

    return-void
.end method
