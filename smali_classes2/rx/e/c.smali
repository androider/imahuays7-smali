.class public final Lrx/e/c;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Lrx/e/c;


# instance fields
.field private final a:Lrx/d;

.field private final b:Lrx/d;

.field private final c:Lrx/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lrx/e/c;

    invoke-direct {v0}, Lrx/e/c;-><init>()V

    sput-object v0, Lrx/e/c;->d:Lrx/e/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->d()Lrx/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/e;->a()Lrx/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iput-object v0, p0, Lrx/e/c;->a:Lrx/d;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lrx/internal/schedulers/a;

    invoke-direct {v0}, Lrx/internal/schedulers/a;-><init>()V

    iput-object v0, p0, Lrx/e/c;->a:Lrx/d;

    .line 44
    :goto_0
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->d()Lrx/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/e;->b()Lrx/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    iput-object v0, p0, Lrx/e/c;->b:Lrx/d;

    goto :goto_1

    .line 48
    :cond_1
    new-instance v0, Lrx/e/a;

    invoke-direct {v0}, Lrx/e/a;-><init>()V

    iput-object v0, p0, Lrx/e/c;->b:Lrx/d;

    .line 51
    :goto_1
    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->d()Lrx/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/e;->c()Lrx/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    iput-object v0, p0, Lrx/e/c;->c:Lrx/d;

    goto :goto_2

    .line 55
    :cond_2
    invoke-static {}, Lrx/e/b;->c()Lrx/e/b;

    move-result-object v0

    iput-object v0, p0, Lrx/e/c;->c:Lrx/d;

    :goto_2
    return-void
.end method

.method public static a()Lrx/d;
    .locals 1

    .line 101
    sget-object v0, Lrx/e/c;->d:Lrx/e/c;

    iget-object v0, v0, Lrx/e/c;->a:Lrx/d;

    return-object v0
.end method
