.class public Lcom/raizlabs/android/dbflow/structure/b/b;
.super Lcom/raizlabs/android/dbflow/structure/b/d;
.source "AndroidDatabaseStatement.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteStatement;

.field private final b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/b/d;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    .line 27
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/b;
    .locals 1
    .param p0    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/b;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/b;-><init>(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x0

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 39
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    int-to-long v1, v0

    goto :goto_3

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT changes() AS affected_row_count"

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 46
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "affected_row_count"

    .line 47
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 53
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catch_0
    move-object v3, v0

    :catch_1
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    return-wide v1
.end method

.method public a(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-void
.end method

.method public c()J
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method
