.class final Lanetwork/channel/entity/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lanetwork/channel/entity/InputStreamEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lanetwork/channel/entity/InputStreamEntry;
    .locals 2

    .line 64
    new-instance v0, Lanetwork/channel/entity/InputStreamEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/entity/InputStreamEntry;-><init>(Lanetwork/channel/entity/c;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lanetwork/channel/entity/InputStreamEntry$a;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/f;

    move-result-object p1

    invoke-static {v0, p1}, Lanetwork/channel/entity/InputStreamEntry;->a(Lanetwork/channel/entity/InputStreamEntry;Lanetwork/channel/aidl/f;)Lanetwork/channel/aidl/f;

    return-object v0
.end method

.method public a(I)[Lanetwork/channel/entity/InputStreamEntry;
    .locals 0

    .line 71
    new-array p1, p1, [Lanetwork/channel/entity/InputStreamEntry;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lanetwork/channel/entity/c;->a(Landroid/os/Parcel;)Lanetwork/channel/entity/InputStreamEntry;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lanetwork/channel/entity/c;->a(I)[Lanetwork/channel/entity/InputStreamEntry;

    move-result-object p1

    return-object p1
.end method
