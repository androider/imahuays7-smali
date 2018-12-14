.class public Lcom/mh/movie/core/mvp/model/entity/DownloadTV;
.super Ljava/lang/Object;
.source "DownloadTV.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addTime:J

.field private downloadSize:J

.field private downloadState:I

.field private initTitle:Ljava/lang/String;

.field private isFinish:Z

.field private localUrl:Ljava/lang/String;

.field private period:Ljava/lang/String;

.field private quality:Ljava/lang/String;

.field private sortNum:I

.field private totalSize:J

.field private videoDuration:I

.field private videoId:J

.field private videoUrl:Ljava/lang/String;

.field private watchSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV$1;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV$1;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoId:J

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoUrl:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoDuration:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->initTitle:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->sortNum:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->totalSize:J

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadSize:J

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->localUrl:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->isFinish:Z

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadState:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->watchSize:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->addTime:J

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->quality:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->period:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoId:J

    .line 26
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoDuration()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoDuration:I

    .line 28
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getSortNum()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->sortNum:I

    .line 29
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getTotalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->totalSize:J

    .line 30
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDownloadSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadSize:J

    .line 31
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->localUrl:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->isFinish()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->isFinish:Z

    .line 33
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadState:I

    .line 34
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getWatchSize()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->watchSize:I

    .line 35
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getAddTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->addTime:J

    .line 36
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->quality:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getPeriod()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->period:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddTime()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->addTime:J

    return-wide v0
.end method

.method public getDownloadSize()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadSize:J

    return-wide v0
.end method

.method public getDownloadState()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadState:I

    return v0
.end method

.method public getInitTitle()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->initTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->localUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getSortNum()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->sortNum:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->totalSize:J

    return-wide v0
.end method

.method public getVideoDuration()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoDuration:I

    return v0
.end method

.method public getVideoId()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoId:J

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchSize()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->watchSize:I

    return v0
.end method

.method public getWatchSizePercent()F
    .locals 2

    .line 41
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->watchSize:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isFinish()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->isFinish:Z

    return v0
.end method

.method public setAddTime(J)V
    .locals 0

    .line 137
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->addTime:J

    return-void
.end method

.method public setDownloadSize(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadSize:J

    return-void
.end method

.method public setDownloadState(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadState:I

    return-void
.end method

.method public setFinish(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->isFinish:Z

    return-void
.end method

.method public setInitTitle(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->initTitle:Ljava/lang/String;

    return-void
.end method

.method public setLocalUrl(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->localUrl:Ljava/lang/String;

    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->period:Ljava/lang/String;

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->quality:Ljava/lang/String;

    return-void
.end method

.method public setSortNum(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->sortNum:I

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->totalSize:J

    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoDuration:I

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoId:J

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setWatchSize(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->watchSize:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->videoDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->initTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->sortNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->totalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->localUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->isFinish:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->downloadState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->watchSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->addTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->quality:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->period:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
