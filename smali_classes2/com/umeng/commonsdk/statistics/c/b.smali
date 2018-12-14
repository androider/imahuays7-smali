.class public Lcom/umeng/commonsdk/statistics/c/b;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/c/b$a;
    }
.end annotation


# static fields
.field private static h:Landroid/content/Context;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x36ee80

    .line 20
    iput v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->d:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->f:J

    .line 28
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->g:J

    .line 40
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/c/b;->j()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/c/b$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/c/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/c/b;
    .locals 1

    .line 48
    sget-object v0, Lcom/umeng/commonsdk/statistics/c/b;->h:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/statistics/c/b;->h:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const-string p0, "inside StatTracer. please check context. context must not be null!"

    .line 52
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/a/d;->d(Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/c/b$a;->a:Lcom/umeng/commonsdk/statistics/c/b;

    return-object p0
.end method

.method private j()V
    .locals 6

    .line 59
    sget-object v0, Lcom/umeng/commonsdk/statistics/c/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/c/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "successful_request"

    const/4 v2, 0x0

    .line 61
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/c/b;->a:I

    const-string v1, "failed_requests "

    .line 62
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/c/b;->b:I

    const-string v1, "last_request_spent_ms"

    .line 64
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/c/b;->e:I

    const-string v1, "last_request_time"

    const-wide/16 v2, 0x0

    .line 65
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/umeng/commonsdk/statistics/c/b;->c:J

    const-string v1, "last_req"

    .line 67
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->f:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 82
    iget v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->a:I

    if-eqz p1, :cond_0

    .line 84
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->f:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->c:J

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 5

    .line 76
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    .line 89
    iget v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->b:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/c/b;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->f:J

    return-void
.end method

.method public d()V
    .locals 6

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/c/b;->f:J

    sub-long v4, v0, v2

    long-to-int v0, v4

    iput v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->e:I

    return-void
.end method

.method public e()V
    .locals 4

    .line 104
    sget-object v0, Lcom/umeng/commonsdk/statistics/c/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/c/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lcom/umeng/commonsdk/statistics/c/b;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lcom/umeng/commonsdk/statistics/c/b;->b:I

    .line 107
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lcom/umeng/commonsdk/statistics/c/b;->e:I

    .line 108
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/c/b;->f:J

    .line 109
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/c/b;->c:J

    .line 110
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/c/b;->f:J

    return-wide v0
.end method

.method public g()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/c/b;->c()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/c/b;->d()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/c/b;->b()V

    return-void
.end method
