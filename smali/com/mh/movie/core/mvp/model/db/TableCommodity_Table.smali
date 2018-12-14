.class public final Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;
.super Lcom/raizlabs/android/dbflow/structure/e;
.source "TableCommodity_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/e<",
        "Lcom/mh/movie/core/mvp/model/db/TableCommodity;",
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

.field public static final descrition:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final hasFlag:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
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

.field public static final validNum:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final validTime:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final validType:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final validUnit:Lcom/raizlabs/android/dbflow/sql/language/a/b;
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

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "id"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 30
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "title"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->title:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 32
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "money"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->money:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 34
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "validType"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validType:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 36
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "validNum"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validNum:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 38
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "validUnit"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validUnit:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 40
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "authId"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 42
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "descrition"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->descrition:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 44
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "hasFlag"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->hasFlag:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 46
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    const-string v2, "validTime"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validTime:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/16 v0, 0xa

    .line 48
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->title:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->money:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validType:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validNum:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validUnit:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->descrition:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->hasFlag:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validTime:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/e;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    return-void
.end method


# virtual methods
.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
    .locals 2

    .line 160
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->id:I

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableCommodity;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 131
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->id:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x2

    .line 132
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 133
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x4

    .line 134
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validType:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x5

    .line 135
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validNum:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x6

    .line 136
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validUnit:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x7

    .line 137
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->authId:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x8

    .line 138
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->descrition:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 139
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 p3, p3, 0xa

    .line 140
    iget-wide v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validTime:J

    invoke-interface {p1, p3, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableCommodity;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
    .locals 3

    const-string v0, "`id`"

    .line 116
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`title`"

    .line 117
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`money`"

    .line 118
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`validType`"

    .line 119
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`validNum`"

    .line 120
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`validUnit`"

    .line 121
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validUnit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`authId`"

    .line 122
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->authId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`descrition`"

    .line 123
    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->descrition:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`hasFlag`"

    .line 124
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`validTime`"

    .line 125
    iget-wide v1, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
    .locals 3

    .line 145
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->id:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 146
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    .line 147
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 148
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validType:I

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 149
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validNum:I

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 150
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validUnit:I

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 151
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->authId:I

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 152
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->descrition:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    .line 153
    iget v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 154
    iget-wide v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validTime:J

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    .line 155
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->id:I

    int-to-long v0, p2

    const/16 p2, 0xb

    invoke-interface {p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V

    return-void
.end method

.method public final exists(Lcom/mh/movie/core/mvp/model/db/TableCommodity;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 3

    const/4 v0, 0x0

    .line 199
    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/p;->b([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    .line 200
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 201
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/s;->d(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->exists(Lcom/mh/movie/core/mvp/model/db/TableCommodity;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 1

    .line 111
    sget-object v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-object v0
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `TableCommodity`(`id`,`title`,`money`,`validType`,`validNum`,`validUnit`,`authId`,`descrition`,`hasFlag`,`validTime`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `TableCommodity`(`id` INTEGER, `title` TEXT, `money` INTEGER, `validType` INTEGER, `validNum` INTEGER, `validUnit` INTEGER, `authId` INTEGER, `descrition` TEXT, `hasFlag` INTEGER, `validTime` INTEGER, PRIMARY KEY(`id`))"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `TableCommodity` WHERE `id`=?"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/mh/movie/core/mvp/model/db/TableCommodity;",
            ">;"
        }
    .end annotation

    .line 56
    const-class v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 2

    .line 207
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/n;->h()Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    iget p1, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/n;->a(Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/n;

    return-object v0
.end method

.method public bridge synthetic getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 0

    .line 24
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .locals 1

    .line 71
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "`descrition`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "`validNum`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "`id`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "`validUnit`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "`validType`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "`validTime`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "`authId`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "`title`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "`hasFlag`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_9
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

    .line 104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :pswitch_0
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validTime:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 98
    :pswitch_1
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->hasFlag:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 95
    :pswitch_2
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->descrition:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 92
    :pswitch_3
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 89
    :pswitch_4
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validUnit:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 86
    :pswitch_5
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validNum:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 83
    :pswitch_6
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->validType:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 80
    :pswitch_7
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->money:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 77
    :pswitch_8
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->title:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 74
    :pswitch_9
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6959d000 -> :sswitch_9
        -0x5f5563a6 -> :sswitch_8
        -0x5db99e98 -> :sswitch_7
        -0x3218ac83 -> :sswitch_6
        -0x2d91d309 -> :sswitch_5
        -0x2d8a81d6 -> :sswitch_4
        -0x2d8182e0 -> :sswitch_3
        0x2d3a45 -> :sswitch_2
        0x595bd756 -> :sswitch_1
        0x7c06fbe4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    const-string v0, "`TableCommodity`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `TableCommodity` SET `id`=?,`title`=?,`money`=?,`validType`=?,`validNum`=?,`validUnit`=?,`authId`=?,`descrition`=?,`hasFlag`=?,`validTime`=? WHERE `id`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
    .locals 2

    const-string v0, "id"

    .line 185
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->id:I

    const-string v0, "title"

    .line 186
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    const-string v0, "money"

    .line 187
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    const-string v0, "validType"

    .line 188
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validType:I

    const-string v0, "validNum"

    .line 189
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validNum:I

    const-string v0, "validUnit"

    .line 190
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validUnit:I

    const-string v0, "authId"

    .line 191
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->authId:I

    const-string v0, "descrition"

    .line 192
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->descrition:Ljava/lang/String;

    const-string v0, "hasFlag"

    .line 193
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    const-string v0, "validTime"

    .line 194
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validTime:J

    return-void
.end method

.method public bridge synthetic loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V

    return-void
.end method

.method public final newInstance()Lcom/mh/movie/core/mvp/model/db/TableCommodity;
    .locals 1

    .line 66
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->newInstance()Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object v0

    return-object v0
.end method
