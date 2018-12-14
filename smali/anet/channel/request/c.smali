.class public Lanet/channel/request/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/b;


# static fields
.field public static final a:Lanet/channel/request/c;


# instance fields
.field private final b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lanet/channel/request/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lanet/channel/request/c;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V

    sput-object v0, Lanet/channel/request/c;->a:Lanet/channel/request/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lanet/channel/request/c;->b:Ljava/util/concurrent/Future;

    .line 19
    iput-object p2, p0, Lanet/channel/request/c;->c:Ljava/lang/String;

    return-void
.end method
