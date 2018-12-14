.class public Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;
.super Ljava/lang/Object;
.source "DatagramIOConfigurationImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/DatagramIOConfiguration;


# instance fields
.field private maxDatagramBytes:I

.field private timeToLive:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 27
    iput v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    const/16 v0, 0x280

    .line 28
    iput v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 27
    iput v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    const/16 v0, 0x280

    .line 28
    iput v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    .line 37
    iput p1, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    .line 38
    iput p2, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    return-void
.end method


# virtual methods
.method public getMaxDatagramBytes()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    return v0
.end method

.method public getTimeToLive()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    return v0
.end method

.method public setMaxDatagramBytes(I)V
    .locals 0

    .line 54
    iput p1, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->maxDatagramBytes:I

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 0

    .line 46
    iput p1, p0, Lorg/fourthline/cling/transport/impl/DatagramIOConfigurationImpl;->timeToLive:I

    return-void
.end method
