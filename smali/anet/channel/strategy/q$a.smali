.class public Lanet/channel/strategy/q$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lanet/channel/strategy/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lanet/channel/strategy/q;

    invoke-direct {v0}, Lanet/channel/strategy/q;-><init>()V

    sput-object v0, Lanet/channel/strategy/q$a;->a:Lanet/channel/strategy/q;

    return-void
.end method
