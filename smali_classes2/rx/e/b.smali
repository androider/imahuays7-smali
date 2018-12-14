.class public final Lrx/e/b;
.super Lrx/d;
.source "NewThreadScheduler.java"


# static fields
.field private static final a:Lrx/internal/util/RxThreadFactory;

.field private static final b:Lrx/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/e/b;->a:Lrx/internal/util/RxThreadFactory;

    .line 29
    new-instance v0, Lrx/e/b;

    invoke-direct {v0}, Lrx/e/b;-><init>()V

    sput-object v0, Lrx/e/b;->b:Lrx/e/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lrx/d;-><init>()V

    return-void
.end method

.method static c()Lrx/e/b;
    .locals 1

    .line 32
    sget-object v0, Lrx/e/b;->b:Lrx/e/b;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    .line 41
    new-instance v0, Lrx/internal/schedulers/b;

    sget-object v1, Lrx/e/b;->a:Lrx/internal/util/RxThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
