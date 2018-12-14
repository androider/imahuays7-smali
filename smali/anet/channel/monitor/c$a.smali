.class Lanet/channel/monitor/c$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/monitor/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lanet/channel/monitor/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lanet/channel/monitor/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/monitor/c;-><init>(Lanet/channel/monitor/d;)V

    sput-object v0, Lanet/channel/monitor/c$a;->a:Lanet/channel/monitor/c;

    return-void
.end method
