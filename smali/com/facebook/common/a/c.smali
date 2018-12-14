.class public Lcom/facebook/common/a/c;
.super Ljava/lang/Object;
.source "NoOpDiskTrimmableRegistry.java"

# interfaces
.implements Lcom/facebook/common/a/b;


# static fields
.field private static a:Lcom/facebook/common/a/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/common/a/c;
    .locals 2

    const-class v0, Lcom/facebook/common/a/c;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/facebook/common/a/c;->a:Lcom/facebook/common/a/c;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/facebook/common/a/c;

    invoke-direct {v1}, Lcom/facebook/common/a/c;-><init>()V

    sput-object v1, Lcom/facebook/common/a/c;->a:Lcom/facebook/common/a/c;

    .line 24
    :cond_0
    sget-object v1, Lcom/facebook/common/a/c;->a:Lcom/facebook/common/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/facebook/common/a/a;)V
    .locals 0

    return-void
.end method
