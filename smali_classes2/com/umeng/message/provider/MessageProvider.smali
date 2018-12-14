.class public Lcom/umeng/message/provider/MessageProvider;
.super Landroid/content/ContentProvider;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/provider/MessageProvider$b;,
        Lcom/umeng/message/provider/MessageProvider$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MessageProvider"

.field private static final b:Landroid/content/UriMatcher;

.field private static g:Landroid/content/Context;


# instance fields
.field private c:Lcom/umeng/message/provider/MessageProvider$a;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Lcom/umeng/message/provider/MessageProvider$b;

.field private f:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 81
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    new-instance v0, Lcom/umeng/message/provider/MessageProvider$a;

    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/provider/MessageProvider$a;-><init>(Lcom/umeng/message/provider/MessageProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->c:Lcom/umeng/message/provider/MessageProvider$a;

    .line 83
    new-instance v0, Lcom/umeng/message/provider/MessageProvider$b;

    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/provider/MessageProvider$b;-><init>(Lcom/umeng/message/provider/MessageProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->e:Lcom/umeng/message/provider/MessageProvider$b;

    .line 84
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->c:Lcom/umeng/message/provider/MessageProvider$a;

    invoke-virtual {v0}, Lcom/umeng/message/provider/MessageProvider$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->e:Lcom/umeng/message/provider/MessageProvider$b;

    invoke-virtual {v0}, Lcom/umeng/message/provider/MessageProvider$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 357
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v2, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 364
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 368
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 369
    sget-object v4, Lcom/umeng/message/provider/MessageProvider;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifychange endTransaction..uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 361
    iget-object v2, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 364
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 367
    :cond_2
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 368
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 369
    sget-object v4, Lcom/umeng/message/provider/MessageProvider;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifychange endTransaction..uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    :cond_3
    throw v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 271
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "InAppLogStore"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogIdTypeStoreForAgoo"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 303
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogStoreForAgoo"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 298
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogIdTypeStore"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 293
    :pswitch_5
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogStore"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 288
    :pswitch_6
    iget-object p2, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "MsgAlias"

    invoke-virtual {p2, p3, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 283
    :pswitch_7
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgAlias"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 278
    :pswitch_8
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgTemp"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :goto_0
    :pswitch_9
    const/4 p2, 0x0

    .line 316
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 153
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string p1, "vnd.android.cursor.dir/vnd.umeng.message"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 170
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 254
    :pswitch_1
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "InAppLogStore"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 256
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->k:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 246
    :pswitch_2
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MsgConfigInfo"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 248
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->j:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 238
    :pswitch_3
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MsgLogIdTypeStoreForAgoo"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 240
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->i:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 229
    :pswitch_4
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MsgLogStoreForAgoo"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 231
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->h:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 220
    :pswitch_5
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MsgLogIdTypeStore"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 222
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->g:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 209
    :pswitch_6
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MsgLogStore"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 212
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->f:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 213
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    .line 185
    :pswitch_7
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MsgAlias"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 188
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 190
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    .line 197
    :pswitch_8
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MsgTemp"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 200
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->b:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    .line 173
    :pswitch_9
    iget-object p1, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MessageStore"

    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 176
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->b:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    :cond_0
    :goto_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .line 63
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/umeng/message/provider/MessageProvider;->b()V

    .line 65
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MessageStores"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgTemps"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgAlias"

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgAliasDeleteAll"

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgLogStores"

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgLogIdTypeStores"

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgLogStoreForAgoos"

    const/4 v4, 0x7

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgLogIdTypeStoreForAgoos"

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgConfigInfos"

    const/16 v4, 0x9

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "InAppLogStores"

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 102
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 138
    :pswitch_1
    iget-object v1, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "InAppLogStore"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto/16 :goto_1

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgConfigInfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto/16 :goto_1

    .line 129
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogIdTypeStoreForAgoo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_1

    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogStoreForAgoo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_1

    .line 119
    :pswitch_5
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogStore"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_1

    .line 114
    :pswitch_6
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgAlias"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_1

    .line 109
    :pswitch_7
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgTemp"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_1

    :goto_0
    :pswitch_8
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .line 323
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 345
    :pswitch_0
    iget-object v1, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "InAppLogStore"

    const/4 v6, 0x5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    .line 341
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgConfigInfo"

    const/4 v5, 0x5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    .line 336
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgAlias"

    const/4 v5, 0x5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 331
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgTemp"

    const/4 v5, 0x5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    .line 326
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MessageStore"

    const/4 v5, 0x5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p2

    .line 349
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
