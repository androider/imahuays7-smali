.class public final Lcom/mh/movie/core/mvp/model/db/TableTask_Table;
.super Lcom/raizlabs/android/dbflow/structure/e;
.source "TableTask_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/e<",
        "Lcom/mh/movie/core/mvp/model/db/TableTask;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field public static final authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final compleStatus:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final descrition:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final money:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final title:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    const-string v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 29
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    const-string v2, "title"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->title:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 31
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    const-string v2, "money"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->money:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    const-string v2, "descrition"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->descrition:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    const-string v2, "authId"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 37
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    const-string v2, "compleStatus"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->compleStatus:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v0, 0x6

    .line 39
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->title:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->money:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->descrition:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->compleStatus:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method


# virtual methods
.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableTask;)V
    .locals 2

    .line 126
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->id:I

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableTask;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableTask;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 105
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->id:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x2

    .line 106
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->title:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 107
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->money:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x4

    .line 108
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->descrition:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 109
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->authId:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 p3, p3, 0x6

    .line 110
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->compleStatus:I

    int-to-long v0, p2

    invoke-interface {p1, p3, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableTask;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/TableTask;)V
    .locals 2

    const-string v0, "`id`"

    .line 95
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`title`"

    .line 96
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`money`"

    .line 97
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->money:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`descrition`"

    .line 98
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->descrition:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`authId`"

    .line 99
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->authId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`compleStatus`"

    .line 100
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->compleStatus:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/TableTask;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableTask;)V
    .locals 3

    .line 115
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->id:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 116
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->title:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    .line 117
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->money:I

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 118
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->descrition:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    .line 119
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->authId:I

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 120
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->compleStatus:I

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 121
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->id:I

    int-to-long v0, p2

    const/4 p2, 0x7

    invoke-interface {p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableTask;)V

    return-void
.end method

.method public final exists(Lcom/mh/movie/core/mvp/model/db/TableTask;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 3

    const/4 v0, 0x0

    .line 161
    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/p;->b([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/model/db/TableTask;

    .line 162
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 163
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TableTask;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/s;->d(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 23
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->exists(Lcom/mh/movie/core/mvp/model/db/TableTask;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 1

    .line 90
    sget-object v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-object v0
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `TableTask`(`id`,`title`,`money`,`descrition`,`authId`,`compleStatus`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `TableTask`(`id` INTEGER, `title` TEXT, `money` INTEGER, `descrition` TEXT, `authId` INTEGER, `compleStatus` INTEGER, PRIMARY KEY(`id`))"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `TableTask` WHERE `id`=?"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/mh/movie/core/mvp/model/db/TableTask;",
            ">;"
        }
    .end annotation

    .line 47
    const-class v0, Lcom/mh/movie/core/mvp/model/db/TableTask;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TableTask;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 2

    .line 169
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/n;->h()Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    iget p1, p1, Lcom/mh/movie/core/mvp/model/db/TableTask;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/n;->a(Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/n;

    return-object v0
.end method

.method public bridge synthetic getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 0

    .line 23
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TableTask;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .locals 1

    .line 62
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "`descrition`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "`compleStatus`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "`id`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "`authId`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "`title`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "`money`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :pswitch_0
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->compleStatus:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 77
    :pswitch_1
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 74
    :pswitch_2
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->descrition:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 71
    :pswitch_3
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->money:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 68
    :pswitch_4
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->title:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 65
    :pswitch_5
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6959d000 -> :sswitch_5
        -0x5db99e98 -> :sswitch_4
        -0x3218ac83 -> :sswitch_3
        0x2d3a45 -> :sswitch_2
        0x639bc66 -> :sswitch_1
        0x7c06fbe4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "`TableTask`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `TableTask` SET `id`=?,`title`=?,`money`=?,`descrition`=?,`authId`=?,`compleStatus`=? WHERE `id`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/TableTask;)V
    .locals 1

    const-string v0, "id"

    .line 151
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->id:I

    const-string v0, "title"

    .line 152
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->title:Ljava/lang/String;

    const-string v0, "money"

    .line 153
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->money:I

    const-string v0, "descrition"

    .line 154
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->descrition:Ljava/lang/String;

    const-string v0, "authId"

    .line 155
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->authId:I

    const-string v0, "compleStatus"

    .line 156
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/mh/movie/core/mvp/model/db/TableTask;->compleStatus:I

    return-void
.end method

.method public bridge synthetic loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/TableTask;)V

    return-void
.end method

.method public final newInstance()Lcom/mh/movie/core/mvp/model/db/TableTask;
    .locals 1

    .line 57
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/TableTask;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->newInstance()Lcom/mh/movie/core/mvp/model/db/TableTask;

    move-result-object v0

    return-object v0
.end method
