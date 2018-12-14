.class public Lanet/channel/request/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/b;


# static fields
.field public static final a:Lanet/channel/request/e;


# instance fields
.field private final b:I

.field private final c:Lorg/android/spdy/SpdySession;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lanet/channel/request/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lanet/channel/request/e;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/request/e;->a:Lanet/channel/request/e;

    return-void
.end method

.method public constructor <init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lanet/channel/request/e;->c:Lorg/android/spdy/SpdySession;

    .line 21
    iput p2, p0, Lanet/channel/request/e;->b:I

    .line 22
    iput-object p3, p0, Lanet/channel/request/e;->d:Ljava/lang/String;

    return-void
.end method
