.class public final enum Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;
.super Ljava/lang/Enum;
.source "ForeignKeyAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CASCADE:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum NO_ACTION:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum RESTRICT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum SET_DEFAULT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field public static final enum SET_NULL:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

.field private static final synthetic a:[Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v1, "NO_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->NO_ACTION:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 15
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v1, "RESTRICT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->RESTRICT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 21
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v1, "SET_NULL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->SET_NULL:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 26
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v1, "SET_DEFAULT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->SET_DEFAULT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const-string v1, "CASCADE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->CASCADE:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->NO_ACTION:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->RESTRICT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->SET_NULL:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->SET_DEFAULT:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->CASCADE:Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->a:[Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;
    .locals 1

    .line 6
    const-class v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;
    .locals 1

    .line 6
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->a:[Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/ForeignKeyAction;

    return-object v0
.end method
