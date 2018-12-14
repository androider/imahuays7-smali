.class final Lanetwork/channel/aidl/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lanetwork/channel/aidl/DefaultFinishEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultFinishEvent;
    .locals 0

    .line 99
    invoke-static {p1}, Lanetwork/channel/aidl/DefaultFinishEvent;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultFinishEvent;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[Lanetwork/channel/aidl/DefaultFinishEvent;
    .locals 0

    .line 104
    new-array p1, p1, [Lanetwork/channel/aidl/DefaultFinishEvent;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/a;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultFinishEvent;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/a;->a(I)[Lanetwork/channel/aidl/DefaultFinishEvent;

    move-result-object p1

    return-object p1
.end method
