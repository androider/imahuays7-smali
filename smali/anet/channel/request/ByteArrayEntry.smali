.class public Lanet/channel/request/ByteArrayEntry;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/BodyEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanet/channel/request/ByteArrayEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lanet/channel/request/a;

    invoke-direct {v0}, Lanet/channel/request/a;-><init>()V

    sput-object v0, Lanet/channel/request/ByteArrayEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->b:I

    .line 17
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->c:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lanet/channel/request/ByteArrayEntry;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/request/a;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lanet/channel/request/ByteArrayEntry;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 21
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lanet/channel/request/ByteArrayEntry;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->b:I

    .line 17
    iput v0, p0, Lanet/channel/request/ByteArrayEntry;->c:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lanet/channel/request/ByteArrayEntry;->d:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lanet/channel/request/ByteArrayEntry;->a:[B

    .line 26
    iput p2, p0, Lanet/channel/request/ByteArrayEntry;->b:I

    .line 27
    iput p3, p0, Lanet/channel/request/ByteArrayEntry;->c:I

    return-void
.end method

.method static synthetic a(Lanet/channel/request/ByteArrayEntry;I)I
    .locals 0

    .line 13
    iput p1, p0, Lanet/channel/request/ByteArrayEntry;->b:I

    return p1
.end method

.method static synthetic a(Lanet/channel/request/ByteArrayEntry;)[B
    .locals 0

    .line 13
    iget-object p0, p0, Lanet/channel/request/ByteArrayEntry;->a:[B

    return-object p0
.end method

.method static synthetic a(Lanet/channel/request/ByteArrayEntry;[B)[B
    .locals 0

    .line 13
    iput-object p1, p0, Lanet/channel/request/ByteArrayEntry;->a:[B

    return-object p1
.end method

.method static synthetic b(Lanet/channel/request/ByteArrayEntry;I)I
    .locals 0

    .line 13
    iput p1, p0, Lanet/channel/request/ByteArrayEntry;->c:I

    return p1
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lanet/channel/request/ByteArrayEntry;->a:[B

    iget v1, p0, Lanet/channel/request/ByteArrayEntry;->b:I

    iget v2, p0, Lanet/channel/request/ByteArrayEntry;->c:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 44
    iget p1, p0, Lanet/channel/request/ByteArrayEntry;->c:I

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lanet/channel/request/ByteArrayEntry;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 54
    iget-object p2, p0, Lanet/channel/request/ByteArrayEntry;->a:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object p2, p0, Lanet/channel/request/ByteArrayEntry;->a:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 56
    iget p2, p0, Lanet/channel/request/ByteArrayEntry;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget p2, p0, Lanet/channel/request/ByteArrayEntry;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
