.class Lcom/umeng/commonsdk/statistics/f$1;
.super Ljava/lang/Object;
.source "NetWorkManager.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/statistics/f;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/statistics/f;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/statistics/f;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/f$1;->a:Lcom/umeng/commonsdk/statistics/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/statistics/b/b$a;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/f$1;->a:Lcom/umeng/commonsdk/statistics/f;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/f;->a(Lcom/umeng/commonsdk/statistics/f;)Lcom/umeng/commonsdk/statistics/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/d/a;->a(Lcom/umeng/commonsdk/statistics/b/b$a;)V

    .line 107
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/f$1;->a:Lcom/umeng/commonsdk/statistics/f;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/f;->b(Lcom/umeng/commonsdk/statistics/f;)Lcom/umeng/commonsdk/statistics/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/d/b;->a(Lcom/umeng/commonsdk/statistics/b/b$a;)V

    .line 108
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/f$1;->a:Lcom/umeng/commonsdk/statistics/f;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/f;->c(Lcom/umeng/commonsdk/statistics/f;)Lcom/umeng/commonsdk/statistics/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/d/c;->a(Lcom/umeng/commonsdk/statistics/b/b$a;)V

    .line 111
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f$1;->a:Lcom/umeng/commonsdk/statistics/f;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/f$1;->a:Lcom/umeng/commonsdk/statistics/f;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/f;->d(Lcom/umeng/commonsdk/statistics/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "track_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/umeng/commonsdk/statistics/f;->a:Ljava/lang/String;

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/f$1;->a:Lcom/umeng/commonsdk/statistics/f;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/f;->d(Lcom/umeng/commonsdk/statistics/f;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "umtt"

    invoke-static {p1, v0, v2}, Lcom/umeng/commonsdk/framework/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "com.umeng.commonsdk.internal.utils.c"

    .line 131
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "updateUMTT"

    const/4 v2, 0x2

    .line 133
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 134
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/f$1;->a:Lcom/umeng/commonsdk/statistics/f;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/f;->d(Lcom/umeng/commonsdk/statistics/f;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
