.class Lanet/channel/strategy/a/c$b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static a:Lanet/channel/strategy/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lanet/channel/strategy/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/strategy/a/c;-><init>(Lanet/channel/strategy/a/c$1;)V

    sput-object v0, Lanet/channel/strategy/a/c$b;->a:Lanet/channel/strategy/a/c;

    return-void
.end method
