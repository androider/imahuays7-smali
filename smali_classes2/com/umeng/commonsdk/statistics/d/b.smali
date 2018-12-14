.class public Lcom/umeng/commonsdk/statistics/d/b;
.super Ljava/lang/Object;
.source "Defcon.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/c/g;


# static fields
.field private static b:Lcom/umeng/commonsdk/statistics/d/b;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/umeng/commonsdk/statistics/d/b;->a:I

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/d/b;
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/statistics/d/b;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/d/b;->b:Lcom/umeng/commonsdk/statistics/d/b;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/umeng/commonsdk/statistics/d/b;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/d/b;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/statistics/d/b;->b:Lcom/umeng/commonsdk/statistics/d/b;

    const-string v1, "defcon"

    const-string v2, "0"

    .line 38
    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    sget-object v1, Lcom/umeng/commonsdk/statistics/d/b;->b:Lcom/umeng/commonsdk/statistics/d/b;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/umeng/commonsdk/statistics/d/b;->a(I)V

    .line 41
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/d/b;->b:Lcom/umeng/commonsdk/statistics/d/b;
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
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 72
    iput p1, p0, Lcom/umeng/commonsdk/statistics/d/b;->a:I

    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/commonsdk/statistics/b/b$a;)V
    .locals 2

    const-string v0, "defcon"

    const/4 v1, 0x0

    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/d/b;->a(I)V

    return-void
.end method
