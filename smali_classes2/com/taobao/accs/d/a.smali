.class public Lcom/taobao/accs/d/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/d/a$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/taobao/accs/d/a;

.field private static final e:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public a:I

.field b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/taobao/accs/d/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/taobao/accs/d/a;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/taobao/accs/d/a;->a:I

    .line 35
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/taobao/accs/d/a;->b:Ljava/util/LinkedList;

    .line 64
    iput-object p1, p0, Lcom/taobao/accs/d/a;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/accs/d/a;
    .locals 5

    .line 52
    sget-object v0, Lcom/taobao/accs/d/a;->c:Lcom/taobao/accs/d/a;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/taobao/accs/d/a;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/taobao/accs/d/a;->c:Lcom/taobao/accs/d/a;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/taobao/accs/d/a;

    const-string v2, "accs.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/taobao/accs/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/taobao/accs/d/a;->c:Lcom/taobao/accs/d/a;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 59
    :cond_1
    :goto_0
    sget-object p0, Lcom/taobao/accs/d/a;->c:Lcom/taobao/accs/d/a;

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/d/a;->b:Ljava/util/LinkedList;

    new-instance v2, Lcom/taobao/accs/d/a$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/taobao/accs/d/a$a;-><init>(Lcom/taobao/accs/d/a;Ljava/lang/String;[Ljava/lang/Object;Lcom/taobao/accs/d/a$1;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/taobao/accs/d/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_0

    if-eqz p3, :cond_4

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 193
    monitor-exit p0

    return-void

    .line 196
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/taobao/accs/d/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 197
    iget-object p2, p0, Lcom/taobao/accs/d/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/accs/d/a$a;

    .line 202
    iget-object p3, p2, Lcom/taobao/accs/d/a$a;->b:[Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 203
    iget-object p3, p2, Lcom/taobao/accs/d/a$a;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/accs/d/a$a;->b:[Ljava/lang/Object;

    invoke-virtual {p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object p3, p2, Lcom/taobao/accs/d/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    :goto_0
    iget-object p2, p2, Lcom/taobao/accs/d/a$a;->a:Ljava/lang/String;

    const-string p3, "INSERT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 209
    iget p2, p0, Lcom/taobao/accs/d/a;->a:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/taobao/accs/d/a;->a:I

    .line 210
    iget p2, p0, Lcom/taobao/accs/d/a;->a:I

    const/16 v1, 0xfa0

    if-le p2, v1, :cond_1

    const-string p2, "DBHelper"

    const-string v1, "db is full!"

    .line 211
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0, p1, v0, p3}, Lcom/taobao/accs/d/a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 213
    iput v0, p0, Lcom/taobao/accs/d/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "DBHelper"

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 187
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 14

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/accs/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 128
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    const-string v4, "traffic"

    const/4 v5, 0x7

    .line 119
    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v5, v2

    const-string v6, "date"

    const/4 v12, 0x1

    aput-object v6, v5, v12

    const-string v6, "host"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "serviceid"

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-string v6, "bid"

    const/4 v9, 0x4

    aput-object v6, v5, v9

    const/4 v6, 0x5

    const-string v10, "isbackground"

    aput-object v10, v5, v6

    const/4 v6, 0x6

    const-string v10, "size"

    aput-object v10, v5, v6

    const-string v6, "date=? AND host=? AND bid=? AND isbackground=?"

    new-array v9, v9, [Ljava/lang/String;

    aput-object p4, v9, v2

    aput-object p1, v9, v12

    aput-object p2, v9, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object v7, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v13

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 121
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v1, :cond_2

    if-eqz v3, :cond_1

    .line 128
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    monitor-exit p0

    return v12

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_1
    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v1

    :goto_2
    move-object v1, v0

    :try_start_5
    const-string v4, "DBHelper"

    .line 125
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    goto :goto_0

    .line 132
    :cond_3
    :goto_3
    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    goto :goto_1

    :goto_4
    if-eqz v3, :cond_4

    .line 128
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :cond_4
    :goto_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 112
    :goto_6
    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public a(Z)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;",
            ">;"
        }
    .end annotation

    .line 139
    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 144
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_0

    .line 179
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    return-object v2

    :cond_0
    const/16 v5, 0x64

    const/4 v6, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-eqz p1, :cond_1

    :try_start_3
    const-string v7, "traffic"

    .line 149
    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v6, v3

    const-string v8, "date"

    aput-object v8, v6, v9

    const-string v8, "host"

    aput-object v8, v6, v10

    const-string v8, "serviceid"

    aput-object v8, v6, v11

    const-string v8, "bid"

    aput-object v8, v6, v12

    const-string v8, "isbackground"

    aput-object v8, v6, v14

    const-string v8, "size"

    aput-object v8, v6, v13

    const-string v8, "date=?"

    new-array v10, v9, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/taobao/accs/utl/b;->a(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object v5, v7

    move-object v7, v8

    move-object v8, v10

    const/4 v10, 0x1

    move-object v9, v11

    const/4 v2, 0x2

    const/4 v11, 0x1

    move-object v10, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    move-object/from16 v11, v17

    const/4 v14, 0x1

    move-object/from16 v12, v18

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    :try_start_4
    const-string v7, "traffic"

    .line 152
    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v6, v3

    const-string v8, "date"

    aput-object v8, v6, v14

    const-string v8, "host"

    aput-object v8, v6, v2

    const-string v8, "serviceid"

    aput-object v8, v6, v13

    const-string v8, "bid"

    const/4 v12, 0x4

    aput-object v8, v6, v12

    const-string v8, "isbackground"

    const/4 v9, 0x5

    aput-object v8, v6, v9

    const-string v8, "size"

    const/4 v9, 0x6

    aput-object v8, v6, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v15

    const/4 v3, 0x4

    move-object/from16 v12, v16

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    if-nez v4, :cond_3

    if-eqz v4, :cond_2

    .line 179
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v4, 0x0

    return-object v4

    .line 159
    :cond_3
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 162
    :goto_1
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 163
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    .line 166
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    const/4 v9, 0x6

    .line 167
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    if-eqz v7, :cond_4

    const-wide/16 v15, 0x0

    cmp-long v12, v10, v15

    if-lez v12, :cond_4

    .line 169
    new-instance v12, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    move-object/from16 v19, v12

    move-object/from16 v21, v7

    move-object/from16 v22, v6

    move-object/from16 v24, v5

    move-wide/from16 v25, v10

    invoke-direct/range {v19 .. v26}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v12, "DBHelper"

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resotre traffics from db bid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v12, v2, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    const/4 v3, 0x4

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 179
    :goto_3
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v2

    :goto_4
    move-object v1, v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v4, v2

    :goto_5
    move-object v2, v0

    :goto_6
    :try_start_8
    const-string v3, "DBHelper"

    .line 176
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_7

    goto :goto_3

    .line 182
    :cond_7
    :goto_7
    :try_start_9
    monitor-exit p0

    return-object v1

    :catchall_3
    move-exception v0

    goto :goto_4

    :goto_8
    if-eqz v4, :cond_8

    .line 179
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 183
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method

.method public a()V
    .locals 3

    const-string v0, "DELETE FROM traffic"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 135
    invoke-direct {p0, v0, v1, v2}, Lcom/taobao/accs/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V
    .locals 8

    .line 105
    invoke-direct {p0, p1, p3, p4, p7}, Lcom/taobao/accs/d/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    const-string v0, "INSERT INTO traffic VALUES(null,?,?,?,?,?,?)"

    const/4 v7, 0x6

    .line 106
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p7, v7, v5

    aput-object p1, v7, v6

    aput-object p2, v7, v4

    aput-object p3, v7, v3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-direct {p0, v0, v7, v6}, Lcom/taobao/accs/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    const-string p2, "UPDATE traffic SET size=? WHERE date=? AND host=? AND bid=? AND isbackground=?"

    .line 108
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, v0, v5

    aput-object p7, v0, v6

    aput-object p1, v0, v4

    aput-object p3, v0, v3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-direct {p0, p2, v0, v6}, Lcom/taobao/accs/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    :goto_0
    return-void
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const v1, 0x19000

    invoke-static {v0, v1}, Lcom/taobao/accs/utl/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 78
    :try_start_0
    sget-object v0, Lcom/taobao/accs/d/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CREATE TABLE IF NOT EXISTS traffic(_id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, host TEXT,serviceid TEXT, bid TEXT, isbackground TEXT, size TEXT)"

    .line 80
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    sget-object p1, Lcom/taobao/accs/d/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/taobao/accs/d/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-ge p2, p3, :cond_0

    const-string p2, "DROP TABLE IF EXISTS service"

    .line 90
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS network"

    .line 91
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS ping"

    .line 92
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS msg"

    .line 93
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS ack"

    .line 94
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS election"

    .line 95
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS bindApp"

    .line 96
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS bindUser"

    .line 97
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS traffic"

    .line 98
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/taobao/accs/d/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
