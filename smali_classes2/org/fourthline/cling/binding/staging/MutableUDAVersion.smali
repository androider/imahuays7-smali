.class public Lorg/fourthline/cling/binding/staging/MutableUDAVersion;
.super Ljava/lang/Object;
.source "MutableUDAVersion.java"


# instance fields
.field public major:I

.field public minor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->major:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->minor:I

    return-void
.end method
