.class Lcom/raizlabs/android/dbflow/structure/b/k$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FlowSQLiteOpenHelper.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/structure/b/k;

.field private b:Lcom/raizlabs/android/dbflow/structure/b/a;

.field private final c:Lcom/raizlabs/android/dbflow/structure/b/c;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/k;Landroid/content/Context;Ljava/lang/String;ILcom/raizlabs/android/dbflow/config/b;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->a:Lcom/raizlabs/android/dbflow/structure/b/k;

    const/4 p1, 0x0

    .line 112
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 113
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-direct {p1, p5}, Lcom/raizlabs/android/dbflow/structure/b/c;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Lcom/raizlabs/android/dbflow/structure/b/i;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/b/k$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/structure/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/c;->a(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/c;->b(Lcom/raizlabs/android/dbflow/structure/b/i;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/c;->b(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/c;->a(Lcom/raizlabs/android/dbflow/structure/b/i;II)V

    return-void
.end method
