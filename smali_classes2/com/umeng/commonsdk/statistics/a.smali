.class public Lcom/umeng/commonsdk/statistics/a;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# static fields
.field public static a:Z = true

.field public static b:[Ljava/lang/String; = null

.field public static final c:Z

.field private static d:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/commonsdk/statistics/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/statistics/c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->b:[Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/a/i;->a:Z

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/a;->c:Z

    return-void
.end method

.method public static declared-synchronized a()I
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/statistics/a;

    monitor-enter v0

    .line 61
    :try_start_0
    sget v1, Lcom/umeng/commonsdk/statistics/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(I)V
    .locals 0

    .line 53
    sput p0, Lcom/umeng/commonsdk/statistics/a;->d:I

    return-void
.end method
