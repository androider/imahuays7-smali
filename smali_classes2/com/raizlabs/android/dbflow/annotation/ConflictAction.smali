.class public final enum Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
.super Ljava/lang/Enum;
.source "ConflictAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field private static final synthetic a:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 20
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v1, "ROLLBACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 28
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v1, "ABORT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 37
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v1, "FAIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 46
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v1, "IGNORE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 61
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const-string v1, "REPLACE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v0, 0x6

    .line 7
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v7

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->a:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSQLiteDatabaseAlgorithmInt(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)I
    .locals 1

    .line 64
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->a:[I

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 7
    const-class v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 7
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->a:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method
