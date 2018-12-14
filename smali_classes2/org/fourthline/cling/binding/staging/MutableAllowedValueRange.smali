.class public Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;
.super Ljava/lang/Object;
.source "MutableAllowedValueRange.java"


# instance fields
.field public maximum:Ljava/lang/Long;

.field public minimum:Ljava/lang/Long;

.field public step:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->minimum:Ljava/lang/Long;

    const-wide v0, 0x7fffffffffffffffL

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->maximum:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;->step:Ljava/lang/Long;

    return-void
.end method
