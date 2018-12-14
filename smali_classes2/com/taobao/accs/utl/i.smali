.class public Lcom/taobao/accs/utl/i;
.super Ljava/io/ByteArrayOutputStream;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(B)Lcom/taobao/accs/utl/i;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/i;->write(I)V

    return-object p0
.end method

.method public a(S)Lcom/taobao/accs/utl/i;
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    .line 21
    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/i;->write(I)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/i;->write(I)V

    return-object p0
.end method
