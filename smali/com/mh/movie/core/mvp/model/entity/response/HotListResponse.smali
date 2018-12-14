.class public Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;
.super Ljava/lang/Object;
.source "HotListResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entry:I

.field private id:I

.field private keyword:Ljava/lang/String;

.field private orderNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse$1;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse$1;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->id:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->orderNum:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->keyword:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->entry:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEntry()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->entry:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->id:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->orderNum:I

    return v0
.end method

.method public setEntry(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->entry:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->id:I

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setOrderNum(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->orderNum:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->orderNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->keyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;->entry:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
