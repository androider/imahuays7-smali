.class Lanet/channel/strategy/m$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lanet/channel/strategy/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lanet/channel/strategy/m;

    invoke-direct {v0}, Lanet/channel/strategy/m;-><init>()V

    sput-object v0, Lanet/channel/strategy/m$a;->a:Lanet/channel/strategy/m;

    return-void
.end method
