.class public Lanet/channel/f/e;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lanet/channel/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Lanet/channel/f/b;
    .locals 1

    .line 14
    sget-object v0, Lanet/channel/f/e;->a:Lanet/channel/f/b;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lanet/channel/f/f;

    invoke-direct {v0}, Lanet/channel/f/f;-><init>()V

    sput-object v0, Lanet/channel/f/e;->a:Lanet/channel/f/b;

    .line 27
    :cond_0
    sget-object v0, Lanet/channel/f/e;->a:Lanet/channel/f/b;

    return-object v0
.end method
