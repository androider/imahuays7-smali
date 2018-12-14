.class public Lanet/channel/c/b$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Lanet/channel/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lanet/channel/c/b;

    invoke-direct {v0}, Lanet/channel/c/b;-><init>()V

    sput-object v0, Lanet/channel/c/b$a;->a:Lanet/channel/c/b;

    return-void
.end method
