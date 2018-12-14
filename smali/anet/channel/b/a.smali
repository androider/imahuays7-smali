.class public Lanet/channel/b/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lanet/channel/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lanet/channel/b/c;

    invoke-direct {v0}, Lanet/channel/b/c;-><init>()V

    sput-object v0, Lanet/channel/b/a;->a:Lanet/channel/b/b;

    return-void
.end method

.method public static a()Lanet/channel/b/b;
    .locals 1

    .line 14
    sget-object v0, Lanet/channel/b/a;->a:Lanet/channel/b/b;

    return-object v0
.end method
