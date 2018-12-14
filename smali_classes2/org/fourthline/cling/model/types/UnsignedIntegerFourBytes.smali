.class public final Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
.super Lorg/fourthline/cling/model/types/UnsignedVariableInteger;
.source "UnsignedIntegerFourBytes.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBits()Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
    .locals 1

    .line 32
    sget-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->THIRTYTWO:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    return-object v0
.end method
