.class public Lanet/channel/d/d;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lanet/channel/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lanet/channel/d/b;

    invoke-direct {v0}, Lanet/channel/d/b;-><init>()V

    sput-object v0, Lanet/channel/d/d;->a:Lanet/channel/d/a;

    return-void
.end method

.method public static a()Lanet/channel/d/a;
    .locals 1

    .line 10
    sget-object v0, Lanet/channel/d/d;->a:Lanet/channel/d/a;

    return-object v0
.end method
