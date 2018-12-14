.class public abstract Lorg/fourthline/cling/model/types/UnsignedVariableInteger;
.super Ljava/lang/Object;
.source "UnsignedVariableInteger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->setValue(J)Lorg/fourthline/cling/model/types/UnsignedVariableInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid negative integer value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', assuming value 0!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string p1, "0"

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->setValue(J)Lorg/fourthline/cling/model/types/UnsignedVariableInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;

    .line 103
    iget-wide v2, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    iget-wide v4, p1, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public abstract getBits()Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
.end method

.method public getMinValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 110
    iget-wide v0, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    iget-wide v2, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long v4, v0, v2

    long-to-int v0, v4

    return v0
.end method

.method public increment(Z)Lorg/fourthline/cling/model/types/UnsignedVariableInteger;
    .locals 7

    .line 88
    iget-wide v0, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getBits()Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->getMaxValue()J

    move-result-wide v0

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 89
    :goto_0
    iput-wide v2, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    goto :goto_1

    .line 91
    :cond_1
    iget-wide v0, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    :goto_1
    return-object p0
.end method

.method public isInRange(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getMinValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getBits()Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->getMaxValue()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 77
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value must be between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getMinValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->getBits()Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->getMaxValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setValue(J)Lorg/fourthline/cling/model/types/UnsignedVariableInteger;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->isInRange(J)V

    .line 67
    iput-wide p1, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
