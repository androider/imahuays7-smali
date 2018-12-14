.class public Lanet/channel/entity/d;
.super Lanet/channel/entity/e;
.source "Taobao"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p3, p4}, Lanet/channel/entity/e;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    .line 8
    iput-boolean p2, p0, Lanet/channel/entity/d;->a:Z

    return-void
.end method
