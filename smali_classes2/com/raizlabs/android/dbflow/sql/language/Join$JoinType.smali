.class public final enum Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
.super Ljava/lang/Enum;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/Join;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JoinType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field public static final enum INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field public static final enum LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field public static final enum NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field private static final synthetic a:[Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const-string v1, "LEFT_OUTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 42
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const-string v1, "INNER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 50
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const-string v1, "CROSS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 56
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const-string v1, "NATURAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->a:[Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
    .locals 1

    .line 24
    const-class v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
    .locals 1

    .line 24
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->a:[Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    return-object v0
.end method
