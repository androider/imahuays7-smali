.class public final Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;
.super Lcom/raizlabs/android/dbflow/structure/e;
.source "RandomBarrageTable_Table.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/e<",
        "Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

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

.field public static final isOpen:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final limitDown:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final limitNum:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final limitUp:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final timeEnd:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final timeStart:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final updateTime:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "Ljava/lang/Integer;",
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

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "id"

    new-instance v3, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table$1;

    invoke-direct {v3}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table$1;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLcom/raizlabs/android/dbflow/sql/language/a/c$a;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 43
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "videoId"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 45
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "limitNum"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitNum:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 47
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "limitUp"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitUp:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 49
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "limitDown"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitDown:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 51
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "isOpen"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->isOpen:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 53
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "updateTime"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->updateTime:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 55
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "timeStart"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->timeStart:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 57
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const-class v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    const-string v2, "timeEnd"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->timeEnd:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/16 v0, 0x9

    .line 59
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitNum:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitUp:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitDown:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->isOpen:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->updateTime:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->timeStart:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->timeEnd:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 0

    .line 64
    invoke-direct {p0, p2}, Lcom/raizlabs/android/dbflow/structure/e;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    .line 65
    const-class p2, Ljava/util/UUID;

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/config/c;->getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/a/i;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    return-void
.end method

.method static synthetic access$000(Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;)Lcom/raizlabs/android/dbflow/a/i;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    return-object p0
.end method


# virtual methods
.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)V
    .locals 1

    .line 171
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 172
    invoke-interface {p1, v0, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;I)V
    .locals 3

    .line 142
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, 0x1

    .line 143
    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 144
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->videoId:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x3

    .line 145
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitNum:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x4

    .line 146
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitUp:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x5

    .line 147
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitDown:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x6

    .line 148
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->isOpen:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x7

    .line 149
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->updateTime:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 v0, p3, 0x8

    .line 150
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeStart:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    add-int/lit8 p3, p3, 0x9

    .line 151
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeEnd:I

    int-to-long v0, p2

    invoke-interface {p1, p3, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    return-void
.end method

.method public bridge synthetic bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)V
    .locals 2

    .line 127
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "`id`"

    .line 128
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`videoId`"

    .line 129
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->videoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`limitNum`"

    .line 130
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`limitUp`"

    .line 131
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitUp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`limitDown`"

    .line 132
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitDown:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`isOpen`"

    .line 133
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->isOpen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`updateTime`"

    .line 134
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->updateTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`timeStart`"

    .line 135
    iget v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "`timeEnd`"

    .line 136
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeEnd:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->bindToInsertValues(Landroid/content/ContentValues;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)V
    .locals 4

    .line 156
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 157
    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 158
    iget v2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->videoId:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/4 v1, 0x3

    .line 159
    iget v2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitNum:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/4 v1, 0x4

    .line 160
    iget v2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitUp:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/4 v1, 0x5

    .line 161
    iget v2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitDown:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/4 v1, 0x6

    .line 162
    iget v2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->isOpen:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/4 v1, 0x7

    .line 163
    iget v2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->updateTime:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/16 v1, 0x8

    .line 164
    iget v2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeStart:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/16 v1, 0x9

    .line 165
    iget p2, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeEnd:I

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Lcom/raizlabs/android/dbflow/structure/b/g;->a(IJ)V

    const/16 p2, 0xa

    .line 166
    invoke-interface {p1, p2, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->b(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)V

    return-void
.end method

.method public final exists(Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 3

    const/4 v0, 0x0

    .line 215
    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/p;->b([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/q;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    .line 216
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 217
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    .line 218
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/s;->d(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->exists(Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 1

    .line 122
    sget-object v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-object v0
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `RandomBarrageTable`(`id`,`videoId`,`limitNum`,`limitUp`,`limitDown`,`isOpen`,`updateTime`,`timeStart`,`timeEnd`) VALUES (?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `RandomBarrageTable`(`id` TEXT, `videoId` INTEGER, `limitNum` INTEGER, `limitUp` INTEGER, `limitDown` INTEGER, `isOpen` INTEGER, `updateTime` INTEGER, `timeStart` INTEGER, `timeEnd` INTEGER, PRIMARY KEY(`id`))"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `RandomBarrageTable` WHERE `id`=?"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;",
            ">;"
        }
    .end annotation

    .line 70
    const-class v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)Lcom/raizlabs/android/dbflow/sql/language/n;
    .locals 2

    .line 223
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/n;->h()Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object v0

    .line 224
    iget-object v1, p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 225
    :goto_0
    sget-object v1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/c;

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
    check-cast p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->getPrimaryConditionClause(Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)Lcom/raizlabs/android/dbflow/sql/language/n;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .locals 1

    .line 85
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "`isOpen`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "`limitDown`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "`timeEnd`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "`timeStart`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "`limitNum`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "`id`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "`limitUp`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "`videoId`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "`updateTime`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 115
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :pswitch_0
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->timeEnd:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 109
    :pswitch_1
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->timeStart:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 106
    :pswitch_2
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->updateTime:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 103
    :pswitch_3
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->isOpen:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 100
    :pswitch_4
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitDown:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 97
    :pswitch_5
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitUp:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 94
    :pswitch_6
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->limitNum:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 91
    :pswitch_7
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->videoId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    return-object p1

    .line 88
    :pswitch_8
    sget-object p1, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x40300876 -> :sswitch_8
        -0x21b5eb76 -> :sswitch_7
        -0x20eb3c36 -> :sswitch_6
        0x2d3a45 -> :sswitch_5
        0x3809b95 -> :sswitch_4
        0x50401cb -> :sswitch_3
        0x1dd0cbb2 -> :sswitch_2
        0x6c035963 -> :sswitch_1
        0x6faa23ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    const-string v0, "`RandomBarrageTable`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `RandomBarrageTable` SET `id`=?,`videoId`=?,`limitNum`=?,`limitUp`=?,`limitDown`=?,`isOpen`=?,`updateTime`=?,`timeStart`=?,`timeEnd`=? WHERE `id`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)V
    .locals 2

    const-string v0, "id"

    .line 197
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 198
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->global_typeConverterUUIDConverter:Lcom/raizlabs/android/dbflow/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/a/i;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->id:Ljava/util/UUID;

    :goto_0
    const-string v0, "videoId"

    .line 203
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->videoId:I

    const-string v0, "limitNum"

    .line 204
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitNum:I

    const-string v0, "limitUp"

    .line 205
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitUp:I

    const-string v0, "limitDown"

    .line 206
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->limitDown:I

    const-string v0, "isOpen"

    .line 207
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->isOpen:I

    const-string v0, "updateTime"

    .line 208
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->updateTime:I

    const-string v0, "timeStart"

    .line 209
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeStart:I

    const-string v0, "timeEnd"

    .line 210
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;->timeEnd:I

    return-void
.end method

.method public bridge synthetic loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;)V

    return-void
.end method

.method public final newInstance()Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;
    .locals 1

    .line 80
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;->newInstance()Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable;

    move-result-object v0

    return-object v0
.end method
