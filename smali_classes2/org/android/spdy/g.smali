.class public Lorg/android/spdy/g;
.super Ljava/lang/Object;
.source "SpdyDataProvider.java"


# instance fields
.field a:[B

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/android/spdy/g;->c:Z

    .line 22
    iput-object p1, p0, Lorg/android/spdy/g;->a:[B

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/android/spdy/g;->b:Ljava/util/Map;

    return-void
.end method
