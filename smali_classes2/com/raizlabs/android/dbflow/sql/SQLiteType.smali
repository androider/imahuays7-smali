.class public final enum Lcom/raizlabs/android/dbflow/sql/SQLiteType;
.super Ljava/lang/Enum;
.source "SQLiteType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/sql/SQLiteType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOB:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field public static final enum INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field public static final enum REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field public static final enum TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/raizlabs/android/dbflow/sql/SQLiteType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lcom/raizlabs/android/dbflow/sql/SQLiteType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 21
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v1, "REAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 26
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v1, "TEXT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 31
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v1, "BLOB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->BLOB:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->BLOB:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->b:[Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;-><init>()V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static containsClass(Ljava/lang/String;)Z
    .locals 1

    .line 70
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static get(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/SQLiteType;
    .locals 1

    .line 66
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/SQLiteType;
    .locals 1

    .line 11
    const-class v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/sql/SQLiteType;
    .locals 1

    .line 11
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->b:[Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/sql/SQLiteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    return-object v0
.end method
