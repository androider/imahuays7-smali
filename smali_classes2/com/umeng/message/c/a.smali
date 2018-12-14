.class public Lcom/umeng/message/c/a;
.super Ljava/lang/Object;
.source "TagManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.umeng.message.c.a"

.field private static b:Lcom/umeng/message/c/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Lcom/umeng/message/a/b/a;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/message/c/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/message/c/a;
    .locals 6

    const-class v0, Lcom/umeng/message/c/a;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/umeng/message/c/a;->b:Lcom/umeng/message/c/a;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/umeng/message/c/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/message/c/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/message/c/a;->b:Lcom/umeng/message/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "com.umeng.message.a.a.a.a"

    .line 81
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    .line 82
    new-array v3, v2, [Ljava/lang/Class;

    .line 83
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 86
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/message/a/b/a;

    sput-object p0, Lcom/umeng/message/c/a;->d:Lcom/umeng/message/a/b/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    :try_start_2
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 94
    :cond_0
    :goto_0
    sget-object p0, Lcom/umeng/message/c/a;->b:Lcom/umeng/message/c/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0

    throw p0
.end method
