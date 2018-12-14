.class final Lanetwork/channel/aidl/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lanetwork/channel/aidl/ParcelableRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .locals 0

    .line 207
    invoke-static {p1}, Lanetwork/channel/aidl/ParcelableRequest;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[Lanetwork/channel/aidl/ParcelableRequest;
    .locals 0

    .line 212
    new-array p1, p1, [Lanetwork/channel/aidl/ParcelableRequest;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/h;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/h;->a(I)[Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object p1

    return-object p1
.end method
