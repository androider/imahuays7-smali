.class public Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;
.super Ljava/lang/Object;
.source "DownloadTVData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private tvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private videoInfoId:J

.field private videoPreviewUrl:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData$1;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData$1;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->tvList:Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->id:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoInfoId:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->type:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoPreviewUrl:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoTitle:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->tvList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->tvList:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->id:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoInfoId:J

    .line 24
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->type:I

    .line 25
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoPreviewUrl:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoTitle:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->tvList:Ljava/util/List;

    new-instance v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-direct {v1, p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;-><init>(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTvList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->tvList:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->type:I

    return v0
.end method

.method public getVideoInfoId()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoInfoId:J

    return-wide v0
.end method

.method public getVideoPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoPreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->id:Ljava/lang/String;

    return-void
.end method

.method public setTvList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->tvList:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->type:I

    return-void
.end method

.method public setVideoInfoId(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoInfoId:J

    return-void
.end method

.method public setVideoPreviewUrl(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoPreviewUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoTitle:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 87
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoInfoId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoPreviewUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->videoTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->tvList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
