.class public Lanet/channel/h;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Lanet/channel/e;

.field public final e:Lanet/channel/e/b;

.field public final f:Lanet/channel/c;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZLanet/channel/e;Lanet/channel/e/b;Lanet/channel/c;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lanet/channel/h;->a:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lanet/channel/h;->c:Z

    .line 30
    iput-object p4, p0, Lanet/channel/h;->d:Lanet/channel/e;

    .line 31
    iput-boolean p2, p0, Lanet/channel/h;->b:Z

    .line 32
    iput-object p5, p0, Lanet/channel/h;->e:Lanet/channel/e/b;

    .line 33
    iput-object p6, p0, Lanet/channel/h;->f:Lanet/channel/c;

    return-void
.end method

.method public static a(Ljava/lang/String;ZZLanet/channel/e;Lanet/channel/e/b;Lanet/channel/c;)Lanet/channel/h;
    .locals 8

    .line 24
    new-instance v7, Lanet/channel/h;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lanet/channel/h;-><init>(Ljava/lang/String;ZZLanet/channel/e;Lanet/channel/e/b;Lanet/channel/c;)V

    return-object v7
.end method
