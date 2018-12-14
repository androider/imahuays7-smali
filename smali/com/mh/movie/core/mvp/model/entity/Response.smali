.class public Lcom/mh/movie/core/mvp/model/entity/Response;
.super Lcom/tencent/mm/opensdk/modelbase/BaseResp;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mh/movie/core/mvp/model/entity/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkResult:Z

.field public errCode:I

.field private errStr:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private transaction:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/Response$1;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/Response$1;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/model/entity/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->errCode:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->errStr:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->transaction:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->openId:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->type:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->checkResult:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;-><init>()V

    .line 17
    iget v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->errCode:I

    .line 18
    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->errStr:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->transaction:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->openId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->type:I

    .line 22
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->checkArgs()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->checkResult:Z

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->checkResult:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->type:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->errCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->errStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->transaction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->openId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget p2, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/model/entity/Response;->checkResult:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
