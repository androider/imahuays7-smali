.class public final Lcom/umeng/commonsdk/statistics/a/h;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/a/h$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/commonsdk/statistics/a/h;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/umeng/commonsdk/statistics/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/umeng/commonsdk/statistics/a/h$a;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/a/h$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/a/h;->d:Lcom/umeng/commonsdk/statistics/a/h$a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/a/h;
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/statistics/a/h;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/statistics/a/h;->b:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/statistics/a/h;->c:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/umeng/commonsdk/statistics/a/h;->a:Lcom/umeng/commonsdk/statistics/a/h;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/umeng/commonsdk/statistics/a/h;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/a/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/a/h;->a:Lcom/umeng/commonsdk/statistics/a/h;

    .line 42
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/a/h;->a:Lcom/umeng/commonsdk/statistics/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 77
    sget-object v0, Lcom/umeng/commonsdk/statistics/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/e;->c(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
