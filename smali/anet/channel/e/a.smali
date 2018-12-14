.class public Lanet/channel/e/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lanet/channel/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lanet/channel/e/e;

    invoke-direct {v0}, Lanet/channel/e/e;-><init>()V

    sput-object v0, Lanet/channel/e/a;->a:Lanet/channel/e/c;

    return-void
.end method

.method public static a()Lanet/channel/e/c;
    .locals 1

    .line 25
    sget-object v0, Lanet/channel/e/a;->a:Lanet/channel/e/c;

    return-object v0
.end method
