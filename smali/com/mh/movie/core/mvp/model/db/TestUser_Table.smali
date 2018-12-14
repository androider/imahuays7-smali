.class public final Lcom/mh/movie/core/mvp/model/db/TestUser_Table;
.super Lcom/raizlabs/android/dbflow/structure/e;
.source "TestUser_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/e<",
        "Lcom/mh/movie/core/mvp/model/db/TestUser;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field public static final age:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final name:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TestUser;

    const-string v2, "id"

    new-instance v3, Lcom/mh/movie/core/mvp/model/db/TestUser_Table$1;

    invoke-direct {v3}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table$1;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLcom/raizlabs/android/dbflow/sql/language/a/c$a;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 43
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TestUser;

    const-string v2, "name"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 45
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TestUser;

    const-string v2, "age"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->age:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v0, 0x3

    .line 47
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->age:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 0

    .line 52
    invoke-direct {p0, p2}, Lcom/raizlabs/android/dbflow/structure/e;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    .line 53
    const-class p2, Ljava/util/UUID;

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/config/c;->getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/a/i;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    return-void
.end method

.method static synthetic access$000(Lcom/mh/movie/core/mvp/model/db/TestUser_Table;)Lcom/raizlabs/android/dbflow/a/i;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    return-object p0
.end method


# virtual methods
.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TestUser;)V
    .locals 1

    .line 122
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 123
    invoke-interface {p1, v0, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TestUser;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TestUser;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TestUser;I)V
    .locals 2

    .line 105
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, 0x1

    .line 106
    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 107
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    add-int/lit8 p3, p3, 0x3

    .line 108
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->age:I

    int-to-long v0, p2

    invoke-interface {p1, p3, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TestUser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TestUser;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/TestUser;)V
    .locals 2

    .line 97
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "`id`"

    .line 98
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`name`"

    .line 99
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`age`"

    .line 100
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->age:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TestUser;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/TestUser;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TestUser;)V
    .locals 4

    .line 113
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 114
    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 115
    iget-object v2, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 116
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->age:I

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/4 p2, 0x4

    .line 117
    invoke-interface {p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TestUser;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TestUser;)V

    return-void
.end method

.method public final exists(Lcom/mh/movie/core/mvp/model/db/TestUser;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 3

    const/4 v0, 0x0

    .line 160
    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/p;->b([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/model/db/TestUser;

    .line 161
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 162
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TestUser;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    .line 163
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/s;->d(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TestUser;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->exists(Lcom/mh/movie/core/mvp/model/db/TestUser;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 1

    .line 92
    sget-object v0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-object v0
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `TestUser`(`id`,`name`,`age`) VALUES (?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `TestUser`(`id` TEXT, `name` TEXT, `age` INTEGER, PRIMARY KEY(`id`))"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `TestUser` WHERE `id`=?"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/mh/movie/core/mvp/model/db/TestUser;",
            ">;"
        }
    .end annotation

    .line 58
    const-class v0, Lcom/mh/movie/core/mvp/model/db/TestUser;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TestUser;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 2

    .line 168
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/n;->h()Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object v0

    .line 169
    iget-object v1, p1, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 170
    :goto_0
    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b()Lcom/raizlabs/android/dbflow/sql/language/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/n;->a(Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/n;

    return-object v0
.end method

.method public bridge synthetic getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 0

    .line 30
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TestUser;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TestUser;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .locals 2

    .line 73
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x55f2ed2b

    if-eq v0, v1, :cond_2

    const v1, 0x2d3a45

    if-eq v0, v1, :cond_1

    const v1, 0x57677a1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "`age`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "`id`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "`name`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :pswitch_0
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->age:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 79
    :pswitch_1
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 76
    :pswitch_2
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "`TestUser`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `TestUser` SET `id`=?,`name`=?,`age`=? WHERE `id`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/TestUser;)V
    .locals 2

    const-string v0, "id"

    .line 148
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 149
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->id:Ljava/util/UUID;

    :goto_0
    const-string v0, "name"

    .line 154
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->name:Ljava/lang/String;

    const-string v0, "age"

    .line 155
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/mh/movie/core/mvp/model/db/TestUser;->age:I

    return-void
.end method

.method public bridge synthetic loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TestUser;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/TestUser;)V

    return-void
.end method

.method public final newInstance()Lcom/mh/movie/core/mvp/model/db/TestUser;
    .locals 1

    .line 68
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/TestUser;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/TestUser;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->newInstance()Lcom/mh/movie/core/mvp/model/db/TestUser;

    move-result-object v0

    return-object v0
.end method
