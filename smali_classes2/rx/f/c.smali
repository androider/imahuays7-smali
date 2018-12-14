.class public final Lrx/f/c;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/f/c$a;
    }
.end annotation


# static fields
.field private static final a:Lrx/f/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Lrx/f/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/f/c$a;-><init>(Lrx/f/c$1;)V

    sput-object v0, Lrx/f/c;->a:Lrx/f/c$a;

    return-void
.end method

.method public static a()Lrx/f;
    .locals 1

    .line 62
    sget-object v0, Lrx/f/c;->a:Lrx/f/c$a;

    return-object v0
.end method

.method public static a(Lrx/b/a;)Lrx/f;
    .locals 0

    .line 73
    invoke-static {p0}, Lrx/f/a;->a(Lrx/b/a;)Lrx/f/a;

    move-result-object p0

    return-object p0
.end method
