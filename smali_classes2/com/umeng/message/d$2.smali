.class Lcom/umeng/message/d$2;
.super Ljava/lang/Object;
.source "MessageSharedPrefs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/d;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/umeng/message/d;


# direct methods
.method constructor <init>(Lcom/umeng/message/d;Ljava/lang/String;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/umeng/message/d$2;->b:Lcom/umeng/message/d;

    iput-object p2, p0, Lcom/umeng/message/d$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 1125
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "tempkey"

    .line 1126
    iget-object v3, p0, Lcom/umeng/message/d$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Lcom/umeng/message/d$2;->b:Lcom/umeng/message/d;

    invoke-static {v1}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/umeng/message/d$2;->b:Lcom/umeng/message/d;

    invoke-static {v1}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "tempvalue"

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "tempkey=?"

    .line 1133
    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/message/d$2;->a:Ljava/lang/String;

    aput-object v3, v1, v8

    .line 1134
    iget-object v3, p0, Lcom/umeng/message/d$2;->b:Lcom/umeng/message/d;

    invoke-static {v3}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/message/d$2;->b:Lcom/umeng/message/d;

    invoke-static {v4}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v4, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    .line 1140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1137
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 1140
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method
