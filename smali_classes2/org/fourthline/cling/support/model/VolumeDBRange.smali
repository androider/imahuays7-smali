.class public Lorg/fourthline/cling/support/model/VolumeDBRange;
.super Ljava/lang/Object;
.source "VolumeDBRange.java"


# instance fields
.field private maxValue:Ljava/lang/Integer;

.field private minValue:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/fourthline/cling/support/model/VolumeDBRange;->minValue:Ljava/lang/Integer;

    .line 28
    iput-object p2, p0, Lorg/fourthline/cling/support/model/VolumeDBRange;->maxValue:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getMaxValue()Ljava/lang/Integer;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fourthline/cling/support/model/VolumeDBRange;->maxValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinValue()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fourthline/cling/support/model/VolumeDBRange;->minValue:Ljava/lang/Integer;

    return-object v0
.end method
