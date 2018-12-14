.class Lanet/channel/g/a$a;
.super Lanet/channel/g/b;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/g/a;

.field private b:Lanet/channel/request/d;

.field private c:Lanet/channel/f;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lanet/channel/g/a;Lanet/channel/request/d;Lanet/channel/f;)V
    .locals 2

    .line 634
    iput-object p1, p0, Lanet/channel/g/a$a;->a:Lanet/channel/g/a;

    invoke-direct {p0}, Lanet/channel/g/b;-><init>()V

    const-wide/16 v0, 0x0

    .line 631
    iput-wide v0, p0, Lanet/channel/g/a$a;->d:J

    .line 632
    iput-wide v0, p0, Lanet/channel/g/a$a;->e:J

    .line 633
    iput-wide v0, p0, Lanet/channel/g/a$a;->f:J

    .line 635
    iput-object p2, p0, Lanet/channel/g/a$a;->b:Lanet/channel/request/d;

    .line 636
    iput-object p3, p0, Lanet/channel/g/a$a;->c:Lanet/channel/f;

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lanet/channel/g/a$a;->d:J

    return-void
.end method
