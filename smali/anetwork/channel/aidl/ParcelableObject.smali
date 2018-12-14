.class public Lanetwork/channel/aidl/ParcelableObject;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/aidl/ParcelableObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lanetwork/channel/aidl/g;

    invoke-direct {v0}, Lanetwork/channel/aidl/g;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ParcelableObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/ParcelableObject;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableObject;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableObject;
    .locals 0

    .line 31
    new-instance p1, Lanetwork/channel/aidl/ParcelableObject;

    invoke-direct {p1}, Lanetwork/channel/aidl/ParcelableObject;-><init>()V

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
