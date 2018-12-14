.class public Lanetwork/channel/entity/BodyHandlerEntry;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/BodyEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/entity/BodyHandlerEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lanetwork/channel/aidl/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lanetwork/channel/entity/b;

    invoke-direct {v0}, Lanetwork/channel/entity/b;-><init>()V

    sput-object v0, Lanetwork/channel/entity/BodyHandlerEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/d;

    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/entity/b;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    :try_start_0
    sget-object v0, Lanet/channel/c/b$a;->a:Lanet/channel/c/b;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lanet/channel/c/b;->a(I)Lanet/channel/c/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-object v3, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/d;

    invoke-interface {v3}, Lanetwork/channel/aidl/d;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    iget-object v3, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/d;

    invoke-virtual {v0}, Lanet/channel/c/a;->a()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lanetwork/channel/aidl/d;->a([B)I

    move-result v3

    .line 42
    invoke-virtual {v0}, Lanet/channel/c/a;->a()[B

    move-result-object v4

    invoke-virtual {p1, v4, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lanet/channel/c/a;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RemoteException"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lanetwork/channel/entity/BodyHandlerEntry;->a:Lanetwork/channel/aidl/d;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method
