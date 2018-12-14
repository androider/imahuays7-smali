.class Lcom/umeng/message/d$1;
.super Ljava/lang/Object;
.source "MessageSharedPrefs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/d;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/message/d;


# direct methods
.method constructor <init>(Lcom/umeng/message/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    iput-object p2, p0, Lcom/umeng/message/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/message/d$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v7, "tempkey=?"

    const/4 v1, 0x1

    .line 1079
    new-array v8, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/d$1;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v8, v3

    .line 1080
    iget-object v2, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    invoke-static {v2}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    invoke-static {v4}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v4, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    new-array v5, v1, [Ljava/lang/String;

    const-string v1, "tempvalue"

    aput-object v1, v5, v3

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1082
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "tempkey"

    .line 1083
    iget-object v3, p0, Lcom/umeng/message/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tempvalue"

    .line 1084
    iget-object v3, p0, Lcom/umeng/message/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v2, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    invoke-static {v2}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    invoke-static {v3}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 1087
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "tempvalue"

    .line 1091
    iget-object v3, p0, Lcom/umeng/message/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v2, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    invoke-static {v2}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    invoke-static {v3}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1095
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "tempkey"

    .line 1096
    iget-object v3, p0, Lcom/umeng/message/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tempvalue"

    .line 1097
    iget-object v3, p0, Lcom/umeng/message/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v2, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    invoke-static {v2}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/d$1;->c:Lcom/umeng/message/d;

    invoke-static {v3}, Lcom/umeng/message/d;->a(Lcom/umeng/message/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_1
    if-eqz v0, :cond_3

    .line 1103
    :try_start_2
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 1107
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method
