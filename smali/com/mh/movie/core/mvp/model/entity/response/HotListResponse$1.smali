.class final Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse$1;
.super Ljava/lang/Object;
.source "HotListResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;
    .locals 1

    .line 78
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;
    .locals 0

    .line 83
    new-array p1, p1, [Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse$1;->a(Landroid/os/Parcel;)Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse$1;->a(I)[Lcom/mh/movie/core/mvp/model/entity/response/HotListResponse;

    move-result-object p1

    return-object p1
.end method
