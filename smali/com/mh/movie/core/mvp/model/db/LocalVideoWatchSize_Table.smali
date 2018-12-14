.class public final Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;
.super Lcom/raizlabs/android/dbflow/structure/e;
.source "LocalVideoWatchSize_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/e<",
        "Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field public static final id:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final quility:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final videoInfoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final watchSize:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    const-string v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 30
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    const-string v2, "videoInfoId"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->videoInfoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 32
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    const-string v2, "videoId"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 34
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    const-string v2, "watchSize"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->watchSize:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 36
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    const-string v2, "quility"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->quility:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v0, 0x5

    .line 38
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->videoInfoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->watchSize:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->quility:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method


# virtual methods
.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)V
    .locals 1

    .line 120
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 101
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 102
    iget-wide v1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoInfoId:J

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x3

    .line 103
    iget-wide v1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoId:J

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x4

    .line 104
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->watchSize:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 p3, p3, 0x5

    .line 105
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->quility:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)V
    .locals 3

    const-string v0, "`id`"

    .line 91
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`videoInfoId`"

    .line 92
    iget-wide v1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoInfoId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "`videoId`"

    .line 93
    iget-wide v1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "`watchSize`"

    .line 94
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->watchSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`quility`"

    .line 95
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->quility:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)V
    .locals 3

    .line 110
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    .line 111
    iget-wide v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoInfoId:J

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 112
    iget-wide v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoId:J

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 113
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->watchSize:I

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 114
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->quility:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    .line 115
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)V

    return-void
.end method

.method public final exists(Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 3

    const/4 v0, 0x0

    .line 154
    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/p;->b([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    .line 155
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 156
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/s;->d(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->exists(Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 1

    .line 86
    sget-object v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-object v0
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `LocalVideoWatchSize`(`id`,`videoInfoId`,`videoId`,`watchSize`,`quility`) VALUES (?,?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `LocalVideoWatchSize`(`id` TEXT, `videoInfoId` INTEGER, `videoId` INTEGER, `watchSize` INTEGER, `quility` TEXT, PRIMARY KEY(`id`))"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `LocalVideoWatchSize` WHERE `id`=?"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 2

    .line 162
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/n;->h()Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/n;->a(Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/n;

    return-object v0
.end method

.method public bridge synthetic getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 0

    .line 24
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .locals 1

    .line 61
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "`quility`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "`id`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "`videoId`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "`videoInfoId`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "`watchSize`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :pswitch_0
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->quility:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 73
    :pswitch_1
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->watchSize:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 70
    :pswitch_2
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 67
    :pswitch_3
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->videoInfoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 64
    :pswitch_4
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30dee2b0 -> :sswitch_4
        -0x23aea984 -> :sswitch_3
        -0x21b5eb76 -> :sswitch_2
        0x2d3a45 -> :sswitch_1
        0x5a97c499 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "`LocalVideoWatchSize`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `LocalVideoWatchSize` SET `id`=?,`videoInfoId`=?,`videoId`=?,`watchSize`=?,`quility`=? WHERE `id`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)V
    .locals 2

    const-string v0, "id"

    .line 145
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    const-string v0, "videoInfoId"

    .line 146
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoInfoId:J

    const-string v0, "videoId"

    .line 147
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoId:J

    const-string v0, "watchSize"

    .line 148
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->watchSize:I

    const-string v0, "quility"

    .line 149
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->quility:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;)V

    return-void
.end method

.method public final newInstance()Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;
    .locals 1

    .line 56
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->newInstance()Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    move-result-object v0

    return-object v0
.end method
