.class public Lcom/umeng/commonsdk/proguard/a;
.super Ljava/lang/Object;
.source "AliUMIDManager.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 73
    sget-object p0, Lcom/umeng/commonsdk/proguard/a;->a:Ljava/lang/Object;

    monitor-enter p0

    .line 74
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/proguard/a;->b:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
