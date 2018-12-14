.class public Lanet/channel/entity/e;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field b:Lanet/channel/entity/EventType;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lanet/channel/entity/EventType;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lanet/channel/entity/e;->b:Lanet/channel/entity/EventType;

    return-void
.end method

.method public constructor <init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lanet/channel/entity/e;->b:Lanet/channel/entity/EventType;

    .line 13
    iput p2, p0, Lanet/channel/entity/e;->c:I

    .line 14
    iput-object p3, p0, Lanet/channel/entity/e;->d:Ljava/lang/String;

    return-void
.end method
