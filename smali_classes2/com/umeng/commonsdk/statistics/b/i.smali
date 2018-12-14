.class public Lcom/umeng/commonsdk/statistics/b/i;
.super Lcom/umeng/commonsdk/statistics/b/c;
.source "MacTracker.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mac"

    .line 17
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/b/c;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/b/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/a/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/a;->c:Z

    if-eqz v1, :cond_0

    .line 28
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/b/i;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/t;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
