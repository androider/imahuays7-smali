.class public final enum Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
.super Ljava/lang/Enum;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field public static final enum UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

.field private static final synthetic a:[Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v1, "SAVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 29
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v1, "INSERT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 34
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v1, "UPDATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 39
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    .line 44
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const-string v1, "CHANGE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const/4 v0, 0x5

    .line 19
    new-array v0, v0, [Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->a:[Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 19
    const-class v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 19
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->a:[Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0
.end method
